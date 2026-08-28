# Tích hợp OpenRouter vào Orca (dùng model miễn phí cho Claude Code)

Hướng dẫn cấu hình để **Claude Code chạy trong Orca** dùng các **model miễn phí của OpenRouter**
thay vì tài khoản Anthropic trả phí. Ví dụ cụ thể dưới đây dùng model
`minimax/minimax-m3:free` (miễn phí, hỗ trợ tool-calling).

> **Bản chất:** Orca là một ứng dụng điều phối các AI agent (Claude Code, Codex, Kimi…). Nó **không
> tự host model** — nó chỉ khởi chạy agent. Vì vậy, muốn đổi model cho Claude Code, ta cấu hình
> **trong chính Claude Code** (file `~/.claude/settings.json`). Orca đọc file này mỗi lần khởi chạy
> agent, nên cấu hình sẽ tự áp dụng.

---

## 1. Tổng quan

| Mục | Nội dung |
|---|---|
| Ứng dụng | **Orca** (điều phối AI agent) |
| Agent được cấu hình | **Claude Code** (phiên bản CLI) |
| Provider | **OpenRouter** (cổng tập hợp nhiều model, có bản miễn phí) |
| File cấu hình | `~/.claude/settings.json` |
| Model mặc định | `minimax/minimax-m3:free` |

## 2. Điều kiện cần có (Prerequisites)

- Đã cài **Orca** và **Claude Code** (CLI).
- Tài khoản và **API key OpenRouter**: lấy tại <https://openrouter.ai/keys> (có bản miễn phí).
- Quyền ghi vào `~/.claude/settings.json`.

## 3. Các bước thực hiện

### Bước 1 — Lấy API key OpenRouter

Đăng nhập <https://openrouter.ai/keys> → **Create Key**. Copy key dạng `sk-or-v1-...`.

### Bước 2 — Mở file cấu hình Claude Code

```bash
nano ~/.claude/settings.json
```

### Bước 3 — Thêm cấu hình vào block `env`

Thêm (hoặc gộp) các biến sau vào đối tượng `env` của `settings.json`:

```json
{
  "env": {
    "ANTHROPIC_BASE_URL": "https://openrouter.ai/api",
    "ANTHROPIC_AUTH_TOKEN": "sk-or-v1-...",
    "ANTHROPIC_API_KEY": "",
    "ANTHROPIC_MODEL": "minimax/minimax-m3:free",
    "ANTHROPIC_SMALL_FAST_MODEL": "minimax/minimax-m3:free",
    "ANTHROPIC_DEFAULT_HAIKU_MODEL": "minimax/minimax-m3:free"
  }
}
```

**Ý nghĩa các biến:**

| Biến | Giá trị | Vai trò |
|---|---|---|
| `ANTHROPIC_BASE_URL` | `https://openrouter.ai/api` | Trỏ Claude Code tới endpoint Anthropic-compatible của OpenRouter (Claude Code tự thêm `/v1/messages`). |
| `ANTHROPIC_AUTH_TOKEN` | API key OpenRouter | Định danh khi gọi API. |
| `ANTHROPIC_API_KEY` | `""` (rỗng) | Ép dùng custom endpoint, không dùng subscription Anthropic mặc định. |
| `ANTHROPIC_MODEL` | ID model free | Model chính cho tác vụ. |
| `ANTHROPIC_SMALL_FAST_MODEL` | ID model free | Model "nhanh" cho các tác vụ nền. |
| `ANTHROPIC_DEFAULT_HAIKU_MODEL` | ID model free | Model slot haiku. |

> 💡 Nên đặt cả 3 biến `*_MODEL` về cùng một model free để mọi tác vụ (chính + nền) đều gọi được trên
> OpenRouter. Nếu để model Anthropic (như `claude-haiku-...`) ở slot nền mà base URL là OpenRouter,
> các tác vụ nền sẽ lỗi vì model đó không tồn tại trên OpenRouter.

### Bước 4 — Chọn model miễn phí

Liệt kê model hiện có (lọc model `:free`):

```bash
curl -sS "https://openrouter.ai/api/v1/models" |
  python3 -c "import json,sys; d=json.load(sys.stdin); [print(m['id']) for m in d['data'] if m['id'].endswith(':free')]"
```

> ⚠️ **Lưu ý quan trọng:** DeepSeek / Qwen / Kimi **hiện không còn bản `:free`** trên OpenRouter
> (đã chuyển sang trả phí, dù rất rẻ). Các model thực sự miễn phí ở thời điểm viết tài liệu gồm
> MiniMax, GLM, Nvidia Nemotron, Gemma, Cohere North, Dots, Liquid...

Model cần **hỗ trợ tool-calling** (Claude Code bắt buộc). Hầu hết model `:free` đều hỗ trợ; kiểm tra
bằng cách xem `supported_parameters` có chứa `tools`/`tool_choice` hay không.

### Bước 5 — Áp dụng (mở lại agent trong Orca)

Cấu hình chỉ có hiệu lực khi **khởi chạy mới**. Đóng tab/pane Claude Code đang mở trong Orca rồi mở lại.

### Bước 6 — Kiểm tra

Gửi thử một yêu cầu. Nếu muốn kiểm tra từ dòng lệnh trước:

```bash
curl -sS -X POST "https://openrouter.ai/api/v1/messages" \
  -H "Authorization: Bearer $OPENROUTER_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model":"minimax/minimax-m3:free","max_tokens":64,"messages":[{"role":"user","content":"Say hi"}]}'
```

## 4. Đổi model sau này

Mở `~/.claude/settings.json`, sửa 3 dòng `*_MODEL` sang ID model free khác (theo danh sách ở Bước 4).

## 5. Xử lý sự cố (Troubleshooting)

| Vấn đề | Nguyên nhân | Cách xử lý |
|---|---|---|
| Lỗi `rate_limit_exceeded` | Model free dùng chung pool, tạm bị giới hạn | Chờ vài phút; hoặc đổi model free khác; hoặc thêm BYOK lên OpenRouter. |
| Vẫn dùng tài khoản Anthropic | `ANTHROPIC_API_KEY` chưa được đặt rỗng | Đặt `"ANTHROPIC_API_KEY": ""`. |
| Model không tồn tại / lỗi ở tác vụ nền | Slot haiku trỏ tới model Anthropic-only | Đặt cả 3 biến `*_MODEL` về cùng model free. |
| Chạy `claude-proxy` không dùng OpenRouter | Trong `~/.zshrc` có alias đặt `ANTHROPIC_BASE_URL` khác | Chạy `claude` thường (hoặc do Orca khởi chạy) thay vì alias. |
| Muốn cấu hình chỉ cho 1 dự án | Đặt cấu hình trong `.claude/settings.json` của dự án đó | Dùng file project-local (nếu có), hoặc biến môi trường khi chạy. |

## 6. Lưu ý bảo mật

- API key được lưu **dạng thuần văn bản** trong `~/.claude/settings.json`. Đây là cách chuẩn của
  Claude Code cho provider tùy chỉnh, nhưng hãy đảm bảo file không bị chia sẻ/commit.
- Nên tạo **backup** trước khi sửa: `cp ~/.claude/settings.json ~/.claude/settings.json.bak`.

## 7. Tham khảo thêm

- Danh sách model: <https://openrouter.ai/models>
- API key: <https://openrouter.ai/keys>
- Trang chủ Orca: ứng dụng quản lý agent trên máy của bạn.
