# WORKSPACE STRUCTURE – README

1. OVERVIEW

---

Hệ thống thư mục này được thiết kế theo 3 nguyên tắc chính:

* Separation of Concerns: tách biệt rõ theo chức năng
* Lifecycle-based: quản lý theo vòng đời (Inbox → Active → Archive → Backup)
* Scalability: dễ mở rộng khi số lượng project và tài nguyên tăng

Mục tiêu:

* Tìm file nhanh
* Giảm lộn xộn
* Chuẩn hóa môi trường làm việc (development + personal)

1. ROOT STRUCTURE

---

00_INBOX           → Nơi tiếp nhận file  
01_ACTIVE_PROJECTS → Dự án đang thực thi  
02_DEVELOPMENT     → Tài nguyên dev dùng chung  
03_RESOURCES       → Tài liệu & tri thức  
04_PERSONAL        → Quản lý cá nhân  
05_ARCHIVE         → Lưu trữ dài hạn  
06_BACKUP_SYNC     → Backup & đồng bộ  
07_UTILITIES       → Công cụ hệ thống  

1. CHI TIẾT TỪNG FOLDER

---

3.1. 00_INBOX – Intake Layer

* Mục đích: chứa file chưa phân loại
* Không lưu lâu dài

Subfolders:

* Downloads
* Screenshots
* Quick_Notes
* Temp_Files

Nguyên tắc:

* Dọn định kỳ (daily/weekly)
* Luôn move file về đúng nơi sau khi xử lý

3.2. 01_ACTIVE_PROJECTS – Execution Layer

* Mục đích: chứa toàn bộ project đang hoạt động

Cấu trúc:

* Client_Work
* Personal_Projects
* Learning_Projects

Bên trong mỗi project:
Project_Name/
├── Docs
├── Code
├── Test
└── Deployment

Nguyên tắc:

* Mỗi project phải self-contained
* Không để file project rải rác ở nơi khác

3.3. 02_DEVELOPMENT – Reusable Dev Assets

* Mục đích: chứa tài nguyên kỹ thuật dùng lại

Subfolders:

* Code_Repositories
* Tools_Scripts
* Databases
* API_Collections

Chứa:

* Script automation
* Code templates
* Snippets
* SQL scripts chung

Nguyên tắc:

* Chỉ chứa reusable assets
* Không chứa logic riêng của project

3.4. 03_RESOURCES – Knowledge Base

* Mục đích: lưu tài liệu tham khảo

Subfolders:

* Documentation
* Learning_Materials
* Design_Assets
* Licenses_Legal

Chứa:

* Sách, PDF
* API docs
* Architecture reference
* UI/UX assets

Nguyên tắc:

* Chủ yếu read-only
* Không chỉnh sửa trực tiếp

3.5. 04_PERSONAL – Life Management

* Mục đích: quản lý dữ liệu cá nhân

Subfolders:

* Documents
* Career_Development
* Media_Entertainment
* Hobbies_Interests

Nguyên tắc:

* Phân loại rõ theo domain cá nhân
* File nhạy cảm cần bảo mật

3.6. 05_ARCHIVE – Cold Storage

* Mục đích: lưu dữ liệu không còn active

Subfolders:

* Completed_Projects
* Old_Jobs_Companies
* Deprecated_Code

Nguyên tắc:

* Không chỉnh sửa
* Chỉ dùng để tra cứu

3.7. 06_BACKUP_SYNC – Backup Layer

* Mục đích: đảm bảo an toàn dữ liệu

Subfolders:

* Cloud_Sync
* Local_Backups
* System_Images

Nguyên tắc:

* Backup định kỳ
* Không làm việc trực tiếp trên backup

3.8. 07_UTILITIES – System Tools

* Mục đích: công cụ hệ thống

Subfolders:

* Software_Installers
* Configuration_Files
* Maintenance

Chứa:

* Installer
* Config IDE / environment
* Script setup / cleanup

Nguyên tắc:

* Không chứa dữ liệu nghiệp vụ
* Dùng cho setup hệ thống

1. WORKFLOW CHUẨN

---

Bước 1 – Intake:
File mới → 00_INBOX

Bước 2 – Processing:

* Project → 01_ACTIVE_PROJECTS
* Tài liệu → 03_RESOURCES
* Cá nhân → 04_PERSONAL

Bước 3 – Archiving:
Project hoàn thành → 05_ARCHIVE

Bước 4 – Backup:
Dữ liệu → 06_BACKUP_SYNC

1. PHÂN BIỆT 3 FOLDER QUAN TRỌNG

---

01_ACTIVE_PROJECTS:

* Chứa cái bạn đang làm
* Có deadline
* Gắn với 1 project cụ thể

02_DEVELOPMENT:

* Công cụ để bạn làm việc
* Dùng lại nhiều lần
* Không thuộc riêng project nào

03_RESOURCES:

* Tri thức để tham khảo
* Chủ yếu đọc
* Không trực tiếp tạo ra output

Rule nhanh:

* Project-specific → ACTIVE
* Reusable → DEVELOPMENT
* Reference → RESOURCES

1. QUY TẮC GIT REPOSITORY

---

Repo thuộc project:
→ 01_ACTIVE_PROJECTS/Project/Code

Repo dùng chung:
→ 02_DEVELOPMENT/Code_Repositories

Repo hệ thống (script init, setup):
→ 07_UTILITIES/Maintenance

Rule:

* 1 project → 1 repo nằm trong project
* Tool dùng chung → DEV
* System tool → UTILITIES

1. NAMING CONVENTION

---

Folder:

* snake_case hoặc PascalCase

Project:
YYYY_ProjectName_Company

File:
YYYY-MM-DD_description.ext

1. RULES QUAN TRỌNG

---

1. Không để file lâu trong INBOX

2. Mỗi project phải self-contained

3. Không duplicate tài nguyên

4. Depth tối đa: 3–4 level

5. Backup định kỳ

6. Phân biệt rõ 3 layer: Active – Dev – Resource

7. CHECKLIST HÀNG TUẦN

---

* INBOX đã dọn chưa?
* File có nằm đúng folder không?
* Có file trùng không?
* Backup đã chạy chưa?

1. KẾT LUẬN

---

Hệ thống này tối ưu cho:

* Developer
* Knowledge worker
* Quản lý project + tài liệu + cá nhân

Nếu sử dụng đúng:

* Giảm thời gian tìm file
* Giảm cognitive load
* Tăng hiệu suất làm việc
