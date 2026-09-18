# Master AI Workflow Hub — Trung Tâm Quy Trình & Công Cụ AI Toàn Diện

> Bản Markdown đầy đủ, chuyển thể từ [`facebook-campaign-tabs.html`](./facebook-campaign-tabs.html) để đọc/tra cứu nhanh mà không cần mở trình duyệt. Nội dung gồm 6 nhóm: **Website AI**, **Video AI**, **Image AI**, **Audio AI**, **Tự động hóa & AI Agent**, **Content YouTube**.

---

## Mục lục

0. [Kiến thức AI chuyên sâu](#0-kiến-thức-ai-chuyên-sâu)
1. [26 Nền tảng Tạo Website AI](#1-26-nền-tảng-tạo-website-ai-free--pro)
2. [Video AI — Từ ý tưởng đến video hoàn chỉnh (5 cách làm)](#2-video-ai--từ-ý-tưởng-đến-video-hoàn-chỉnh)
3. [10 Công cụ Sinh Ảnh AI & Công thức Prompt](#3-10-công-cụ-sinh-ảnh-ai--công-thức-prompt)
4. [8 Công cụ Giọng Đọc & Sáng Tác Nhạc AI](#4-8-công-cụ-giọng-đọc--sáng-tác-nhạc-ai)
5. [Tự Động Hóa & AI Agents](#5-tự-động-hóa--ai-agents)
6. [Content YouTube — danh sách video sẽ làm](#6-content-youtube--danh-sách-video-sẽ-làm)

---

## 0. Kiến thức AI chuyên sâu

Tab đầu tiên của Hub — trả lời *vì sao* trước khi các tab sau dạy *cách làm*. Sáu mục:

### 0.1 Từ AI đến Generative AI (phân tầng)
AI ⊃ Machine Learning ⊃ Deep Learning ⊃ Generative AI — mỗi vòng trong là tập con của vòng ngoài (ảnh gốc: `video-assets/ai-hierarchy-infographic.jpg`).
- **AI (1956→)**: máy có hành vi thông minh, gồm cả luật if-then — lọc thư rác đời đầu, GPS.
- **Machine Learning (1990s→)**: học quy luật từ dữ liệu — gợi ý sản phẩm, chấm điểm tín dụng.
- **Deep Learning (2012→)**: mạng nơ-ron nhiều lớp, GPU + dữ liệu lớn — nhận diện khuôn mặt, dịch máy.
- **Generative AI (2017/2022→)**: Transformer → GPT → ChatGPT; tạo nội dung mới — ChatGPT, Gemini, Claude, Veo, Midjourney.
ChatGPT / Gemini / Claude đều là LLM ở vòng trong cùng; khác nhau ở dữ liệu, tinh chỉnh và hệ sinh thái, không khác tầng. Dòng thời gian: 1956 Dartmouth → 1997 Deep Blue → 2012 AlexNet → 2017 Transformer → 2022 ChatGPT → 2024 đa phương thức → 2025–26 Agent/MCP.

### 0.2 LLM hoạt động thế nào
Một việc duy nhất: dự đoán token tiếp theo, lặp lại. 8 khái niệm: **token** (tiếng Việt tốn 1,5–2× tiếng Anh), **context window**, **temperature** (0–0,3 cho code/trích xuất, 0,7–1 cho sáng tạo), **hallucination** (giảm bằng RAG, trích dẫn, kiểm tra số), **training vs inference** (knowledge cutoff; chat không dạy model), **fine-tuning & RLHF**, **multimodal**, **system prompt** (AI Studio System instructions / Claude Project / CLAUDE.md). Bảng chọn ChatGPT · Gemini · Claude theo việc (kịch bản, ảnh, video/giọng, code, tài liệu dài, chi phí). LLM đếm chữ/làm toán kém vì nhìn token — giao cho code; model nhỏ thử trước, nâng khi cần.

### 0.3 Prompt engineering
Prompt = brief. Khung 5 phần: **Vai trò → Bối cảnh → Nhiệm vụ → Ràng buộc → Định dạng + ví dụ**. Ví dụ prompt yếu vs mạnh cho kịch bản TVC Verde. Nâng cao: few-shot, chain-of-thought, lặp có định hướng (giữ gì/đổi gì), tự phản biện, đầu ra JSON theo schema, prompt ảnh/video mô tả hình bằng tiếng Anh. Lỗi hay gặp: nhồi nhiều việc, không nói đối tượng, không cho dữ liệu thật, sửa không nói rõ sai đâu.

### 0.4 RAG · Agent · MCP · Skill
- **RAG**: tìm tài liệu → ghép vào prompt → trả lời có căn cứ (chatbot báo giá, Claude Project có Guideline).
- **Agent**: vòng lặp nghĩ → dùng công cụ → quan sát → lặp (Claude Code dựng video Vox collage).
- **MCP**: chuẩn kết nối AI với dịch vụ ngoài (Canva, Notion, SSH) — là đường ống, không phải trí thông minh.
- **Skill**: gói SKILL.md + script để lặp quy trình chuẩn (`vox-collage-video`, `baogia-hpb`, `mockup-mauweb-hpb`).
Bảng chọn cơ chế theo nhu cầu; rủi ro: prompt injection, quyền hạn, chi phí token; xu hướng 2026: routine, workflow đa agent, computer use.

### 0.5 Thuật ngữ A–Z
40 từ: Agent, API key, Attention/Transformer, Benchmark, Chain-of-thought, Claude Code, Context window, Credit, Diffusion, Embedding, Few-shot, Fine-tuning, Foundation model, GPU, Guardrail, Hallucination, Image-to-video, Inference, Knowledge cutoff, Latency, LLM, MCP, Multimodal, Open-weight, Parameter, Prompt/System prompt, Prompt injection, RAG, Reasoning model, RLHF, Seed, Skill, SynthID, Temperature, TTS, Text-to-video, Token, Tool use, Vector DB, Workflow — kèm chỗ gặp trong Hub.

### 0.6 Lộ trình học 4 tuần (30 phút/ngày, miễn phí)
Tuần 1 nền (tab này + 3Blue1Brown + Google Intro to GenAI) → Tuần 2 prompt (Anthropic tutorial / DeepLearning.AI) → Tuần 3 ảnh·video·giọng (làm TVC 30 s theo 5 bước) → Tuần 4 agent (Building effective agents, MCP intro, viết skill đầu tiên). Nguồn theo dõi: docs chính hãng, The Batch, Simon Willison. Nguyên tắc: học nguyên lý một lần, học công cụ nhiều lần.

---

## 1. 26 Nền tảng Tạo Website AI (Free & Pro)

Danh sách công cụ tạo Landing Page, Web Doanh nghiệp, WordPress và Web App tự động.

| # | Nền tảng | Link | Ưu điểm | Nhược điểm |
|---|----------|------|---------|------------|
| 1 | Durable | durable.com | Rất nhanh; form liên hệ có sẵn; đơn giản cho người không rành kỹ thuật | Bản free rất hạn chế; chỉ domain phụ; ít quyền tùy chỉnh |
| 2 | Lindo AI | lindo.ai | Giao diện hiện đại; dựng landing cực nhanh; không cần code | Có badge quảng cáo Lino; giới hạn traffic tháng; ít tùy chỉnh nâng cao |
| 3 | Wix AI | wix.com | Cộng đồng lớn; kéo-thả mượt; nhiều mẫu & app | Dính banner quảng cáo; subdomain; site thường chậm hơn |
| 4 | Framer | framer.com | Đẹp nhất nhóm; animation mượt; dựng portfolio/thương hiệu rất tốt | Subdomain `*.framer.website`; không xuất code; cần học một chút |
| 5 | CodeDesign.ai | codedesign.ai | Kiểm soát layout tốt; can thiệp sâu UI; ra code sạch | Không custom domain; giới hạn export; đòi hỏi kỹ năng thiết kế |
| 6 | Dora AI | dora.run | Hiệu ứng 3D wow; tạo ấn tượng mạnh; hợp chiến dịch/landing | Hạn chế tùy chỉnh; khó xuất bản; nặng & chậm hơn; cần kỹ năng |
| 7 | ZipWP | zipwp.com | Ra WordPress thật; dựng nhanh; dễ đưa vào quy trình WP | Giới hạn 3 web/tháng; bản nháp tự xóa sau 24h nếu không cài host |
| 8 | Softr | softr.io | Nối bảng tính/web động; không cần code; hợp danh mục, cổng thông tin | Giới hạn số dòng dữ liệu; tính năng nâng cao cần trả phí |
| 9 | Base44 | base44.com | Làm web app thật sự; quản lý luồng dữ liệu & phân quyền | Cần tư duy hệ thống; giới hạn tài nguyên vận hành |
| 10 | Lovable | lovable.dev | Code ra sản phẩm thật (React/Tailwind); rất mạnh & linh hoạt | Giới hạn số prompt/tháng; cần chút nền tảng để chạy app |
| 11 | B12 | b12.io | Chuyên cho web dịch vụ; form đặt lịch/hóa đơn/email có sẵn | Bản free chỉ xem nháp; muốn chạy phải trả phí |
| 12 | Relume | relume.ai | Wireframe/sitemap siêu nhanh; copy chuẩn; hợp designer | Giới hạn số project; cần kết hợp Figma/Webflow để xuất bản |
| 13 | 10Web | 10web.io | Ra web WordPress luôn; dễ đưa vào quy trình làm WP | Free giới hạn tính năng/lưu trữ; nội bộ — không chia sẻ cho khách |
| 14 | Hostinger Horizons | hostinger.com | Cực dễ; hosting + AI tích hợp; giao diện đẹp; phù hợp người mới | Có phí để dùng "thật"; free giới hạn publish/domain |
| 15 | GoDaddy Airo | godaddy.com | AI + marketing tích hợp; dùng nhanh | Free giới hạn; đẩy lên gói trả phí |
| 16 | Bolt.new | bolt.new | Full-stack (frontend + backend); tạo cực nhanh; hỗ trợ database | Cần kỹ năng; giới hạn request; free tier hạn chế |
| 17 | v0 (by Vercel) | v0.dev | Tạo component React nhanh; Vercel tích hợp; chất lượng cao | Cần hiểu React; free giới hạn lượt; cần account Vercel |
| 18 | Google Stitch | stitch.withgoogle.com | Dễ dùng; Google hỗ trợ; free hoàn toàn | Chưa ổn định; tính năng hạn chế; không export được |
| 19 | Typedream | typedream.com | Đơn giản; tối ưu SEO sẵn; giá rẻ | Tính năng cơ bản; khó customize sâu |
| 20 | Spline | spline.design | 3D visualization wow; hiệu ứng ấn tượng; free tốt | Nặng; chậm; cần kỹ năng 3D; không tốt cho SEO |
| 21 | Uizard | uizard.io | Biến ảnh/sketch thành UI; nhanh; collaboration tốt | Chỉ prototype; không deploy được; free hạn chế |
| 22 | Webflow | webflow.com | Tùy biến vô hạn; export code được; CMS tích hợp; SEO tốt | Learning curve cao; free rất hạn chế; publish cần trả phí |
| 23 | Replit | replit.com | IDE online; hỗ trợ nhiều ngôn ngữ; deploy nhanh; free tốt | Performance hạn chế; free có giới hạn CPU/storage |
| 24 | Builder.io | builder.io | Kéo thả tự do; hỗ trợ API; CMS mạnh; collaboration | Complexity cao; learning curve; free hạn chế |
| 25 | Tempo | tempo.build | Sinh code React chuẩn; AI chỉnh sửa tốt; deploy dễ | Cần biết React; free hạn chế |
| 26 | Anything | anything.com | Tạo cực nhanh; full-stack; no-code; tích hợp tốt | Mới; ít tài liệu; tính năng đang phát triển |

**🎯 Chiến lược chọn Web AI:**
- Dùng **Framer / Durable** cho Landing Page thương hiệu đẹp.
- Dùng **ZipWP / 10Web** để xuất bản ra WordPress thật.
- Dùng **Lovable / Bolt.new** khi cần làm Web App có database.

---

## 2. Video AI — Từ ý tưởng đến video hoàn chỉnh

5 cách làm khác nhau, chọn theo mục tiêu và công cụ sẵn có.

### Cách 01 · Hoạt hình kể chuyện — Claude × Remotion

Kịch bản JSON → hình minh họa SVG → giọng Gemini TTS → video MP4. Theo skill `video-2d-animation`.

**Remotion là gì?** Bộ công cụ tạo video bằng React — bạn mô tả hình nào xuất hiện, chữ chạy ra sao, âm thanh bắt đầu lúc nào; Remotion thực hiện các chỉ dẫn đó và xuất thành video. Cần một dự án và mã dựng; skill `video-2d-animation` đã kèm template đọc JSON.

**Luồng nguyên liệu:** Kịch bản · hình · giọng đọc → Mã dựng (bố cục · chuyển động · thời gian) → Remotion (xem trước → xuất video) → `video.mp4`

**6 bước thực hiện:**

| # | Bước | Người/Công cụ | Kết quả |
|---|------|----------------|---------|
| 01 | Kiểm chứng nội dung | Bạn + Claude · Web search | Nội dung có nguồn đối chiếu |
| 02 | Viết kịch bản | Claude · JSON | `data/ten-video.json` |
| 03 | Vẽ hình theo cảnh | Claude · SVG | Bộ hình SVG đã đăng ký |
| 04 | Sinh giọng & khớp thời gian | Gemini TTS | MP3 từng cảnh + JSON cập nhật |
| 05 | Dựng MP4 bằng Remotion | Template · StoryVideo | `out/ten-video.mp4` |
| 06 | Kiểm tra & bàn giao | Bạn + Claude | MP4 đã duyệt |

**Chi tiết từng bước:**

1. **Kiểm chứng nội dung** — Cần: chủ đề và người xem mục tiêu. Tra cứu số liệu, tên nghiên cứu và mốc thời gian trước khi viết; ghi thời điểm trên hình với thông tin dễ cũ.
2. **Viết kịch bản** — Chia mỗi cảnh thành 1–2 câu nói tự nhiên; gán tên hình và màu nhấn. Mỗi cảnh có mã riêng (`s1`, `s2`...), gồm `voice` (câu đọc), `illustration` (tên hình), `durationInSeconds` (thời lượng tạm).
   ```json
   {
     "title": "Tên video",
     "scenes": [{
       "id": "s1",
       "type": "image",
       "illustration": "ten-hinh-da-dang-ky",
       "voice": "Lời đọc đã duyệt.",
       "durationInSeconds": 5
     }]
   }
   ```
   Tên hình phải tồn tại trong dự án; không dán nguyên tên minh họa để render.
3. **Vẽ hình theo cảnh** — Vẽ bộ hình mới theo chủ đề: nét đen dày, màu phẳng, hình dễ hiểu. Đặt nhãn cạnh đối tượng, thêm mũi tên/vòng nhấn vào chi tiết đang nói. Skill yêu cầu bộ hình riêng cho video mới, thường 9–12 hình. Không dùng phụ đề tách rời ở đáy.
4. **Sinh giọng & khớp thời gian** — Sinh MP3 cho từng cảnh; script đo độ dài âm thanh, ghi `voiceFile` và thời lượng thực vào JSON.
   ```bash
   node scripts/generate-voice-gemini.mjs data/ten-video.json
   ```
   MP3 nằm trong `public/assets/voice/`. Chạy lại phần còn thiếu bằng `--skip-existing`. Cần cấu hình API Gemini trước.
5. **Dựng MP4 bằng Remotion** — Script đọc JSON, ghép cảnh và giọng đọc rồi xuất MP4.
   ```bash
   node scripts/render-from-script.mjs data/ten-video.json out/ten-video.mp4 StoryVideo
   ```
   `StoryVideo` mặc định ngang 1920×1080. Template còn có `DoodleVideo` và `MainVideo` (dọc); chọn composition theo nội dung.
6. **Kiểm tra & bàn giao** — Nghe toàn bộ video; trích khung hình kiểm tra nhãn, số liệu, hình khớp lời. Checklist trước khi giao:
   - [ ] Có hình & âm thanh
   - [ ] Nhãn không tràn mép
   - [ ] Hình khớp lời đọc
   - [ ] Số liệu đúng nguồn & thời điểm
   ```bash
   ffprobe -v error -show_entries stream=codec_type -show_entries format=duration -of default=noprint_wrappers=1 out/ten-video.mp4
   ```
   Phải có cả `codec_type=video` và `codec_type=audio`.

**Chuẩn bị khi lần đầu dùng skill:**
- Đưa link skill `video-2d-animation` cho Claude và yêu cầu dùng đúng skill.
- Tìm dự án Remotion đang có; nếu chưa có, khởi tạo từ `assets/template` đi kèm skill và cài phụ thuộc.
- Chuẩn bị môi trường chạy dự án, cấu hình Gemini TTS và nhạc nếu muốn dùng.
- Gửi chủ đề, độ dài, tỉ lệ khung hình; duyệt nội dung, hình và nghe giọng trước khi chốt bản cuối.

---

**Case 18/09/2026 — Video Vox collage 63 s "Làm TVC thương hiệu bằng AI — 5 bước"** (skill `vox-collage-video`): 10 cảnh, giọng Gemini TTS từng cảnh (54 s), 15 cutout Pexels (tìm qua trang search không cần API key, tải `images.pexels.com/photos/<ID>/...`), rembg tách nền, Remotion render. Output `~/Desktop/clean/TVC-AI-5-buoc_vox-collage.mp4`; project `~/Project/03. Nội bộ/Vox collage TVC AI/`. Bài học máy 8 GB: rembg chạy tuần tự với ảnh ≤1100 px, render `--concurrency=2`; tạo giọng trước rồi mới đặt duration cảnh (8 frame lead + WAV + 18 frame đuôi).
Đăng YouTube: tiêu đề ≤70 ký tự "Làm TVC thương hiệu bằng AI trong 5 bước (Gemini, Google Flow, CapCut)"; mô tả có chapter theo cảnh (0:00 · 0:05 · 0:11 · 0:18 · 0:25 · 0:30 · 0:37 · 0:44 · 0:51 · 0:57), danh sách công cụ, link tài liệu, CTA HPB Media, hashtag; tag tiếng Việt về TVC AI/Flow/Veo/CapCut; bật khai báo nội dung có AI; thumbnail từ cảnh 1 hoặc 10.

### Cách 02 · Video từ các trang HTML — Claude × HTML → Video quảng cáo

Dùng trang HTML làm cảnh chuyển động, chụp từng khung hình rồi ghép thành MP4. Theo skill `video-quangcao-hpb`. Mẫu dọc **1080×1920, 15 giây, 30 fps**, giọng macOS `say` + nhạc/SFX.

**Vì sao trang HTML lại làm được video?** Một trang HTML có thể hiển thị chữ, hình và hiệu ứng thay đổi theo thời gian. Công cụ mở trang trong Chrome, chụp hình ở từng thời điểm rồi dùng FFmpeg ghép thành video.

Luồng: Trang HTML + hiệu ứng → Chrome chụp khung hình → FFmpeg ghép + lồng tiếng → Video MP4

**6 bước thực hiện:**

| # | Bước | Công cụ | Kết quả |
|---|------|---------|---------|
| 01 | Chốt yêu cầu | Bạn + Claude | Thông tin để viết config |
| 02 | Viết cấu hình | Claude · JSON | `video.json` |
| 03 | Tạo cảnh từ trang HTML | HTML + CSS + JavaScript | Trang HTML có chuyển động |
| 04 | Xem 3 khung hình | Chrome · preview | 3 ảnh PNG để duyệt |
| 05 | Ghép hình & âm thanh | Chrome → FFmpeg · macOS say | MP4 dọc có âm thanh |
| 06 | Duyệt & bàn giao | Bạn + Claude | Video sẵn sàng sử dụng |

**Chi tiết từng bước:**

1. **Chốt yêu cầu** — Chốt nội dung, người xem, lời kêu gọi hành động (CTA). Đọc `references/noi-dung.md` trong skill trước khi viết nội dung quảng cáo; giá và liên hệ phải lấy từ thông tin đã duyệt.
2. **Viết cấu hình** — Chép `assets/config-example.json` và sửa. 4 nhóm cấu hình:
   - `content` — chữ, giá, lời kêu gọi
   - `theme` — màu thương hiệu
   - `voiceover` — lời đọc & mốc bắt đầu
   - `output` — tên tệp
   `price_value` là số nguyên; đặt 0 khi không muốn hiện giá. `output.name` không dấu, không khoảng trắng.
3. **Tạo cảnh từ trang HTML** — Script tạo dự án từ mẫu: `assets/template/index.html`, `style.css`, `script.js`. HTML bố trí nội dung, CSS tạo hình thức, JavaScript điều khiển chữ gõ/giá chạy/hiệu ứng theo thời gian. Đổi bố cục sâu phải sửa template; đổi thời lượng cần chỉnh lịch hiệu ứng trong `build_video.py`.
4. **Xem 3 khung hình** — Chụp ảnh ở 4,6s / 9,5s / 13,5s để kiểm tra tiêu đề, nội dung, CTA trước khi dựng toàn bộ.
   ```bash
   python3 ~/.claude/skills/video-quangcao-hpb/scripts/build_video.py \
     --config /tmp/video.json --out ~/Desktop/video-demo \
     --preview 4.6,9.5,13.5
   ```
   Ảnh xuất vào `output/preview/`.
5. **Ghép hình & âm thanh** — Dựng các khung hình rồi mã hóa video (450 khung hình cho 15 giây × 30fps); script tạo giọng đọc bằng `say` trên macOS, tạo nhạc/SFX và ghép tiếng.
   ```bash
   python3 ~/.claude/skills/video-quangcao-hpb/scripts/build_video.py \
     --config /tmp/video.json --out ~/Desktop/video-demo
   ```
   Mặc định: 1080×1920, 30fps, 15 giây.
6. **Duyệt & bàn giao** — Xem trên kích thước điện thoại, nghe lại tên riêng/chữ viết tắt/số điện thoại. Checklist trước khi đăng:
   - [ ] Chữ đọc được trên điện thoại
   - [ ] Thông tin & giá đúng
   - [ ] Câu đọc không chồng nhau
   - [ ] Có tiếng và đúng 15 giây
   Video xuất tại `output/<name>-final.mp4`. Sửa nội dung/lời đọc trong config rồi chạy lại — không cần dựng tay từ đầu.

**Công cụ cần chuẩn bị:** macOS (lệnh `say`), Google Chrome, FFmpeg, Node.js, Python 3 + numpy.

> Ghi chú thuật ngữ: HTML = bố cục; CSS = hình thức; JavaScript = chuyển động; JSON = dữ liệu; FFmpeg = công cụ ghép và xuất video.

---

### Cách 03 · Tạo hiệu ứng riêng, ghép video sau — Claude × CapCut

Claude hỗ trợ viết hiệu ứng → Remotion hoặc HTML xuất đoạn hiệu ứng → nhập vào CapCut để ghép với video, lời đọc và nhạc.

Vai trò từng bên:
- **Claude** — viết mã hiệu ứng (chuyển động, đồ họa, bố cục của đoạn minh họa).
- **Remotion / HTML** — xuất nguyên liệu (chạy hiệu ứng, tạo tệp video).
- **CapCut** — ghép thành video (cắt cảnh, xếp lớp, phụ đề, lời đọc, nhạc, xuất bản cuối).
- **Bạn** — chọn & duyệt (quyết định hiệu ứng dùng ở đâu, kiểm tra nội dung và nhịp dựng).

**2 cách đưa hiệu ứng vào video:**
1. **Chèn thành một cảnh** — Đoạn đồ họa chiếm toàn khung (bản đồ, biểu đồ...); lời đọc vẫn chạy bên dưới. Đặt nối tiếp trên dòng thời gian.
2. **Phủ lên cảnh đang chạy** — Hiệu ứng xuất hiện cùng video gốc (nhãn, số liệu, mũi tên, khung thông tin) trên lớp trên; video gốc/người trình bày ở lớp dưới; lời đọc + nhạc trên track âm thanh.

**6 bước thực hiện:**

| # | Bước | Công cụ | Kết quả |
|---|------|---------|---------|
| 01 | Chọn đoạn cần hiệu ứng | Bạn · kịch bản | Yêu cầu hiệu ứng rõ ràng |
| 02 | Nhờ Claude viết hiệu ứng | Claude · Remotion hoặc HTML | Dự án hiệu ứng riêng |
| 03 | Xuất tệp hiệu ứng | Công cụ dựng hiệu ứng | Tệp hiệu ứng nhập được |
| 04 | Nhập & ghép vào CapCut | CapCut · Import | Bản ghép có hiệu ứng |
| 05 | Hoàn thiện hình & tiếng | CapCut · Chroma Key / âm thanh | Bản xem trước hoàn chỉnh |
| 06 | Xuất & lưu để dùng lại | CapCut · Export | Video hoàn chỉnh + bộ nguyên liệu |

**Chi tiết từng bước:**

1. **Chọn đoạn cần hiệu ứng** — Xác định hiệu ứng xuất hiện ở câu nào, dài bao lâu, giải thích điều gì. Ví dụ: đoạn bản đồ 6 giây, 1920×1080, đường nối xuất hiện lần lượt, chừa góc phải cho người nói.
2. **Nhờ Claude viết hiệu ứng** — Tạo mã cho đoạn đồ họa: đường nối, số tăng, chữ xuất hiện, khung thông tin. Remotion phù hợp khi đã có dự án React dựng video; với HTML cần bước ghi/render trang thành video. CapCut không đọc trực tiếp mã React/HTML.
3. **Xuất tệp hiệu ứng** — Xuất clip để chèn nguyên cảnh hoặc clip nền xanh để chồng lên hình khác. MP4 H.264 thông thường có nền, không mang độ trong suốt. Remotion có thể xuất WebM alpha hoặc ProRes 4444 — cần thử khả năng giữ alpha khi nhập CapCut trên bản thực tế. Nếu không giữ nền trong, dùng clip nền xanh + Chroma Key.
4. **Nhập & ghép vào CapCut** — Tạo dự án, nhập tệp, đặt video gốc vào dòng thời gian, chèn hiệu ứng giữa hai cảnh hoặc kéo lên lớp phía trên để phủ đúng đoạn cần minh họa.
5. **Hoàn thiện hình & tiếng** — Với nền xanh: chọn clip → Video → Remove BG/Cutout → Chroma Key, chọn màu rồi chỉnh mức loại bỏ. Căn thời điểm theo lời nói, thêm phụ đề nếu cần, giảm nhạc để nghe rõ giọng. Checklist:
   - [ ] Xuất hiện đúng câu nói
   - [ ] Không che mặt hoặc chữ
   - [ ] Nền đã xử lý sạch
   - [ ] Nhạc không lấn giọng
6. **Xuất & lưu để dùng lại** — Chọn độ phân giải/khung hình/fps phù hợp dự án (9:16 cho Reels/Shorts, 16:9 cho video ngang). Xuất bản cuối, xem/nghe lại, lưu cả dự án CapCut lẫn mã/tệp hiệu ứng để sửa hoặc dùng tiếp.

**Mẫu yêu cầu gửi Claude:**
> "Hãy tạo một đoạn motion graphics riêng để tôi nhập vào CapCut. Nội dung: [điều cần minh họa]. Thời lượng: [số giây], khung hình: [ngang/dọc], fps: [theo dự án]. Hiệu ứng: [đường nối/số chạy/chữ xuất hiện]. Chừa vùng [vị trí] cho người nói hoặc phụ đề. Tạo bằng Remotion hoặc HTML phù hợp dự án; xuất tệp video, không chỉ giao mã. Tôi sẽ dùng đoạn này theo kiểu [chèn nguyên cảnh/phủ lên video]. Nếu phủ, chuẩn bị phương án nền và cho tôi thử một đoạn ngắn trước. Giao cả tệp xuất và nguồn để sửa."

**Lỗi thường gặp khi ghép hiệu ứng:**

| Lỗi | Cách xử lý |
|-----|-----------|
| Hiệu ứng che toàn bộ video gốc | Clip đang có nền kín — dùng như cảnh riêng, hoặc xuất lại nền xanh/alpha phù hợp |
| CapCut không nhập được tệp | Kiểm tra codec: nền kín thử MP4 H.264; alpha thử đoạn ngắn, đổi phương án nếu bản CapCut không hỗ trợ |
| Còn viền xanh quanh hiệu ứng | Chỉnh Chroma Key vừa đủ, kiểm tra chi tiết mảnh; nếu màu hiệu ứng trùng nền, đổi màu nền từ nguồn |
| Muốn đổi chữ trong hiệu ứng | Sửa dự án nguồn rồi xuất lại — chữ đã đóng vào video không sửa trực tiếp trong CapCut được |
| Chuyển động không khớp lời nói | Dịch vị trí/cắt clip trên timeline; nếu cần đổi nhịp nhiều, sửa thời lượng tại nguồn |

---

### Cách 04 · Tạo cảnh bằng AI, ghép thành câu chuyện — Google Flow (từ nhân vật đến video nhiều cảnh)

Chuẩn bị câu chuyện và nhân vật, tạo từng clip ngắn, chọn bản tốt rồi nối lại.

**Các khu vực trong Flow:**
- **Hình ảnh** — chuẩn bị hình tham khảo, nhân vật, bố cục trước khi tạo chuyển động.
- **Video** — các clip đã tạo hoặc tải lên; chọn clip để xem và chỉnh.
- **Nhân vật** — hồ sơ hình ảnh và giọng có thể dùng lại qua nhiều lần tạo.
- **Cảnh** — nơi sắp các clip thành chuỗi, cắt phần thừa, xem liên tục (Scenebuilder).
- **Tools** — app nhỏ cho một việc lặp lại: xử lý hình, tạo biến thể hoặc hỗ trợ quy trình.
- **Agent** — trợ lý hội thoại giúp phát triển ý tưởng và điều phối công việc sáng tạo.

Flow là không gian làm việc; Veo/Omni/Nano Banana là các model bên trong bộ chọn. Tính năng tùy model, khu vực và tài khoản.

**6 bước thực hiện:**

| # | Bước | Công cụ | Kết quả |
|---|------|---------|---------|
| 01 | Chia câu chuyện | Bạn + Flow Agent | Bảng cảnh để thực hiện |
| 02 | Tạo nhân vật | Nhân vật / Characters | Hồ sơ nhân vật chung |
| 03 | Chuẩn bị hình cảnh | Hình ảnh · ảnh tham chiếu | Ảnh tham khảo cho các cảnh |
| 04 | Tạo từng clip ngắn | Video · model phù hợp | Các clip đã chọn |
| 05 | Nối thành câu chuyện | Cảnh / Scenebuilder | Chuỗi cảnh xem liền mạch |
| 06 | Chỉnh & xuất bản | Flow → CapCut nếu cần | Video hoàn chỉnh |

**Chi tiết từng bước:**

1. **Chia câu chuyện** — Viết danh sách cảnh, mỗi cảnh một hành động chính. Ví dụ: mèo thức dậy → nhìn món đồ chơi → tiến đến → chơi → kết thúc.
2. **Tạo nhân vật** — Mở Nhân vật, tạo mới bằng mô tả hoặc ảnh; đặt tên, bổ sung thông tin và giọng, lưu để dùng lại. Ví dụ: *"Mèo Mít, lông cam sọc nhạt, mắt xanh, vòng cổ xanh dương"* — kiểm tra các đặc điểm đó sau mỗi lần tạo.
3. **Chuẩn bị hình cảnh** — Chuẩn bị hình thể hiện bố cục từng cảnh, dùng lại mô tả nhân vật/bối cảnh/ánh sáng để giảm thay đổi ngoài ý muốn. Duyệt hình trước khi tạo chuyển động.
4. **Tạo từng clip ngắn** — Chọn chế độ tạo, gắn tham chiếu, mô tả một hành động + máy quay + âm thanh mong muốn, chọn bản tốt và đánh số clip. Độ dài và tính năng tùy model — không mặc định mọi clip 8 giây. Không đổi ngoại hình nhân vật giữa các cảnh.
5. **Nối thành câu chuyện** — Dùng **Add to Scene**, sắp thứ tự, cắt đầu/cuối. **Extend** dùng để tiếp tục một clip Veo khi được hỗ trợ (không phải ghép các cảnh độc lập). Có thể lưu khung cuối làm tham chiếu cho cảnh mới; nếu cần âm thanh/phụ đề/nhiều lớp hơn, tải clip về CapCut.
6. **Chỉnh & xuất bản** — Xem toàn bộ tìm lỗi nhân vật/chuyển cảnh/âm thanh, chỉnh đoạn cần thiết, tải cảnh xuống và duyệt tệp cuối. Checklist:
   - [ ] Đúng thứ tự sự kiện
   - [ ] Nhân vật không đổi bất thường
   - [ ] Không lặp hoặc giật ở mối nối
   - [ ] Tiếng liền mạch, chữ dễ đọc

**Ví dụ 5 clip ngắn thành một câu chuyện** (bảng cảnh mẫu để thực hành, ~6 giây/cảnh, tổng ≈30 giây):
1. Mở đầu — Mèo mở mắt bên cửa sổ
2. Phát hiện — Mèo nhìn thấy quả bóng
3. Tiến tới — Mèo đi lại gần quả bóng
4. Cao trào — Mèo đẩy bóng lăn
5. Kết thúc — Mèo nằm cạnh món đồ chơi

**Ghép cảnh độc lập** dùng khi đổi góc nhìn/sự kiện mới. **Kéo dài cùng hành động** dùng Extend nếu clip và model hỗ trợ.

**Tools — tạo app nhỏ để làm việc lặp lại:** Flow cho phép tạo công cụ có giao diện riêng từ yêu cầu ngôn ngữ tự nhiên (Công cụ của tôi, Cộng đồng, Mẫu). Luồng: Tạo công cụ → mô tả đầu vào/đầu ra → thử một trường hợp → sửa → lưu → dùng lại. Tạo media qua Tool có thể tốn credit — kiểm tra thông báo trước khi chạy.

**Khi nào chuyển sang CapCut?** Hoàn thiện trong Flow khi cần chuỗi cảnh đơn giản; tải clip sang CapCut nếu cần kiểm soát nhiều lớp video, nhạc, lời đọc và phụ đề chi tiết. Đặt tên tệp `01-mo-dau`, `02-phat-hien`... để không nhầm thứ tự; dùng chung tỉ lệ khung hình từ đầu.

**Tạo TVC cho thương hiệu — quy trình 5 bước chuyên nghiệp** (xem sơ đồ: `video-assets/flow-tvc-brand-infographic.jpg`)

Khác với cách làm nhanh (một prompt → nhiều clip), TVC cần sản phẩm giữ nguyên nhận diện qua mọi cảnh và có nhạc, giọng đọc riêng.

| # | Bước | Công cụ | Việc cần làm |
|---|------|---------|--------------|
| 1 | Kịch bản, mô tả phân cảnh | Gemini | Đưa thương hiệu, sản phẩm, khách hàng, thông điệp, thời lượng → nhận bảng phân cảnh (hình ảnh, camera, voice-over, chữ trên màn). Chốt trước khi làm tiếp. |
| 2 | Tạo video | Google Flow | 2.1 **Hero shot** — 1 ảnh sản phẩm chủ đạo; 2.2 **Storyboard** — 1 ảnh tĩnh/cảnh, gắn hero shot làm tham chiếu; 2.3 **Phân cảnh ngắn** — chuyển từng ảnh thành clip 5–8 s (image-to-video). |
| 3 | Tạo nhạc | Google Flow Music | Mô tả thể loại, tempo, điểm cao trào theo giây; tạo 2–3 bản, chọn bản khớp nhịp cảnh. |
| 4 | Tạo giọng đọc | Google AI Studio | Dán voice-over, chọn giọng Việt hợp thương hiệu, xuất từng cảnh một tệp (VO_S01…). |
| 5 | Hậu kỳ video | CapCut | Đặt giọng trước, cắt hình theo giọng, nhạc nền −12…−18 dB, chữ nhấn, logo + CTA cuối ≥ 3 s, xuất 1080p/4K. |

Prompt mẫu rút gọn:
- **Gemini:** "Bạn là đạo diễn TVC. Viết kịch bản 30 s, 16:9 cho [thương hiệu] – [sản phẩm], thông điệp "[…]". Trả về bảng 6 cảnh: STT | thời lượng | hình ảnh | camera | voice-over ≤12 từ | chữ trên màn."
- **Hero shot:** `Product photography of [sản phẩm], studio lighting, soft rim light, premium commercial look, clean dark background, 4K, no text.`
- **Storyboard/clip:** luôn kèm `Same product as reference image, keep exact shape, color and label … no morphing, no text.`
- **Flow Music:** `30-second cinematic commercial track, warm piano intro, builds to a confident climax at 20s, no vocals, 100 BPM.`

**Xoá logo Gemini/Veo (watermark góc phải dưới) trên clip Flow** — gói Free/Pro luôn gắn khi tải về:
0. *Đã dùng thực tế, miễn phí:* `ffmpeg -i in.mp4 -vf "delogo=x=1696:y=852:w=90:h=90" -c:v libx264 -crf 16 -c:a copy out.mp4` (toạ độ cho 1920×1080; logo cố định suốt clip). Script hàng loạt: `docs/tools/remove-veo-logo.sh`.
   Kinh nghiệm: clip có ngôi sao nằm trên cạnh cứng, hoặc ảnh gốc từ Gemini đã có watermark (đi theo camera) → dùng crop/zoom `crop=1690:950:0:65,scale=1920:1080`. Phòng trước: crop bỏ góc watermark của ảnh hero/storyboard *trước* khi đưa vào Flow.
1. *Chính thức:* Google AI Ultra tải clip không watermark nhìn thấy (còn SynthID ẩn).
2. *Hay dùng nhất:* CapCut → Scale 105–108% và dời khung, hoặc Crop mép phải + dưới ~40 px rồi phóng lại; áp cùng mức cho mọi clip. Xuất 9:16 từ clip 16:9 thì crop dọc đã bỏ góc đó.
3. *Đúng chuẩn TVC:* đặt logo thương hiệu/CTA nhỏ che đúng góc đó, chạy suốt video.
4. *Cuối cùng:* Object/Watermark Removal (CapCut Pro, Premiere) — tốt với nền tĩnh, dễ lem khi có chuyển động.
SynthID ẩn vẫn còn; chạy quảng cáo Meta/TikTok nên bật nhãn "nội dung có AI".

**Hậu kỳ CapCut cho TVC:** thay clip gốc bằng bản `_clean` qua chuột phải → *Replace* (giữ nguyên cắt/transition). Transition có kim cương tím là Pro (cả mục Trending); free ở nhóm **Basic** (Mix/Dissolve, Fade to black/white, Blur, Zoom) và **Slide**. Công thức: Fade từ đen 0,5 s → Mix 0,3–0,4 s giữa cảnh → cắt thẳng lúc lộ sản phẩm → logo/CTA → Fade ra đen; tránh Spin/Glitch/Distortion. Cuối video mờ dần: chọn clip cuối → Video → Basic → Fade out 0,8–1,2 s; âm nhỏ dần: tab Audio → Fade out 1,5 s (hoặc kéo chấm tròn ở mép phải dải sóng âm).

**Dựng TVC hoàn chỉnh bằng ffmpeg (không cần CapCut):** `docs/tools/build-tvc.sh canh1.mp4 canh2.mp4 canh3.mp4 endcard.png out.mp4` — fade từ đen 0,6 s → cảnh 1 → cắt thẳng → cảnh 2 → dissolve 0,4 s → cảnh 3 → fade đen 0,8 s → end card 4,5 s; âm thanh acrossfade + loudnorm −16 LUFS. End card làm bằng Pillow (ffmpeg Homebrew không có drawtext). Mọi nhánh video cần `fps=24,settb=AVTB` trước `xfade`. Thêm nhạc/giọng bằng `amix` hoặc mở file trong CapCut.

Checklist trước khi xuất: nhận diện sản phẩm giống nhau mọi cảnh · mỗi cảnh 3–8 s, cao trào nhạc trùng lúc lộ sản phẩm · giọng rõ, nhạc không lấn · logo + CTA cuối đủ lớn trên điện thoại · chỉ dùng nhạc/giọng tự tạo bằng AI.

**Chi tiết bước 4 — tạo giọng đọc trong Google AI Studio** (`aistudio.google.com/generate-speech`)

1. Mở đúng trang **Generate speech** (Playground mặc định là chat với Gemini, không có tạo giọng). Ở *Run settings* xác nhận model **Gemini Flash TTS** (hoặc Pro TTS nếu có). Chọn chế độ *Text* (một đoạn) hoặc *Composer* (nhiều khối/nhiều người nói).
2. Dán voice-over từng cảnh vào ô lời thoại; tiếng Việt có dấu, số viết bằng chữ; mỗi cảnh một *speech block*.
3. Vào *Speaker settings* → nghe thử và chọn giọng (nam trầm: Orus, Charon; nữ ấm: Kore, Aoede; trẻ: Puck, Zephyr). Điền *Audio Profile* / *Sample Context* kiểu "Giọng quảng cáo cao cấp, ấm, tự tin, tốc độ vừa". Style *Promo/Hype* cho TVC.
4. Chèn thẻ cảm xúc trước câu: `[intrigue] [confident] [warm] [excited] [whisper] [pause]`. Bấm **Run**, nghe lại; Temperature 0.6–0.8 ổn định, 1.0 biểu cảm hơn.
5. Bấm tải xuống → WAV; đặt tên `VO_S01.wav`, `VO_S02.wav`… rồi kéo vào CapCut trước, cắt hình theo giọng. Bản cũ nằm trong *History*.

Ví dụ: `[intrigue] Bạn có bao giờ tự hỏi, một mùi hương có thể kể câu chuyện gì?` · `[confident] Aurelia Parfum. [pause] Hương thơm của chính bạn.`
Lưu ý: gói miễn phí có hạn mức/ngày; WAV 24 kHz mono CapCut nhận trực tiếp; không dùng để giả giọng người thật.
Chọn mẫu trong *Quickstart Templates*: TVC → **The Ad Voiceover** (xoá đoạn mẫu tiếng Anh, dán lời thoại Việt, sửa *Sample Context*); kể chuyện thương hiệu → *Master Storyteller*; hội thoại → *Energetic Co-Host* / *Guarded NPC*; hướng dẫn → *Patient Teacher* / *Training Guide*.
Nếu báo "Failed to list models: authentication error" (ô model trống): tải lại trang, đăng nhập lại Google, hoặc mở `aistudio.google.com/generate-speech` không kèm `?pli=1`.

**Lấy ảnh & video đã tạo trong Flow về máy cho Claude Code / Antigravity**

Flow hiện không có API công khai, không có MCP, không đồng bộ Google Drive → Claude/Antigravity không kéo trực tiếp được; cả hai làm việc với file trên máy. Cầu nối là một thư mục cố định.

| Mức | Cách | Khi nào dùng |
|---|---|---|
| 1 · Thủ công | Flow → nút Tải xuống → lưu `~/HPB/flow-assets/<project>/S01_mo-dau.mp4`… → mở thư mục trong Claude Code/Antigravity | Mặc định, ổn nhất |
| 2 · Bán tự động | Claude in Chrome / browser agent của Antigravity mở Flow, tải từng clip (xác nhận mỗi lần tải) | Project 10–30 clip |
| 3 · Bỏ qua Flow | Claude/Antigravity gọi Gemini API (Veo, Imagen/Nano Banana) bằng API key từ AI Studio, file trả về ngay trong dự án | Muốn tự động hoá cả pipeline; tính credit theo API |

Script gợi ý (`sort-flow.sh <project>`): gom file `.mp4/.png/.jpg` mới trong `~/Downloads` (theo thứ tự thời gian), chuyển vào `~/HPB/flow-assets/<project>/` và đánh số `S01_`, `S02_`…

Quy ước: một project = một thư mục (không dấu, không khoảng trắng) · tên file `S01_`, `S02_` trùng số cảnh trong kịch bản · kèm `README.md` ghi kịch bản/prompt/clip đã duyệt để Claude đọc ngữ cảnh · giữ bản gốc, bản cắt ghép để trong `out/`.

---

### Cách 05 · (Đang nghiên cứu khả năng dùng miễn phí) Seedance qua Dola Render Gateway

Repository `dola-render-gateway` để gửi yêu cầu tạo video bằng code, quản lý hàng đợi và theo dõi kết quả. Khả năng dùng miễn phí đang cần thử và đối chiếu theo tài khoản.

**Giải thích:** Seedance là model tạo video. Dola là dịch vụ mà code này làm việc cùng. Gateway là cầu nối: nhận yêu cầu, giao cho phiên trình duyệt, theo dõi và trả lại link video. Có code không đồng nghĩa có quyền tạo video miễn phí không giới hạn.

Luồng: Bạn/script → API gateway → Phiên trình duyệt Dola → Tạo video → Link kết quả

**6 bước thực hiện:**

| # | Bước | Công cụ | Kết quả |
|---|------|---------|---------|
| 01 | Chốt cảnh thử | Bạn + Claude | Prompt thử nghiệm |
| 02 | Chuẩn bị gateway | Python + trình duyệt | Môi trường đã cấu hình |
| 03 | Mở & kiểm tra | Server · Dashboard | Gateway sẵn sàng thử |
| 04 | Gửi yêu cầu | `POST /v1/videos/generations` | Mã tác vụ `video_…` |
| 05 | Theo dõi kết quả | `GET /v1/videos/{id}` | Link video hoặc lỗi cụ thể |
| 06 | Tải, duyệt & ghép | Bạn · CapCut nếu cần | Video được duyệt + ghi nhận thử nghiệm |

**Chi tiết từng bước:**

1. **Chốt cảnh thử** — Viết một cảnh ngắn, một hành động chính; chọn tỉ lệ và thời lượng để thử trước khi lên kế hoạch nhiều cảnh.
2. **Chuẩn bị gateway** — Cài phụ thuộc theo README (yêu cầu Python 3.11+, Chrome/Chromium và proxy có đầu ra JP/KR — yêu cầu tác giả ghi trong repo, chưa kiểm nghiệm). Không đưa cookie, mật khẩu hoặc mã khôi phục vào tài liệu trình chiếu.
3. **Mở & kiểm tra** —
   ```bash
   uvicorn server:app --host 127.0.0.1 --port 8000
   ```
   Dashboard: `http://127.0.0.1:8000/web`. `DOLA_API_KEYS` bảo vệ API khách; `DOLA_ADMIN_KEY` bảo vệ phần quản trị.
4. **Gửi yêu cầu** — Đây là yêu cầu bất đồng bộ; `queued` nghĩa là được xếp hàng, chưa có video.
   ```
   POST /v1/videos/generations
   Authorization: Bearer <API_KEY_GATEWAY>
   Content-Type: application/json

   {
     "model": "seedance-2.0",
     "prompt": "A product on a table, soft light, slow camera push-in",
     "ratio": "9:16",
     "duration": 10,
     "reference_images": []
   }
   ```
   Model nhận `seedance-2.0` hoặc `seedance-2.5`; `duration` là 10/15/30; tỉ lệ dùng trường `ratio`.
5. **Theo dõi kết quả** —
   ```
   GET /v1/videos/<id-tra-ve>
   Authorization: Bearer <API_KEY_GATEWAY>
   // Đọc: status, video_url, error
   ```
   Trạng thái: `queued` → `processing` → `completed`/`failed`. Mã lỗi: `401` sai khóa, `422` yêu cầu không hợp lệ, `429` hạn mức/hàng đợi, `503 "no account in pool"` chưa có tài khoản.
6. **Tải, duyệt & ghép** — Kiểm tra hình, tiếng, thời lượng, độ nhất quán; ghi lại ngày thử, model, thời lượng, điểm trước/sau, kết quả và lỗi để đánh giá khả năng dùng miễn phí thực tế.

**Kiến trúc repository:**
- `server.py` — nhận yêu cầu, kiểm tra khóa, trả trạng thái và kết quả.
- `browser_pool.py` + `browser.py` — quản lý phiên trình duyệt và phân công tác vụ.
- `video_worker*.py` — thực hiện quá trình tạo và theo dõi video.
- `store.py` — lưu tác vụ và cấu hình khóa trong SQLite.
- `web/` — giao diện quản trị tại `/web`.
- `config.py` — cấu hình môi trường, giới hạn, nơi lưu video và thông tin kết nối.

**Phần "free" — hiện biết gì, chưa biết gì?**
- *Đã thấy:* mã nguồn gateway, pool tài khoản, hàng đợi và API; code báo lỗi riêng khi hết lượt ngày hoặc thiếu điểm.
- *Cần thử tiếp:* nơi cấp lượt miễn phí, số lượt thực nhận, quyền model và thời lượng, thời điểm làm mới, độ ổn định của phiên. Chưa có danh sách nền tảng miễn phí đã kiểm chứng; không quy đổi số tài khoản thành số video miễn phí.

> Nguồn: đã đọc README.md và code công khai ngày 07/09/2026; chưa cài gateway, đăng nhập Dola hoặc chạy thử tạo video thật.

---

### Thư viện công cụ Video AI — 11 công cụ tạo Video AI đỉnh cao 2026

Công cụ sinh video từ văn bản, ảnh động, nhân vật MC ảo (Talking Avatar) và Upscale 4K.

| # | Công cụ | Link | Ưu điểm nổi bật | Nhược điểm |
|---|---------|------|-----------------|------------|
| 1 | Runway Gen-3 Alpha | runwayml.com | Chất lượng điện ảnh số 1; kiểm soát chuyển động camera & thời gian chuẩn xác; Text/Image-to-Video đỉnh cao | Bản miễn phí giới hạn credit; cần trả phí để render HD không watermark |
| 2 | Kling AI | klingai.com | Xuất video Full HD 1080p tới 10 giây; cử động nhân vật tự nhiên; mô phỏng vật lý thực tế | Hàng đợi render vào giờ cao điểm có thể lâu |
| 3 | Luma Dream Machine | lumalabs.ai | Tốc độ sinh video cực nhanh (~120s); hiểu chuyển động 3D xuất sắc; free daily | Một số chuyển động bàn tay phức tạp đôi khi bị biến dạng nhẹ |
| 4 | OpenAI Sora | openai.com | Hiểu sâu vật lý thế giới thực; nhất quán nhân vật xuyên suốt nhiều góc quay | Đang mở quyền truy cập giới hạn theo giai đoạn |
| 5 | Pika 2.0 | pika.art | Hiệu ứng Pikaffects độc quyền (tan biến, nổ, đè bẹp, tan chảy); Modify Region | Video cơ bản 3-4 giây; bản free có logo nhỏ |
| 6 | HeyGen | heygen.com | Tạo MC/người ảo thuyết trình chân thực; dịch video 40+ ngôn ngữ tự khớp khẩu hình | Chuyên về video thuyết trình/bán hàng hơn phim nghệ thuật; giá Pro cao |
| 7 | Hedra | hedra.com | Biến ảnh nhân vật tĩnh thành video ca hát/nói chuyện theo audio tải lên | Độ dài video tối đa ~60 giây/lần tạo |
| 8 | Haiper AI | haiper.ai | Giao diện đơn giản; video HD miễn phí hàng ngày; Repainting đổi màu chi tiết | Độ dài video giới hạn 4-8 giây |
| 9 | D-ID | d-id.com | Nền tảng Talking Head kỳ cựu; API tích hợp mạnh vào chatbot/web động | Cử động phần thân dưới còn tĩnh, tập trung chủ yếu khuôn mặt |
| 10 | Viggle AI | viggle.ai | Thay thế nhân vật trong video có sẵn bằng ảnh bất kỳ (Character Movement Swapping) | Chất lượng hình ảnh vừa phải, cần thêm AI Upscaler |
| 11 | Topaz Video AI | topazlabs.com | Upscale video lên 4K/8K tốt nhất; tăng mượt 60fps; khử mờ, khử rung, tăng nét | Chạy trực tiếp trên máy tính, cần GPU mạnh |

### Quy trình 4 bước sản xuất Video Ngắn Viral 100% bằng AI

1. **Viết kịch bản** — ChatGPT/Claude tạo kịch bản 60 giây gồm 3 phần: Hook 3s đầu + Nội dung giải quyết vấn đề + Call To Action.
2. **Tạo giọng đọc** — Dán lời thoại vào ElevenLabs/Fish Audio, chọn tone giọng truyền cảm hứng, tải file mp3.
3. **Sinh cảnh quay** — Dùng Midjourney/FLUX vẽ ảnh từng phân cảnh, đưa vào Kling AI/Runway Gen-3 tạo chuyển động camera mượt mà.
4. **Dựng & thêm phụ đề** — Đưa tất cả vào CapCut, bật Auto Captions, xuất bản lên TikTok, Reels, Shorts.

### 3 hướng tiếp cận làm video AI

| Hướng | Công cụ | Đặc điểm | Hợp dùng khi |
|-------|---------|----------|---------------|
| Code hóa | Claude + Remotion | Dựng video bằng component React, chuyển động tính theo frame. Sửa timing/bố cục = sửa code, render lại hàng loạt | Video nhiều feature/slide, cần đồng bộ brand, ra nhiều biến thể |
| AI sinh cảnh | Google Flow (Veo) | Mô tả cảnh bằng lời (prompt) để AI sinh clip khi không có footage thật — dùng làm nguyên liệu thô | B-roll không quay thật được, thử nhanh ý tưởng hình ảnh |
| Dựng tay | CapCut | Cắt dựng trực quan, auto-caption, thư viện nhạc/hiệu ứng sẵn có — không cần biết code | Video ngắn ra nhanh, đăng thẳng lên mạng xã hội |

---

## 3. 10 Công cụ Sinh Ảnh AI & Công thức Prompt

Công cụ sinh ảnh nghệ thuật, chân dung siêu thực, thiết kế Typography, Logo & Vector SVG.

| # | Công cụ | Link | Ưu điểm nổi bật | Nhược điểm |
|---|---------|------|-----------------|------------|
| 1 | Midjourney v6.1 | midjourney.com | Gu thẩm mỹ & ánh sáng điện ảnh đẹp nhất; da người/vật liệu chân thực; thư viện cộng đồng khổng lồ | Không có gói miễn phí; dùng qua Discord hoặc web khi đạt mốc tạo ảnh |
| 2 | FLUX.1 (Black Forest Labs) | blackforestlabs.ai | Chi tiết chân thực đến từng lỗ chân lông/sợi tóc; vẽ tay hoàn hảo; mã nguồn mở tự chạy được | Bản Pro trả phí; bản Dev cần VGA mạnh (từ 12GB VRAM) |
| 3 | Ideogram 2.0 | ideogram.ai | Vẽ chữ/Typography chuẩn xác 100%, không sai chính tả; phối màu thiết kế áo thun/poster/banner đỉnh | Số lượt tạo ảnh miễn phí mỗi ngày có hạn |
| 4 | Leonardo.ai | leonardo.ai | Hệ sinh thái đa năng (Canvas, Realtime Generation, Video); 150 token free/ngày; nhiều model chuyên biệt | Giao diện nhiều tính năng có thể rối với người mới |
| 5 | Stable Diffusion 3.5/SDXL | stability.ai | Mã nguồn mở miễn phí 100%; kiểm soát cấu trúc ảnh qua ControlNet, LoRA; cộng đồng style lớn nhất | Đòi hỏi cài ComfyUI/Automatic1111 và kiến thức kỹ thuật |
| 6 | DALL-E 3 | chatgpt.com | Tích hợp thẳng trong ChatGPT; hiểu tiếng Việt xuất sắc; chỉnh sửa ảnh từng vùng dễ | Thiên về minh họa/digital art hơn ảnh chụp studio |
| 7 | Recraft.ai | recraft.ai | Chuyên thiết kế đồ họa & xuất Vector SVG không vỡ nét; icon 3D, minh họa đồng bộ màu thương hiệu | Không chuyên về ảnh chân dung điện ảnh |
| 8 | Krea AI | krea.ai | Vẽ nét tay + AI sinh ảnh tức thì (Real-time); AI Enhancer & Upscale ảnh mờ siêu đỉnh | Bản free giới hạn lượt render hàng ngày |
| 9 | Adobe Firefly | firefly.adobe.com | An toàn 100% bản quyền thương mại; tích hợp Photoshop (Generative Fill); hiệu ứng chữ & texture sáng tạo | Cần tài khoản Adobe Creative Cloud để dùng trọn vẹn |
| 10 | SeaArt.ai | seaart.ai | Nền tảng miễn phí thân thiện người mới; kho template prompt phong phú; bộ công cụ đổi trang phục/đổi mặt | Giao diện có khá nhiều thành phần hiển thị |

**Công thức viết Prompt Hình ảnh AI chuẩn điện ảnh & chân thực:**

```
[Chủ thể chính] + [Hành động / Biểu cảm] + [Bối cảnh môi trường] + [Ánh sáng / Thời tiết] + [Góc máy & Ống kính (vd: 85mm f/1.4, cinematic lighting)] + [Phong cách nghệ thuật (vd: Photorealistic, 8k resolution)]
```

---

## 4. 8 Công cụ Giọng Đọc & Sáng Tác Nhạc AI

Công cụ lồng tiếng Text-to-Speech truyền cảm, Clone giọng nói cá nhân và sáng tác bài hát trọn vẹn bằng AI.

| # | Công cụ | Link | Ưu điểm nổi bật | Nhược điểm |
|---|---------|------|-----------------|------------|
| 1 | ElevenLabs | elevenlabs.io | Chất lượng giọng đọc biểu cảm chân thực nhất; ngắt nghỉ như người thật; Clone giọng chỉ từ 1 phút audio mẫu | Bản miễn phí giới hạn 10.000 ký tự/tháng |
| 2 | Suno AI (v3.5) | suno.com | Sáng tác trọn vẹn bài hát (lời + ca sĩ + nhạc cụ + phối khí) từ 1 dòng mô tả; đa thể loại | Bản miễn phí không bao gồm quyền sở hữu thương mại |
| 3 | Udio | udio.com | Chất lượng âm thanh chuẩn phòng thu; xử lý giọng hát solo và hòa âm tinh tế; nối đoạn mượt mà | Thời gian render một bài hát lâu hơn Suno một chút |
| 4 | Fish Audio | fish.audio | Voice Clone thế hệ mới hỗ trợ tiếng Việt tự nhiên; độ trễ thấp; chi phí linh hoạt | Cộng đồng người dùng tiếng Việt đang phát triển |
| 5 | OpenAI TTS | platform.openai.com | Chi phí qua API siêu rẻ ($0.015/1k ký tự); phản hồi nhanh; giọng chuẩn quốc tế | Ít tùy biến ngắt nghỉ kịch tính hơn ElevenLabs |
| 6 | Murf.ai | murf.ai | Studio lồng tiếng chuyên nghiệp; tích hợp dựng video đồng bộ âm thanh; 120+ giọng chuẩn quảng cáo | Bản dùng thử miễn phí không cho tải file âm thanh |
| 7 | Lalal.ai | lalal.ai | Tách giọng ca sĩ (vocal) và nhạc nền (beat/instrumental) chuẩn xác, không tạp âm | Bản miễn phí chỉ xử lý thử 10 phút audio |
| 8 | Soundraw.io | soundraw.io | Tự động sinh nhạc nền theo độ dài/thể loại video; miễn phí bản quyền khi đăng YouTube/TikTok/Facebook | Cần trả phí để xuất bản/tải file âm thanh chất lượng cao |

---

## 5. Tự Động Hóa & AI Agents

Hệ thống ứng dụng làm việc hiệu quả với AI (Obsidian, Orca, Cursor) và các nền tảng tự động hóa quy trình (n8n, Make, Dify).

| # | Ứng dụng | Link | Phân loại | Ưu điểm nổi bật | Lưu ý / Nhược điểm |
|---|----------|------|-----------|-----------------|---------------------|
| 1 | Obsidian | obsidian.md | Quản lý tri thức · Nối luồng · AI Agent | "Bộ não thứ hai" lưu Markdown offline 100%; liên kết 2 chiều `[[bi-directional links]]`; tích hợp AI qua plugin Smart Connections, Text Generator, Obsidian Copilot | Cần thời gian làm quen/tùy biến; đồng bộ đa thiết bị cần Obsidian Sync hoặc Git/iCloud |
| 2 | Orca (Agent Manager) | orca.so / workspace | Quản lý Agent · Nối luồng · AI Agent | Điều phối & quản lý nhiều AI Agent làm việc song song; quản lý ngữ cảnh, phân luồng tác vụ tập trung cho từng Workspace dự án | Đang trong giai đoạn phát triển nâng cấp tính năng |
| 3 | Cursor AI / Claude Code | cursor.com | AI IDE Lập trình · Nối luồng · AI Agent | Trình soạn thảo mã tích hợp AI Agent hiểu toàn bộ cấu trúc dự án (Full Codebase Indexing); sinh file, debug, refactor gấp 10 lần | Bản miễn phí giới hạn số câu hỏi hàng tháng (Pro $20/tháng) |
| 4 | Raycast AI | raycast.com | AI Launcher · Nối luồng · AI Agent | Trợ lý phím tắt số 1 trên Mac; gọi ChatGPT/Claude/Gemini từ bất kỳ đâu bằng 1 phím tắt; tự động dịch/tóm tắt/quản lý clipboard | Chủ yếu tối ưu trên macOS (bản Windows đang phát triển) |
| 5 | Notion AI | notion.so | Quản lý tri thức · Nối luồng · AI Agent | Không gian làm việc cộng tác đa năng; AI tự trích xuất thông tin, điền thuộc tính bảng tính, tóm tắt cuộc họp | Dữ liệu lưu trên đám mây; phí AI riêng $10/tháng/người dùng |
| 6 | n8n | n8n.io | Nối luồng No-Code · AI Agent | Nền tảng tự động hóa mã nguồn mở đỉnh nhất; Self-host miễn phí không giới hạn luồng; Node AI Agent (LangChain) mạnh mẽ | Cần máy chủ VPS hoặc Docker để tự vận hành |
| 7 | Make.com | make.com | Nối luồng No-Code · AI Agent | Giao diện kéo thả trực quan sinh động; tự động xuất bản đa kênh (WordPress, Facebook, Zalo, Google Sheets); xử lý JSON/Data linh hoạt | Bản miễn phí giới hạn 1.000 operation/tháng |
| 8 | Zapier | zapier.com | Nối luồng No-Code · AI Agent | Hệ sinh thái kết nối lớn nhất (6.000+ app); Zapier Central điều khiển AI Bot tự động | Chi phí gói trả phí tương đối cao so với Make và n8n |
| 9 | Dify.ai | dify.ai | AI Agent Builder · Nối luồng | Kéo thả xây dựng ứng dụng AI Agent & Chatbot RAG nội bộ tra cứu tài liệu đỉnh cao; hỗ trợ nhiều LLM (OpenAI, Claude, DeepSeek) cùng lúc | Mã nguồn mở cần máy chủ đủ tài nguyên để cài Docker trọn gói |
| 10 | Flowise AI | flowiseai.com | AI Agent Builder · Nối luồng | Kéo thả no-code cho LangChain & LlamaIndex; kết nối Vector Database (Pinecone, Supabase, Chroma) làm trợ lý tài liệu | Cần hiểu Chains, Memory, Vector Store để tùy biến sâu |
| 11 | CrewAI | crewai.com | AI Agent Builder · Nối luồng | Framework điều phối mạng lưới Đa Agent (Multi-Agent Team) xuất sắc; chia vai trò (Researcher, Writer, Reviewer) tự phối hợp | Chủ yếu triển khai qua mã nguồn Python/CLI, đòi hỏi nền tảng lập trình |

### Mô hình Hệ Thống Làm Việc Tối Ưu Với AI 2026

1. **Tầng Quản Lý Tri Thức (Obsidian + Orca)** — Lưu trữ toàn bộ tài liệu dự án, cấu trúc Prompt và nhật ký luồng công việc. Orca điều phối các tác vụ của Agent.
2. **Tầng Tự Động Hóa (n8n / Make.com)** — Nhận yêu cầu từ Webhook, gọi các mô hình AI (LLM, sinh ảnh, sinh video) và tự động xuất bản kết quả lên mạng xã hội.
3. **Tầng Đa Agent (Dify / Cursor AI)** — Đóng vai trò trợ lý chuyên sâu từng lĩnh vực: tự động phân tích dữ liệu, viết mã nguồn và kiểm tra chất lượng sản phẩm.

---

## 6. Content YouTube — Danh sách video sẽ làm

Tab này chỉ là **danh sách video sẽ làm** (ý tưởng → đang làm → đã đăng), sửa trực tiếp trên trang, lưu trên trình duyệt. Quy trình sản xuất xem ở mục Video AI.

| # | Ngày làm | Video sẽ làm | Link / nguồn | Trạng thái | Ghi chú |
|---|----------|--------------|--------------|-----------|---------|
| 1 | 19/09/2026 | Tạo video từ tài liệu bằng Gemini Notebook (NotebookLM) — Video Overview | notebook.google.com/notebook/fbb0f1fd-… | 💡 Ý tưởng | Phải Add sources trước thì Studio → Video Overview mới tạo được (0 sources = không làm gì). Đặt Output language = Tiếng Việt. |
| 2 | — | Phân biệt nhanh LLM, RAG, AI Agent và MCP (giải thích bằng sơ đồ) | Bài Facebook 17/09, sơ đồ 4 tầng (credit Everyday by Pol & David Andrés) | 💡 Ý tưởng | Explainer 2–3 phút: LLM trả lời từ prompt · RAG tra tài liệu trước · Agent tự lập kế hoạch/nhớ/gọi tool · MCP cổng chuẩn nối AI với GitHub/Slack/file. Nội dung có sẵn ở tab Kiến Thức AI. |

---

*Tài liệu này là bản tóm tắt/chuyển thể sang Markdown của [`facebook-campaign-tabs.html`](./facebook-campaign-tabs.html) để tiện đọc và tra cứu offline. Với bảng công cụ có đánh giá "Đã đồng bộ Cloud" hoặc số liệu cập nhật liên tục, hãy đối chiếu lại bản HTML/nguồn gốc trước khi dùng cho quyết định quan trọng.*
