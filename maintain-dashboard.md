# 🛠️ ML Prep 2026 Dashboard Maintenance Log

## Overview
This file tracks updates, rationale, and strategic decisions made to the ML Prep 2026 dashboard. It supports reproducibility, recruiter polish, and academic alignment.

---

## 📅 2025-09-27 — Initial Deployment
- Created `index.html` with collapsible sections and iconography.
- Linked roadmap, subject mapping, anomaly detector, and archive.
- Rationale: Establish stakeholder-ready landing page for portfolio visibility.

---

## 📅 2025-09-27 — Iconography & Folder Naming Refinement
- Renamed `archive/` to `previous-works/` for improved recruiter clarity and legacy signaling.
- Standardized section icons in `index.html`:
  - 🧭 for roadmap
  - 📚 for subject mapping
  - 🧠 for ML case studies
  - 🗂️ for previous works
  - 🎯 for dashboards
- Reordered collapsible sections to prioritize roadmap and academic alignment.
- Rationale: Enhances recruiter scannability, supports academic continuity, and aligns with stakeholder-facing polish goals.

---

## 📅 2025-10-05 — Added Visual KPIs Section
- New `<details>` block in `index.html` for dashboards.
- Linked `dashboard.html` with Seaborn visualizations.
- Rationale: Showcase data storytelling and stakeholder impact.

---

## 📅 2025-10-12 — Folder Structure Update
- Renamed `previous-works/` to `legacy-projects/` (if applicable).
- Updated links in `index.html` and `subject-mapping.md`.
- Rationale: Improve recruiter understanding of legacy work.

---

## 📅 2025-10-20 — Theme Consistency
- Added shared `style.css` for consistent layout across `.html` files.
- Rationale: Enhance visual polish and reduce maintenance overhead.

---

## 🔮 Planned Updates
- Add semester-specific dashboards (`sem1-overview.html`, etc.)
- Integrate Streamlit visualizations with thumbnail previews.
- Scaffold breadcrumb navigation for smoother UX.
- Link `maintain-dashboard.md` from `index.html` with a 📓 icon for transparency.
