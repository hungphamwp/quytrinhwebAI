#!/bin/zsh
# Xoá watermark Gemini/Veo (ngôi sao lấp lánh góc phải dưới) khỏi clip tải từ Google Flow.
# Dùng:  ./remove-veo-logo.sh video1.mp4 video2.mp4 ...     (không tham số = mọi .mp4 trong thư mục hiện tại)
# Kết quả: thư mục ./clean/<tên>_clean.mp4 — giữ nguyên độ phân giải, âm thanh copy nguyên bản.
# Vị trí logo đo trên clip 1920x1080: tâm ~ (1740, 897), kích thước ~70px. Với độ phân giải khác, script tự quy đổi theo tỉ lệ.
set -e
command -v ffmpeg >/dev/null || { echo "Cần cài ffmpeg: brew install ffmpeg"; exit 1; }
files=("$@"); [ ${#files} -eq 0 ] && files=(*.mp4(N))
[ ${#files} -eq 0 ] && { echo "Không có file .mp4"; exit 1; }
mkdir -p clean
for f in "${files[@]}"; do
  W=$(ffprobe -v error -select_streams v:0 -show_entries stream=width -of csv=p=0 "$f")
  H=$(ffprobe -v error -select_streams v:0 -show_entries stream=height -of csv=p=0 "$f")
  # toạ độ chuẩn theo 1920x1080, quy đổi theo chiều rộng/cao thật
  X=$(( 1696 * W / 1920 )); Y=$(( 852 * H / 1080 )); S=$(( 90 * W / 1920 ))
  out="clean/${f:t:r}_clean.mp4"
  echo "→ $f (${W}x${H}) → $out"
  ffmpeg -v error -y -i "$f" -vf "delogo=x=${X}:y=${Y}:w=${S}:h=${S}" \
    -c:v libx264 -preset slow -crf 16 -pix_fmt yuv420p -c:a copy "$out" 2>&1 | grep -v mmco || true
  [ -s "$out" ] || { echo "  LỖI: không tạo được $out"; rm -f "$out"; }
done
echo "Xong. Kiểm tra thư mục clean/"
