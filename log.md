---
date: 2026-10-27
type: log
tags: [log, ai-first]
ai-first: true
---

# Nhật ký thao tác vault (template)

> [!info]- For future agent
> Nhật ký theo thời gian của mọi thao tác lớn trên vault. Mỗi phiên agent làm thay đổi lớn thì thêm 1 dòng ở cuối, định dạng `YYYY-MM-DD HH:mm – ai – việc`.

- 2026-10-27 – Opencode – Dựng template demo khung Việt (8 folder + Templates + Từ điển KPI + AGENTS/Home/index/log + Bases kanban), sau gọn còn 5 folder + Clippings, đổi `14 Người` → `14 Liên hệ`, kéo `references/vault-schema.md`.
- 2026-10-27 – Opencode – Setup lại theo Obsidian-Style (Human-First): thay toàn bộ khung Việt bằng 18 folder tiếng Anh (Daily → Reviews) + `_trash/`; migrate Từ điển KPI → `Knowledge/`, giữ Bài content cá nhân; thêm Templates Daily/Project/Task/Person; viết lại AGENTS/Home/index/README/install.bat.
- 2026-10-27 – Opencode – Cài plugin Kanban v2.0.51 (kèm sẵn main.js/manifest.json/styles.css) + bật trong community-plugins.json.
- 2026-10-27 – Opencode – Dựng Agent Skills build (`--platform agent-skills`, 49 skills vào `.agents/skills/`) + `_CLAUDE.md` trỏ về `AGENTS.md`; bỏ bản opencode cũ vì upstream deprecated.
- 2026-10-27 – Opencode – Cấu hình MCP `obsidian` (obsidian-mcp-server → Local REST API 27124): global opencode.jsonc + `opencode.json.example` mẫu, `opencode mcp list` báo connected, REST trả đúng vault đang mở.
- 2026-10-27 – Opencode – Dựng bản OpenCode native (`--platform opencode`, 48 lệnh vào `.opencode/commands/`); giữ `AGENTS.md` template, bỏ bản upstream.
