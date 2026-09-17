#!/bin/zsh
# Dựng TVC 16:9 từ 3 clip Flow đã xoá logo + end card, không cần CapCut.
# Dùng: ./build-tvc.sh canh1.mp4 canh2.mp4 canh3.mp4 endcard.png out.mp4
# Công thức: fade từ đen 0,6 s → cảnh 1 → CẮT THẲNG → cảnh 2 → dissolve 0,4 s → cảnh 3 → fade đen 0,8 s → end card 4,5 s → fade ra.
# Mỗi cảnh lấy 8 giây đầu (đổi số 8 nếu muốn). Âm thanh nền của clip Veo được giữ, chuẩn loudness -16 LUFS.
set -e
A="$1"; B="$2"; C="$3"; CARD="$4"; OUT="${5:-TVC_16x9.mp4}"
ffmpeg -v error -y -i "$A" -i "$B" -i "$C" -loop 1 -t 4.5 -i "$CARD" -f lavfi -t 4.5 -i anullsrc=r=48000:cl=stereo \
 -filter_complex "
 [0:v]trim=0:8,setpts=PTS-STARTPTS,fps=24,settb=AVTB,fade=t=in:st=0:d=0.6,format=yuv420p[v0];
 [1:v]trim=0:8,setpts=PTS-STARTPTS,fps=24,settb=AVTB,format=yuv420p[v1];
 [2:v]trim=0:8,setpts=PTS-STARTPTS,fps=24,settb=AVTB,format=yuv420p[v2];
 [3:v]scale=1920:1080,setsar=1,fps=24,settb=AVTB,format=yuv420p[v3];
 [v0][v1]concat=n=2:v=1:a=0,settb=AVTB[v01];
 [v01][v2]xfade=transition=dissolve:duration=0.4:offset=15.6,settb=AVTB[v012];
 [v012][v3]xfade=transition=fadeblack:duration=0.8:offset=23.2[vall];
 [vall]fade=t=out:st=26.6:d=0.9[vout];
 [0:a]atrim=0:8,asetpts=PTS-STARTPTS,afade=t=in:st=0:d=0.6[a0];
 [1:a]atrim=0:8,asetpts=PTS-STARTPTS[a1];
 [2:a]atrim=0:8,asetpts=PTS-STARTPTS[a2];
 [a0][a1]acrossfade=d=0.05[a01];
 [a01][a2]acrossfade=d=0.4[a012];
 [a012][4:a]acrossfade=d=0.8[aall];
 [aall]afade=t=out:st=25.5:d=1.5,loudnorm=I=-16:TP=-1.5:LRA=11[aout]" \
 -map "[vout]" -map "[aout]" -c:v libx264 -preset slow -crf 17 -pix_fmt yuv420p -r 24 -c:a aac -b:a 192k -movflags +faststart "$OUT" 2>&1 | grep -v mmco || true
echo "Xong: $OUT"
