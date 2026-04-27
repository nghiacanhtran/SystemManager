$root = "E:\Workspace"   # chỉnh theo nhu cầu

$folders = @(

    # ========================
    # 00_INBOX
    # ========================
    "00_INBOX/Downloads",
    "00_INBOX/Screenshots",
    "00_INBOX/Quick_Notes",
    "00_INBOX/Temp_Files",

    # ========================
    # 01_ACTIVE_PROJECTS
    # ========================
    "01_ACTIVE_PROJECTS/Client_Work",
    "01_ACTIVE_PROJECTS/Personal_Projects",
    "01_ACTIVE_PROJECTS/Learning_Projects",

    # Sample project (template)
    "01_ACTIVE_PROJECTS/_TEMPLATE_PROJECT/Docs",
    "01_ACTIVE_PROJECTS/_TEMPLATE_PROJECT/Code",
    "01_ACTIVE_PROJECTS/_TEMPLATE_PROJECT/Test",
    "01_ACTIVE_PROJECTS/_TEMPLATE_PROJECT/Deployment",

    # ========================
    # 02_DEVELOPMENT
    # ========================

    # Repositories
    "02_DEVELOPMENT/Code_Repositories/Internal_Repos",
    "02_DEVELOPMENT/Code_Repositories/Forked_Repos",
    "02_DEVELOPMENT/Code_Repositories/Archive_Repos",

    # Tools & Scripts
    "02_DEVELOPMENT/Tools_Scripts/Automation_Scripts",
    "02_DEVELOPMENT/Tools_Scripts/Utility_Tools",
    "02_DEVELOPMENT/Tools_Scripts/Code_Snippets",
    "02_DEVELOPMENT/Tools_Scripts/Templates",

    # Database
    "02_DEVELOPMENT/Databases/SQL_Scripts",
    "02_DEVELOPMENT/Databases/Sample_Data",
    "02_DEVELOPMENT/Databases/DB_Backups",

    # API
    "02_DEVELOPMENT/API_Collections/Postman_Collections",
    "02_DEVELOPMENT/API_Collections/Test_Data",

    # ========================
    # 03_RESOURCES
    # ========================
    "03_RESOURCES/Documentation/Technical_Specs",
    "03_RESOURCES/Documentation/API_Docs",
    "03_RESOURCES/Documentation/Architecture_Diagrams",
    "03_RESOURCES/Documentation/User_Manuals",

    "03_RESOURCES/Learning_Materials/Books_PDFs",
    "03_RESOURCES/Learning_Materials/Video_Courses",
    "03_RESOURCES/Learning_Materials/Articles_Bookmarks",
    "03_RESOURCES/Learning_Materials/Certification_Materials",

    "03_RESOURCES/Design_Assets/UI_UX_Resources",
    "03_RESOURCES/Design_Assets/Icons_Images",
    "03_RESOURCES/Design_Assets/Fonts",
    "03_RESOURCES/Design_Assets/Color_Palettes",

    "03_RESOURCES/Licenses_Legal/Software_Licenses",
    "03_RESOURCES/Licenses_Legal/Contracts",
    "03_RESOURCES/Licenses_Legal/NDAs",

    # ========================
    # 04_PERSONAL
    # ========================
    "04_PERSONAL/Documents/Identity_Legal",
    "04_PERSONAL/Documents/Financial",
    "04_PERSONAL/Documents/Education_Certificates",

    "04_PERSONAL/Career_Development/Resume_CV",
    "04_PERSONAL/Career_Development/Portfolio",

    "04_PERSONAL/Media/Photos",
    "04_PERSONAL/Media/Videos",

    # ========================
    # 05_ARCHIVE
    # ========================
    "05_ARCHIVE/Projects",
    "05_ARCHIVE/Old_Jobs",
    "05_ARCHIVE/Deprecated_Code",

    # ========================
    # 06_BACKUP_SYNC
    # ========================
    "06_BACKUP_SYNC/Cloud",
    "06_BACKUP_SYNC/Local",
    "06_BACKUP_SYNC/System_Images",

    # ========================
    # 07_UTILITIES
    # ========================

    # Installers
    "07_UTILITIES/Software_Installers/Dev_Tools",
    "07_UTILITIES/Software_Installers/System_Tools",

    # Config
    "07_UTILITIES/Configuration/IDE",
    "07_UTILITIES/Configuration/Environment",

    # System Scripts (IMPORTANT)
    "07_UTILITIES/Maintenance/workspace-bootstrap",
    "07_UTILITIES/Maintenance/cleanup",
    "07_UTILITIES/Maintenance/logs"

)

foreach ($folder in $folders) {
    $path = Join-Path $root $folder
    if (-not (Test-Path $path)) {
        New-Item -ItemType Directory -Path $path | Out-Null
    }
}

Write-Host "Workspace V2 structure created successfully."