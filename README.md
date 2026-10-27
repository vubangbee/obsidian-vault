# Obsidian Vault — Second-brain template cho Digital Marketing

Template demo tiếng Việt, local-first, dùng ngay + share cộng đồng. Không cần API key ngoài.

## Cài 3 bước (Windows)

1. Clone repo này về máy.
2. Mở Obsidian → Open vault → chọn folder vừa clone. Bật theme `PLN` ở Settings → Appearance nếu thích.
3. (Tùy chọn, để AI đọc/ghi vault) Cài plugin `obsidian-local-rest-api` + `claudian` từ `.obsidian/plugins/` (đã kèm sẵn), bật trong Settings → Community plugins. Chạy `install.bat` để kiểm tra cấu trúc.

## Có gì trong template

- Khung 8 folder: `00 Inbox/`, `08 Quyết định/`, `09 Playbooks/`, `11 Creative/`, `12 Insight khách hàng/`, `14 Người/`, `16 Học tập/`, `17 Cá nhân/` — mỗi folder có `_Hướng dẫn.md`.
- `Templates/Bài content cá nhân.md` — pipeline `idea → outline → drafting → published`, kenh `web | video | social`.
- `10 Kiến thức/Từ điển KPI & công thức.md` — định nghĩa chuẩn CPA/CPL/ROAS/MER.
- `Bases/Quyết định.base` — bảng Cần kiểm lại / Theo loại / Tất cả + view Kanban theo `outcome` (kéo-thả đổi trạng thái, không cần plugin Kanban ngoài).
- `AGENTS.md` — sổ tay vận hành cho AI (đọc trước khi ghi). `Home.md` + `index.md` + `log.md` mẫu.

## Quy ước nhanh

- Agent trả lời tiếng Việt, tuân thủ `AGENTS.md` (AI-first, frontmatter, wikilink, số liệu có `as of`).
- Content cá nhân chỉ dùng số ẩn danh (%, `as of` tháng), không đưa tên client/ngân sách chi tiết từ vùng công việc sang.
- File local không push: `.obsidian/plugins/*/data.json` (chứa API key), `.obsidian/workspace*.json`, `.obsidian/cache/` — đã chặn trong `.gitignore`.

## Mang về vault thật

Copy 1 chiều template → vault thật: `.opencode/`, `Templates/`, `Bases/`, `AGENTS.md`. Không bao giờ copy ngược data khách, số liệu, key vào template.
