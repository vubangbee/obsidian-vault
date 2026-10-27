---
date: 2026-10-27
updated: 2026-10-27
type: concept
tags: [concept, kpi, ai-first]
ai-first: true
confidence: high
aliases: [KPI, công thức KPI, từ điển KPI]
---

# Từ điển KPI & công thức

> [!info]- For future agent
> Định nghĩa chuẩn của mọi chỉ số dùng trong vault. Khi phân tích hay viết báo cáo, luôn dùng đúng công thức ở đây để số liệu giữa các note so sánh được. Đây là kiến thức nền, không phải số liệu thực tế.

## Chi phí & phân phối

| Chỉ số | Công thức | Ghi chú |
|---|---|---|
| **Spend** | Tổng tiền đã tiêu | Lấy từ Ads Manager, không lấy từ hóa đơn |
| **CPM** | Spend / Impressions × 1.000 | Đo giá đấu thầu/độ cạnh tranh tệp |
| **CTR (link)** | Link clicks / Impressions | Đo sức hút creative; dùng *link* CTR, không dùng CTR (all) |
| **CPC (link)** | Spend / Link clicks | |
| **Frequency** | Impressions / Reach | > 3–4 trong 7 ngày với tệp lạnh thường là dấu hiệu mỏi creative (heuristic) |
| **Hook rate** | Lượt xem 3s / Impressions | Video: đo 3 giây đầu |
| **Hold rate** | ThruPlay (hoặc 15s) / Lượt xem 3s | Video: đo thân video |

## Phễu tin nhắn → lead → đơn

| Chỉ số | Công thức | Ghi chú |
|---|---|---|
| **Cost per conversation (CPMsg)** | Spend / Số cuộc hội thoại mới | Theo số Meta báo; đối chiếu phần mềm chat |
| **Tỷ lệ xin số (Msg→Lead)** | Số SĐT thu được / Hội thoại mới | Đo chất lượng tệp + kịch bản trực page |
| **CPL** | Spend / Số lead (SĐT + LLK hợp lệ) | LLK = liên lạc khác (Zalo, gọi…) – đếm cột riêng |
| **Tỷ lệ chốt (Lead→Sale)** | Số đơn / Số lead | Đo chất lượng lead + năng lực sale |
| **CPA / CPS** | Spend / Số đơn (khách chốt) | Chỉ số ra quyết định chính |
| **AOV** | Doanh thu / Số đơn | Giá trị đơn trung bình |

## Hiệu quả doanh thu

| Chỉ số | Công thức | Ghi chú |
|---|---|---|
| **ROAS** | Doanh thu quy cho quảng cáo / Spend | Phụ thuộc cách quy nguồn (attribution) |
| **MER (Blended ROAS)** | Tổng doanh thu / Tổng chi quảng cáo mọi kênh | Chỉ số "sự thật" cấp doanh nghiệp, không phụ thuộc attribution |
| **Break-even ROAS** | 1 / Biên lợi nhuận gộp | Vd biên 40% → hòa vốn khi ROAS = 2,5 |
| **Break-even CPA** | AOV × Biên lợi nhuận gộp | CPA trần trước khi lỗ trên đơn đầu |
| **Target CPA** | Break-even CPA × (1 − biên lợi nhuận mong muốn) | Vd muốn giữ 30% lợi nhuận |
| **Marginal CPA** | ΔSpend / ΔĐơn khi tăng ngân sách | Chỉ số đúng để quyết định scale – CPA trung bình che giấu CPA cận biên |
| **LTV** | AOV × Số lần mua lặp lại × Biên | Tính cả liệu trình, tái khám nếu có |
| **LTV:CAC** | LTV / CPA | ≥ 3 thường coi là lành mạnh (heuristic) |

## Quy tắc diễn giải

1. **Luôn đọc theo chuỗi:** CPM → CTR → CPMsg → Msg→Lead → Lead→Sale → CPA. Chỉ số xấu đầu tiên trong chuỗi là nơi cần sửa.
2. **Quyết định ngân sách dựa trên CPA/đơn thật (từ Sheet doanh số), không dựa trên CPMsg.** CPMsg rẻ mà lead rác vẫn là lỗ.
3. **Cửa sổ dữ liệu tối thiểu:** không kết luận khi chưa đủ ~50 hội thoại hoặc chi tiêu ≥ 2–3× CPA mục tiêu (heuristic, confidence: medium).
4. **So sánh cùng kỳ:** so với 7 ngày trước / cùng thứ tuần trước, tránh so ngày thường với cuối tuần.
