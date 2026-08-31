# Thư mục `web-mau/`

Đây là **kho web mẫu nội bộ** của dự án — nơi lưu trữ các trang web/landing page/prototype được tạo ra bằng AI (chủ yếu qua Base44) để tham khảo, demo cho khách hàng, hoặc dùng lại cho dự án sau.

## Cấu trúc

**Quy tắc: 1 web mẫu = 1 folder con.**

```
web-mau/
├── README.md                      # File này
├── landing-hoa-tuoi/              # Ví dụ: landing page shop hoa
│   ├── index.html
│   ├── assets/
│   │   ├── style.css
│   │   └── images/
│   └── README.md                  # Mô tả mẫu, prompt đã dùng, link Base44
├── shop-thoi-trang/               # Ví dụ: trang bán hàng đơn giản
│   ├── index.html
│   └── README.md
└── ...                            # Thêm mẫu mới ở đây
```

## Khi thêm 1 web mẫu mới

1. **Tạo folder mới** trong `web-mau/` với tên **không dấu, cách nhau bằng gạch ngang** (ví dụ: `dat-lich-spa/`, `portfolio-ca-nhan/`).
2. **Bên trong folder mẫu**, tạo:
   - `index.html` — file chính của mẫu (có thể kèm CSS/JS inline nếu mẫu nhỏ, hoặc tách ra `assets/` nếu phức tạp).
   - `README.md` — mô tả ngắn theo mẫu bên dưới.
3. (Tuỳ chọn) Nếu mẫu có hình ảnh, tạo `assets/images/` để chứa.
4. Commit lên git như bình thường.

## Mẫu README cho mỗi web

Mỗi folder mẫu nên có file `README.md` ngắn theo format:

```markdown
# Tên web mẫu

- **Loại**: Landing page / Trang bán hàng / Trang đặt lịch / Portfolio / ...
- **Ngành**: Hoa / Thời trang / Nhà hàng / ...
- **Công cụ dùng**: Base44 / Bolt.new / v0 / ...
- **Link Base44 gốc** (nếu có): https://...
- **Prompt gốc** (nếu muốn lưu lại): dán đoạn prompt đã dùng để tạo
- **Ngày tạo**: YYYY-MM-DD
- **Người tạo**: ...
- **Ghi chú**: mục đích dùng, khách hàng nào (nếu có), điểm hay cần nhớ...
```

## Quy tắc đặt tên folder mẫu

- ✅ Dùng chữ thường, không dấu, cách nhau bằng gạch ngang.
- ✅ Đặt tên theo **mục đích** (ưu tiên) hoặc theo **khách hàng** (nếu là mẫu riêng).
- ❌ Tránh tên chung chung kiểu `mau-1`, `test`, `demo` — sẽ khó tìm sau này.

**Ví dụ tốt:**
- `landing-hoa-tuoi/` — landing page shop hoa
- `dat-lich-spa/` — trang đặt lịch spa
- `portfolio-anh/` — portfolio nhiếp ảnh gia
- `shop-thoi-trang-nu/` — shop thời trang nữ

## Khi không còn dùng mẫu nào đó

- **Không xóa vội** — di chuyển vào `web-mau/_archive/` trước (tạo folder đó khi cần).
- Hoặc giữ lại làm tài liệu tham khảo nếu mẫu có prompt hay.

---

*Thư mục này được tạo ngày 28/08/2026. Mọi thắc mắc xin liên hệ đội dự án.*
