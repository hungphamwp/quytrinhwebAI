# Kho tài liệu: Quy trình làm Web bằng AI

Đây là nơi lưu trữ và tích lũy kiến thức, công cụ, quy trình liên quan đến việc **làm website/ứng dụng bằng AI**. Mỗi khi có nghiên cứu mới (một công cụ mới, một quy trình mới, một kinh nghiệm mới), tài liệu tương ứng sẽ được thêm vào thư mục [`docs/`](docs/) và liệt kê tại đây.

**🌐 Xem dạng website:** https://hungphamwp.github.io/quytrinhwebAI/

## Danh sách tài liệu

| Chủ đề | Công cụ/Nền tảng | Trang web | Markdown |
|---|---|---|---|
| Quy trình làm web mẫu bằng AI, dành cho khách hàng không rành kỹ thuật | [Base44](https://app.base44.com/) | [Xem online](https://hungphamwp.github.io/quytrinhwebAI/docs/base44-quy-trinh-lam-web.html) | [docs/base44-quy-trinh-lam-web.md](docs/base44-quy-trinh-lam-web.md) |
| Quy trình tạo web AI nhanh trong 1 ngày (phiên bản rút gọn) | [Base44](https://app.base44.com/) | [Xem online](https://hungphamwp.github.io/quytrinhwebAI/docs/base44-tao-web-ai-nhanh.html) | [docs/base44-tao-web-ai-nhanh.md](docs/base44-tao-web-ai-nhanh.md) |
| Tích hợp OpenRouter vào Orca để dùng model miễn phí cho Claude Code | [OpenRouter](https://openrouter.ai/) + Orca | [Xem online](https://hungphamwp.github.io/quytrinhwebAI/docs/openrouter-vao-orca.html) | [docs/openrouter-vao-orca.md](docs/openrouter-vao-orca.md) |
| Dùng Canva MCP trong Claude Code để thiết kế banner bằng AI | [Canva](https://www.canva.com/) MCP | [Xem online](https://hungphamwp.github.io/quytrinhwebAI/docs/canva-mcp-thiet-ke-banner.html) | [docs/canva-mcp-thiet-ke-banner.md](docs/canva-mcp-thiet-ke-banner.md) |
| Chiến dịch Facebook → khách làm website WordPress (kế hoạch + bài đăng + sơ đồ + bảng web AI) | Nội bộ | [Bản chính (tab)](https://hungphamwp.github.io/quytrinhwebAI/docs/chien-dich-facebook-web-ai/facebook-campaign-tabs.html) | [Xem folder](docs/chien-dich-facebook-web-ai/README.md) |

*(Danh sách sẽ tiếp tục được bổ sung theo thời gian.)*

## Cấu trúc kho tài liệu

```
.
├── README.md               # Trang mục lục dạng Markdown (file này)
├── index.html              # Trang chủ dạng website
├── assets/style.css        # Giao diện dùng chung cho website
├── docs/                   # Tài liệu quy trình (mỗi tài liệu có .md + .html)
│   ├── base44-quy-trinh-lam-web.md    # Nội dung gốc (Markdown, dễ chỉnh sửa)
│   ├── base44-quy-trinh-lam-web.html  # Bản hiển thị dạng website
│   ├── base44-tao-web-ai-nhanh.md     # Phiên bản rút gọn — làm web AI trong 1 ngày
│   ├── base44-tao-web-ai-nhanh.html
│   ├── openrouter-vao-orca.md         # Tích hợp OpenRouter vào Orca (Markdown)
│   ├── openrouter-vao-orca.html       # Bản hiển thị dạng website
│   ├── canva-mcp-thiet-ke-banner.md   # Dùng Canva MCP thiết kế banner (Markdown)
│   ├── canva-mcp-thiet-ke-banner.html # Bản hiển thị dạng website
│   ├── chien-dich-facebook-web-ai/    # Bộ tài liệu chiến dịch Facebook → web WordPress
│   └── ...                            # các tài liệu mới sẽ thêm vào đây
└── web-mau/                # Kho web mẫu nội bộ (1 mẫu = 1 folder con)
    ├── README.md           # Hướng dẫn cấu trúc & quy ước đặt tên
    └── ...                 # các web mẫu sẽ thêm vào đây
```

Mỗi tài liệu có 2 bản: **Markdown** (`.md`, để đọc/chỉnh sửa nhanh trên GitHub) và **HTML** (`.html`, để xem dạng website đẹp tại link ở trên).

## Quy ước đặt tên file

- Đặt tên file theo dạng: `ten-cong-cu-hoac-chu-de.md` / `.html` (không dấu, cách nhau bằng gạch ngang).
- Mỗi file trong `docs/` nên tự đứng độc lập được (có phần giới thiệu ngắn ở đầu, không phụ thuộc phải đọc file khác trước).
- Khi thêm tài liệu mới:
  1. Thêm file `.md` và `.html` tương ứng vào `docs/`.
  2. Cập nhật sidebar trong `index.html` và trong file `.html` mới (mục "Công cụ & Nền tảng").
  3. Cập nhật thêm một dòng vào bảng "Danh sách tài liệu" ở trên và trong `index.html`.
