---
# --- Obsidian / Second-brain (không export hết, chỉ để lọc) ---
date: "{{date:YYYY-MM-DD}}"
type: content
tags: [content]
ai-first: true
area: ca-nhan
status: idea            # idea | outline | drafting | published
publish: false          # true = cho lên web, false = nháp trong vault
kenh: ""                # web | video | social
pillar: ""              # ads | content | funnel | AI | insight-nganh
du_tren: ""             # vd: "[[16 Học tập/...]] + [[12 Insight khách hàng/...]]"
proof_note: ""          # proof ẩn danh: %, as of tháng, không tên client

# --- Docusaurus / web (giữ nguyên key để export hiểu) ---
slug: "{{date:YYYY-MM-DD}}-ten-bai-khong-dau"
title: "{{title}}"
author: ""
author_title: ""
date: "{{date:YYYY-MM-DD}}"
description: "1 câu 140 ký tự cho SEO + preview, viết tay trước khi publish."
featuredImage: "/img/content/{{date:YYYY-MM-DD}}-ten-bai-cover.jpg"
coverImage: "/img/content/{{date:YYYY-MM-DD}}-ten-bai-cover.jpg"
imageAlt: "{{title}}"
tags: ["content"]
---

# {{title}}

> [!info]- For future agent
> Content cá nhân (area: ca-nhan), tạo {{date:YYYY-MM-DD}}. Dựa trên `du_tren`. Số liệu đã ẩn danh. Export web: chỉ khi `status: published + publish: true`. Khi export: `[[wikilink]]` → `[text](/slug)`, callout `> [!info]` → `:::info`, bỏ `![[Bases/...]]`, ảnh chép vào `static/img/content/`.

## Dựa trên (bắt buộc, không public nguyên văn)
- Kiến thức:
- Insight khách (đã ẩn danh):
- Proof ẩn danh (%, as of):

## Dàn ý
1. Hook:
2. 3 ý chính:
3. CTA:

## Bản nháp (phần này = thân bài lên web)
...
<!-- Khi export Docusaurus: giữ từ đây trở lên làm body, bỏ 2 mục dưới -->

## Checklist trước publish (không export)
- [ ] `status: published` + `publish: true` + `slug` không dấu, duy nhất
- [ ] `kenh` đã điền (web / video / social)
- [ ] `description` đủ 120-160 ký tự, không tên client/page thật
- [ ] Ảnh cover đã vào `static/img/content/`, đúng `featuredImage`
- [ ] Link nội bộ đã đổi từ `[[...]]` sang `/slug`, không còn link vùng công việc

## Sau xuất bản (giữ trong vault, không export)
- published_url: ""
- published_on: ""
- View / inbox / follow mới sau 7 ngày:
- Bài học cho bài sau:
