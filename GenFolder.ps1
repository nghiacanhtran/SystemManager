$root = "E:\Workspace"   # sửa theo nhu cầu

$folders = @(
    "00_INBOX/Downloads",
    "00_INBOX/Screenshots",
    "00_INBOX/Quick_Notes",
    "00_INBOX/Temp_Files",

    "01_ACTIVE_PROJECTS/Client_Work/2024_ProjectA_CompanyX/01_Planning",
    "01_ACTIVE_PROJECTS/Client_Work/2024_ProjectA_CompanyX/02_Development",
    "01_ACTIVE_PROJECTS/Client_Work/2024_ProjectA_CompanyX/03_Testing",
    "01_ACTIVE_PROJECTS/Client_Work/2024_ProjectA_CompanyX/04_Documentation",
    "01_ACTIVE_PROJECTS/Client_Work/2024_ProjectA_CompanyX/05_Deployment",

    "01_ACTIVE_PROJECTS/Client_Work/2024_ProjectB_CompanyY",

    "01_ACTIVE_PROJECTS/Personal_Projects/Mobile_App_Ideas",
    "01_ACTIVE_PROJECTS/Personal_Projects/Web_Experiments",
    "01_ACTIVE_PROJECTS/Personal_Projects/Open_Source_Contributions",

    "01_ACTIVE_PROJECTS/Learning_Projects/Tutorials",
    "01_ACTIVE_PROJECTS/Learning_Projects/Courses",
    "01_ACTIVE_PROJECTS/Learning_Projects/Practice_Code",

    "02_DEVELOPMENT/Code_Repositories/Git_Repos",
    "02_DEVELOPMENT/Code_Repositories/Backup_Repos",
    "02_DEVELOPMENT/Code_Repositories/Archive_Repos",

    "02_DEVELOPMENT/Tools_Scripts/Automation_Scripts",
    "02_DEVELOPMENT/Tools_Scripts/Utility_Tools",
    "02_DEVELOPMENT/Tools_Scripts/Code_Snippets",
    "02_DEVELOPMENT/Tools_Scripts/Templates",

    "02_DEVELOPMENT/Databases/SQL_Scripts",
    "02_DEVELOPMENT/Databases/Sample_Data",
    "02_DEVELOPMENT/Databases/DB_Backups",

    "02_DEVELOPMENT/API_Collections/Postman_Collections",
    "02_DEVELOPMENT/API_Collections/API_Documentation",
    "02_DEVELOPMENT/API_Collections/Test_Data",

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

    "04_PERSONAL/Documents/Identity_Legal",
    "04_PERSONAL/Documents/Financial",
    "04_PERSONAL/Documents/Medical_Health",
    "04_PERSONAL/Documents/Education_Certificates",
    "04_PERSONAL/Documents/Insurance",

    "04_PERSONAL/Career_Development/Resume_CV",
    "04_PERSONAL/Career_Development/Portfolio",
    "04_PERSONAL/Career_Development/Interview_Prep",
    "04_PERSONAL/Career_Development/Professional_Network",
    "04_PERSONAL/Career_Development/Salary_Negotiations",

    "04_PERSONAL/Media_Entertainment/Photos/2024_Family",
    "04_PERSONAL/Media_Entertainment/Photos/2024_Travel",
    "04_PERSONAL/Media_Entertainment/Photos/2024_Work_Events",
    "04_PERSONAL/Media_Entertainment/Videos",
    "04_PERSONAL/Media_Entertainment/Music",
    "04_PERSONAL/Media_Entertainment/Games",

    "04_PERSONAL/Hobbies_Interests/Side_Businesses",
    "04_PERSONAL/Hobbies_Interests/Sports_Fitness",
    "04_PERSONAL/Hobbies_Interests/Travel_Planning",
    "04_PERSONAL/Hobbies_Interests/Personal_Projects",

    "05_ARCHIVE/Completed_Projects/2023_Projects",
    "05_ARCHIVE/Completed_Projects/2022_Projects",
    "05_ARCHIVE/Completed_Projects/Older_Projects",

    "05_ARCHIVE/Old_Jobs_Companies/CompanyA_2020-2022",
    "05_ARCHIVE/Old_Jobs_Companies/CompanyB_2018-2020",

    "05_ARCHIVE/Deprecated_Code/Legacy_Systems",
    "05_ARCHIVE/Deprecated_Code/Outdated_Libraries",
    "05_ARCHIVE/Deprecated_Code/Failed_Experiments",

    "06_BACKUP_SYNC/Cloud_Sync/Google_Drive",
    "06_BACKUP_SYNC/Cloud_Sync/Dropbox",
    "06_BACKUP_SYNC/Cloud_Sync/OneDrive",

    "06_BACKUP_SYNC/Local_Backups/Daily_Backups",
    "06_BACKUP_SYNC/Local_Backups/Weekly_Backups",
    "06_BACKUP_SYNC/Local_Backups/Monthly_Backups",

    "06_BACKUP_SYNC/System_Images/OS_Backups",
    "06_BACKUP_SYNC/System_Images/VM_Images",

    "07_UTILITIES/Software_Installers/Development_Tools",
    "07_UTILITIES/Software_Installers/System_Utilities",
    "07_UTILITIES/Software_Installers/License_Keys",

    "07_UTILITIES/Configuration_Files/IDE_Settings",
    "07_UTILITIES/Configuration_Files/Environment_Configs",
    "07_UTILITIES/Configuration_Files/System_Configs",

    "07_UTILITIES/Maintenance/System_Logs",
    "07_UTILITIES/Maintenance/Performance_Reports",
    "07_UTILITIES/Maintenance/Cleanup_Scripts"
)

foreach ($folder in $folders) {
    $path = Join-Path $root $folder
    New-Item -ItemType Directory -Path $path -Force | Out-Null
}

Write-Host "Folder structure created successfully."