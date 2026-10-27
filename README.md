# Obsidian Vault — Second-brain template cho Digital Marketing

Template demo tiếng Việt, local-first, layout **Obsidian-Style (Human-First)** theo
`eugeniughelbur/obsidian-second-brain` (xem `references/vault-schema.md`). Không cần API key ngoài.

## Cài 3 bước (Windows)

1. Clone repo này về máy.
2. Mở Obsidian → Open vault → chọn folder vừa clone. Bật theme `PLN` ở Settings → Appearance nếu thích.
3. (Tùy chọn) Cài plugin `obsidian-local-rest-api` + `claudian` + `kanban` từ `.obsidian/plugins/` (đã kèm sẵn),
   bật trong Settings → Community plugins.
   Chạy `install.bat` để kiểm tra cấu trúc.

## Có gì trong template

- 18 folder tiếng Anh: `Daily/`, `Dev Logs/`, `Tasks/`, `Projects/`, `People/`, `Boards/`,
  `Knowledge/`, `Learning/`, `Ideas/`, `Content/`, `Goals/`, `Health/`, `Finances/`,
  `Jobs/`, `Businesses/`, `Mentions/`, `Reviews/`, `Templates/` — mỗi folder có `_Hướng dẫn.md`.
- `Templates/`: Daily, Project, Task, Person + Bài content cá nhân (pipeline
  `idea → outline → drafting → published`, kenh `web | video | social`).
- `Knowledge/Từ điển KPI & công thức.md` — định nghĩa chuẩn CPA/CPL/ROAS/MER.
- `AGENTS.md` — sổ tay vận hành cho AI (đọc trước khi ghi). `Home.md` + `index.md` + `log.md` mẫu.
- `references/vault-schema.md` — schema gốc để tự config thêm.
- `_trash/` — xóa mềm, không xóa cứng.

## Quy ước nhanh

- Agent trả lời tiếng Việt, tuân thủ `AGENTS.md` (AI-first, frontmatter, wikilink, số liệu có `as of`).
- Đổi trạng thái/vai trò thì thêm dòng `timeline`, không sửa đè lịch sử.
- Content public chỉ dùng số ẩn danh (%, `as of` tháng), không đưa tên client/ngân sách chi tiết.
- File local không push: `.obsidian/plugins/*/data.json` (chứa API key), `.obsidian/workspace*.json`,
  `.obsidian/cache/` — đã chặn trong `.gitignore`.

## Mang về vault thật

Copy 1 chiều template → vault thật: `.opencode/`, `Templates/`, `AGENTS.md`. Không bao giờ copy ngược
data khách, số liệu, key vào template.
