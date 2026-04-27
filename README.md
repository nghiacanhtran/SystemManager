# WORKSPACE STRUCTURE – README (VERSION 2 - NORMALIZED)

1. OVERVIEW

---

Hệ thống thư mục này được thiết kế theo 3 nguyên tắc:

* Separation of Concerns: tách biệt rõ theo chức năng
* Lifecycle-based: quản lý theo vòng đời (Inbox → Active → Archive → Backup)
* Scalability: dễ mở rộng và maintain lâu dài

Mục tiêu:

* Tìm file nhanh
* Tránh trùng lặp
* Chuẩn hóa môi trường làm việc

2. ROOT STRUCTURE

---

00_INBOX           → Nơi tiếp nhận file
01_ACTIVE_PROJECTS → Dự án đang thực thi
02_DEVELOPMENT     → Công cụ & tài nguyên dev dùng chung
03_RESOURCES       → Tài liệu & tri thức
04_PERSONAL        → Dữ liệu cá nhân
05_ARCHIVE         → Lưu trữ dài hạn
06_BACKUP_SYNC     → Backup & đồng bộ
07_UTILITIES       → Công cụ hệ thống

---

3. CHI TIẾT QUAN TRỌNG (UPDATED)

---

3.1. 01_ACTIVE_PROJECTS – Execution Layer

Chứa:

* Tất cả project đang làm

Cấu trúc chuẩn:
Project_Name/
├── Docs
├── Code (Git repo chính)
├── Test
└── Deployment

Rule:

* Mỗi project phải self-contained
* Không tách code ra ngoài

---

3.2. 02_DEVELOPMENT – Dev Platform Layer (QUAN TRỌNG)

Đây là layer dễ bị hiểu sai nhất.

Mục đích:
→ Chứa mọi thứ dùng để build project (nhưng KHÔNG phải project)

Cấu trúc chuẩn:

02_DEVELOPMENT/
├── Code_Repositories/
│     ├── Internal_Repos
│     ├── Forked_Repos
│
├── Tools_Scripts/
│     ├── Automation_Scripts
│     ├── Utility_Tools
│     ├── Code_Snippets
│     └── Templates
│
├── Databases/
└── API_Collections/

---

3.2.1. Code_Repositories

Chứa:

* Repo bạn phát triển nhưng không thuộc 1 project cụ thể
* Library nội bộ
* Framework dùng chung

Ví dụ:

* auth-lib
* logging-lib
* shared-utils

KHÔNG chứa:

* Repo của project → phải nằm ở ACTIVE

---

3.2.2. Tools_Scripts

Chia thành 4 nhóm rõ ràng:

(1) Automation_Scripts

* Script build, deploy, CI/CD

(2) Utility_Tools  (QUAN TRỌNG - BỊ THIẾU TRONG README CŨ)

* Tool external hoặc tool nhỏ dùng trực tiếp

Ví dụ:

* markitdown
* pandoc
* ffmpeg
* jsonlint

Đặc điểm:

* Không phải bạn phát triển
* Clone về để dùng
* Có thể thay thế bất kỳ lúc nào

(3) Code_Snippets

* Đoạn code tái sử dụng nhanh

(4) Templates

* Boilerplate project
* Template code

---

3.3. 03_RESOURCES – Knowledge Layer

Chứa:

* Sách
* API docs
* Architecture reference
* UI/UX assets

Rule:

* Read-only càng nhiều càng tốt
* Không chỉnh sửa trực tiếp

---

3.4. 07_UTILITIES – System Layer

Chứa:

* Script setup máy
* Script quản lý workspace
* Config hệ thống

Ví dụ:
07_UTILITIES/
└── Maintenance/
└── workspace-bootstrap (git repo)

Rule:

* Đây là layer SYSTEM
* Không chứa dev tool

---

4. PHÂN BIỆT 4 LOẠI GIT REPO (QUAN TRỌNG)

---

Loại 1 — Project Repo
→ 01_ACTIVE_PROJECTS/Project/Code

Loại 2 — Internal Shared Repo
→ 02_DEVELOPMENT/Code_Repositories

Loại 3 — External Tool Repo
→ 02_DEVELOPMENT/Tools_Scripts/Utility_Tools

Loại 4 — System Tool Repo
→ 07_UTILITIES/Maintenance

---

5. RULE PHÂN LOẠI NHANH

---

Hỏi 1 câu duy nhất:

"Repo này phục vụ cái gì?"

* 1 project cụ thể → ACTIVE
* Nhiều project → DEVELOPMENT
* Tool bên ngoài → Utility_Tools
* Setup hệ thống → UTILITIES

---

6. SAI LẦM PHỔ BIẾN (ĐÃ GẶP)

---

❌ Nhét tất cả repo vào 02_DEVELOPMENT
→ mất context project

❌ Copy tool vào từng project
→ duplicate

❌ Không phân biệt Utility_Tools vs Code_Repositories
→ hỗn loạn layer

❌ Để external tool trong 07_UTILITIES
→ sai semantic

---

7. KẾT LUẬN

---

README version cũ thiếu layer:

→ Utility_Tools
→ phân biệt rõ repo types

Sau khi chuẩn hóa:

* ACTIVE = nơi tạo giá trị
* DEVELOPMENT = platform + tools
* RESOURCES = tri thức
* UTILITIES = hệ thống

Đây là cấu trúc gần với:
→ Software architecture (Application / Platform / Infrastructure)

Nếu giữ đúng boundary:

* Không bị trùng
* Không bị lẫn layer
* Scale lâu dài mà không vỡ cấu trúc
