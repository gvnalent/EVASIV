@echo off
chcp 65001 >nul
echo.
echo $$$$$$$$\ $$\    $$\  $$$$$$\   $$$$$$\  $$$$$$\ $$\    $$\ 
echo $$  _____|$$ |   $$ |$$  __$$\ $$  __$$\ \_$$  _|$$ |   $$ |
echo $$ |      $$ |   $$ |$$ /  $$ |$$ /  \__|  $$ |  $$ |   $$ |
echo $$$$$\    \$$\  $$  |$$$$$$$$ |\$$$$$$\    $$ |  \$$\  $$  |
echo $$  __|    \$$\$$  / $$  __$$ | \____$$\   $$ |   \$$\$$  / 
echo $$ |        \$$$  /  $$ |  $$ |$$\   $$ |  $$ |    \$$$  /  
echo $$$$$$$$\    \$  /   $$ |  $$ |\$$$$$$  |$$$$$$\    \$  /   
echo \________|    \_/    \__|  \__| \______/ \______|    \_/    
echo.
echo EVASIV Cleaner; Click any key to start cleaning
pause >nul

vssadmin delete shadows /all /Quiet
sc stop cpuz150
sc stop vgt
sc stop vgrl
sc stop vgk
sc stop vgc
sc delete vgrl
sc delete vgk
sc delete vgc
sc delete vg
sc delete cpuz150
sc config wuauserv start= disabled
net stop wuauserv
sc config bits start= disabled
net stop bits
sc config dosvc start= disabled
net stop dosvc
sc config UsoSvc start= disabled
net stop UsoSvc
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vgk\Security" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vgk" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vgc\Security" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vgc" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Riot Vanguard" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\VALORANT-Win64-Shipping.exe" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{FA99DFC7-6AC2-453A-A5E2-5E2AFF4507BD}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{F4E57C4B-2036-45F0-A9AB-443BCFE33D9F}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{F2A1CB5A-E3CC-4A2E-AF9D-505A7009D442}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CAA59E3C-4792-41A5-9909-6A6A8D32490E}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{BCB48336-4DDD-48FF-BB0B-D3190DACB3E2}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{B267E3AD-A825-4A09-82B9-EEC22AA3B847}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{A3D53349-6E61-4557-8FC7-0028EDCEEBF6}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{9E04CAB2-CC14-11DF-BB8C-A2F1DED72085}\Count" /f
reg delete "HKEY_CLASSES_ROOT\riotclient" /f
del /q /f "%systemdrive%\$Recycle.bin"
del /q /f "D:\System Volume Information\tracking.log"
del /q /f "E:\System Volume Information\tracking.log"
del /q /f "F:\System Volume Information\tracking.log"
del /q /f "%systemdrive%\Windows\win.ini"
del /q /f "%systemdrive%\Windows\vgkbootstatus.dat"
del /q /f "%systemdrive%\Windows\memory.dmp"
del /q /f "%systemdrive%\Windows\WindowsUpdate.log"
del /q /f "%systemdrive%\Windows\System32\LogFiles\WMI\Wifi.etl"
del /q /f "%systemdrive%\Windows\System32\LogFiles\WMI\RadioMgr.etl"
del /q /f "%systemdrive%\Windows\System32\LogFiles\WMI\NtfsLog.etl"
del /q /f "%systemdrive%\Windows\System32\LogFiles\WMI\NetCore.etl"
del /q /f "%systemdrive%\Windows\System32\LogFiles\WMI\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace.etl"
del /q /f "%systemdrive%\Windows\System32\LogFiles\WMI\LwtNetLog.etl"
del /q /f "%systemdrive%\Windows\ServiceProfiles\NetworkService\NTUSER.DAT"
del /q /f "%systemdrive%\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\Windows\qwavecache.dat"
del /q /f "%systemdrive%\Windows\Logs\DISM\dism.log"
del /q /f "%systemdrive%\Windows\DirectX.log"
del /q /f "%systemdrive%\Users\Public\Desktop\VALORANT.lnk"
del /q /f "%USERPROFILE%\ntuser.ini"
del /q /f "%USERPROFILE%\ntuser.dat.LOG2"
del /q /f "%USERPROFILE%\ntuser.dat.LOG1"
del /q /f "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
del /q /f "%USERPROFILE%\NTUSER.DAT"
del /q /f "%USERPROFILE%\AppData\Local\UnrealEngine\4.23\Saved\Config\WindowsClient\Manifest.ini"
del /q /f "%USERPROFILE%\AppData\Local\Microsoft\Vault\UserProfileRoaming\Latest.dat"
del /q /f "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfiguration.ini"
del /q /f "%USERPROFILE%\AppData\Local\IconCache.db"
del /q /f "%USERPROFILE%\AppData\Local\AC\INetCookies\ESE\container.dat"
del /q /f "%systemdrive%\System Volume Information\tracking.log"
del /q /f "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Riot Games\VALORANT.lnk"
del /q /f "%systemdrive%\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
del /q /f "%systemdrive%\Config.Msi"
del /q /f "%systemdrive%\Riot Games\VALORANT\live\Manifest_NonUFSFiles_Win64.txt"
del /q /f "%systemdrive%\Riot Games\VALORANT\live\Engine\Binaries\ThirdParty\CEF3\Win64\icudtl.dat"
del /q /f "%systemdrive%\Riot Games\Riot Client\UX\natives_blob.bin"
del /q /f "%systemdrive%\Riot Games\Riot Client\UX\icudtl.dat"
del /q /f "%systemdrive%\Riot Games\Riot Client\UX\Plugins\plugin-manifest.json"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\Temporary Internet Files"
RMDIR /S /Q "%systemdrive%\Windows\logs\CBS"
RMDIR /S /Q "%systemdrive%\Windows\Temp"
RMDIR /S /Q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\ScreenTime"
RMDIR /S /Q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Vault\UserProfileRoaming"
RMDIR /S /Q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\D3DSCache"
RMDIR /S /Q "%systemdrive%\Windows\System32\config\TxR"
RMDIR /S /Q "%systemdrive%\Windows\System32\WDI\LogFiles\StartupInfo"
RMDIR /S /Q "%systemdrive%\Windows\System32\WDI\LogFiles"
RMDIR /S /Q "%systemdrive%\Windows\SoftwareDistribution\"
RMDIR /S /Q "%systemdrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\deliveryOptimization\Logs"
RMDIR /S /Q "%systemdrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\State"
RMDIR /S /Q "%USERPROFILE%\Local Settings\Riot Games"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Riot Games"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\Microsoft\Protect"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\VirtualStore"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\VALORANT"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\UnrealEngine"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Temp"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\DeviceSearchCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\ConstraintIndex"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WebCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WER"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCookies"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\IEDownloadHistory"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\IECompatUaCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\IECompatCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\Caches"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Terminal Server Client\Cache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Internet Explorer\CacheStorage"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\D3DSCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\CrashDumps"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\ConnectedDevicesPlatform"
RMDIR /S /Q "%systemdrive%\Riot Games"
RMDIR /S /Q "%systemdrive%\ProgramData\Riot Games"
RMDIR /S /Q "%systemdrive%\ProgramData\NVIDIA Corporation\NV_Cache"
RMDIR /S /Q "%systemdrive%\ProgramData\NVIDIA Corporation\Drs\nvAppTimestamps"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\Windows\WER"
RMDIR /S /Q "%systemdrive%\ProgramData\Application Data\Riot Games"
RMDIR /S /Q "%systemdrive%\Program Files\Riot Vanguard"
RMDIR /S /Q "%systemdrive%\Program Files\Riot Games"
RMDIR /S /Q "%systemdrive%\PerfLogs"
del /q /f "%systemdrive%\desktop.ini"
del /q /f "%systemdrive%\Windows\INF\setupapi.setup.log"
del /q /f "%systemdrive%\Windows\INF\setupapi.dev.log"
del /q /f "%systemdrive%\Users\Public\Libraries\collection.dat"
del /q /f "%systemdrive%\Users\Default\NTUSER.DAT"
del /q /f "%systemdrive%\System Volume Information\WPSettings.dat"
del /q /f "%systemdrive%\Recovery\ntuser.sys"
del /q /f "%systemdrive%\ProgramData\ntuser.pol"
del /q /f "%systemdrive%\Windows\System32\restore\MachineGuid.txt"
RMDIR /S /Q "%systemdrive%\Users\Public\Shared Files"
RMDIR /S /Q "%systemdrive%\Users\Public\Libraries"
RMDIR /S /Q "%systemdrive%\System Volume Information\IndexerVolumeGuid"
RMDIR /S /Q "%systemdrive%\MSOCache"
netsh winsock reset"
taskkill /f /im epicgameslauncher.exe"
taskkill /f /im FortniteLauncher.exe"
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe"
taskkill /f /im FortniteClient-Win64-Shipping_BE.exe"
taskkill /f /im FortniteClient-Win64-Shipping.exe"
del /q /f "%systemdrive%\Windows\Minidump\*.*"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\Origin"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Origin"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Ubisoft Game Launcher\spool"
RMDIR /S /Q "%systemdrive%\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\savegames"
RMDIR /S /Q "%systemdrive%\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\logs"
RMDIR /S /Q "%systemdrive%\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\cache"
RMDIR /S /Q "%localappdata%\EpicGamesLauncher"
del /f /a:h /a:a /q "C:\Program Files (x86)\Steam\config\loginusers.vdf"
del /f /a:h /a:a /q %systemdrive%\desktop.ini"
del /f /a:h /a:a /q %systemdrive%\Intel\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\temp\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\appcompat\appraiser\AltData\Appraiser_Data.ini"
del /f /a:h /a:a /q "%systemdrive%\Windows\WindowsUpdate.log"
del /f /a:h /a:a /q "%systemdrive%\Windows\TEMP\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\System32\spp\store\2.0\cache\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\XboxLive\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\System32\WDI\LogFiles\StartupInfo\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\System32\LogFiles\WMI\RtBackup"
del /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCookies\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCache\Content.IE5\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCache\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\Public\Libraries\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\Logs\*.*"
del /f /a:h /a:a /q "%systemdrive%\Windows\CbsTemp\*.*"
del /f /a:h /a:a /q "%systemdrive%\Users\Public\Libraries\collection.dat\*.*"
del /f /a:h /a:a /q "%systemdrive%\Users\Public\*.*"
del /f /a:h /a:a /q "%systemdrive%\Users\All Users\NVIDIA\*.*"
del /f /a:h /a:a /q "%systemdrive%\Users\All Users\Microsoft\Windows\WER\Temp\WER95DF.tmp.mdmp"
del /f /a:h /a:a /q "%systemdrive%\Users\All Users\Microsoft\Windows\WER\Temp\WER5CC2.tmp.xml"
del /f /a:h /a:a /q "%USERPROFILE%\ntuser.dat.LOG2"
del /f /a:h /a:a /q "%USERPROFILE%\ntuser.dat.LOG1"
del /f /a:h /a:a /q "%USERPROFILE%\Videos\Captures\desktop.ini"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Notepad++\backup\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations\b05132b02959bc64.automaticDestinations-ms\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\Autom\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\CloudStore\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\EasyAntiCheat\*.*
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\UnrealEngine\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Temp\ecache.bin"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Temp\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Speech Graphics\Carnival\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\PlaceholderTileLogoFolder\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\LocalState\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.ZuneVideo_8wekyb3d8bbwe\LocalState\Database\anonymous\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\LocalCache\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\Microsoft\CryptnetUrlCache\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\INetHistory\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\INetCookies\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\TempState\CortanaUnifiedTileMoccc(
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\TempState\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\Settings\settings.dat.LOG1\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AppData\Indexed DB\edb.log\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AppData\Indexed DB\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AC\INetCache\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AC\AppCache\YVV2MEXU\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.SkypeApp_kzf8qxf38zg5c\LocalState\DiagOutputDir\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AppData\User\Default\Indexed DB\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\MicrosoftEdge\User\Default\Recovery\Active\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\NVIDIA Corporation\GfeSDK\FORTNI~1.LOG"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\NVIDIA Corporation\GfeSDK\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\NVIDIA Corporation\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.dat\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WebCache\V0100024.log"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WebCache\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WER\ERC\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\UsrClass.dat.LOG2"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\UsrClass.dat.LOG1"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\SettingSync\remotemetastore\v1\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\SettingSync\metastore\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\Safety\edge\remote\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\IE\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\History\History.IE5\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\History\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\settings\Personal\logUploaderSettings_temp.ini\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\settings\Personal\logUploaderSettings.ini\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\logs\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Internet Explorer\CacheStorage\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Feeds\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Feeds Cache"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\FortniteGame\Saved\Logs\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\FortniteGame\Saved\LMS\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\FortniteGame\Saved\Demos\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\FortniteGame\Saved\Cloud\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\EpicGamesLauncher\Saved\webcache\GPUCache\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\EpicGamesLauncher\Saved\webcache\Cookies"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\EpicGamesLauncher\Saved\webcache\Cache\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\EpicGamesLauncher\Saved\Logs\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\CrashDumps\BACKGR~2.DMP"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Comms\Unistore\data\temp\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Comms\Unistore\data\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Comms\UnistoreDB\USS.jtx\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\AMD\DxCache\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*.*"
del /f /a:h /a:a /q "%USERPROFILE%\AppData\LocalLow\Microsoft\CryptnetUrlCache\*.*"
del /f /a:h /a:a /q "%systemdrive%\System Volume Information\*.*"
del /f /a:h /a:a /q "%systemdrive%\Recovery\ntuser.sys"
del /f /a:h /a:a /q "%systemdrive%\Recovery\*.*"
del /f /a:h /a:a /q "%systemdrive%\ProgramData\USOShared\Logs\*.*"
del /f /a:h /a:a /q "%systemdrive%\ProgramData\NVIDIA\*.*"
del /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\XboxLive\NSALCache\*.*"
del /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp\*.*"
del /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
del /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\ClipSVC\*.*"
del /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\AppRepository\Packages\Microsoft.XboxGameOverlay_1.42.4001.0_x64__8wekyb3d8bbwe\ActivationStore.dat"
del /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Diagnosis\EventStore.db-wal"
del /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\Rules\*.*"
del /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\NetworksCache\*.*"
del /f /a:h /a:a /q "%systemdrive%\Program Files\WindowsApps\Microsoft.LanguageExperiencePacken-GB_17763.9.22.0_neutral__8wekyb3d8bbwe\Windows\System32\driverstore\*.*"
del /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*"
del /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files\*.*"
del /f /a:h /a:a /q "%ProgramFiles(x86)%\EasyAntiCheat\EasyAntiCheat.sys\*.*"
del /f /a:h /a:a /q "%ProgramFiles(x86)%\Common Files\BattlEye\BEDaisy.sys\*.*"
del /f /a:h /a:a /q "%ProgramFiles(x86)%\Common Files\BattlEye\*.*"
del /f /a:h /a:a /q "%ProgramFiles(x86)%\AMD\CNext\CCCSlim\*.*"
del /f /a:h /a:a /q "%systemdrive%\MSOCache\{71230000-00E2-0000-1000-00000000}\Setup.dat\*.*"
del /f /a:h /a:a /q "%systemdrive%\MSOCache\*.*"
del /f /a:h /a:a /q "%systemdrive%\Intel\*.*"
del /f /a:h /a:a /q "%systemdrive%\Amd\*.*"
RMDIR /S /Q f:\$Recycle.Bin
RMDIR /S /Q e:\$Recycle.Bin
RMDIR /S /Q d:\$Recycle.Bin
RMDIR /S /Q %systemdrive%\$Recycle.Bin
RMDIR /S /Q "%systemdrive%\desktop.ini"
RMDIR /S /Q "%systemdrive%\Windows\temp"
RMDIR /S /Q "%systemdrive%\Windows\System32\LogFiles\WMI\RtBackup"
RMDIR /S /Q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCookies"
RMDIR /S /Q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCache\Content.IE5"
RMDIR /S /Q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData"
RMDIR /S /Q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content"
RMDIR /S /Q "%systemdrive%\Windows\Public\Libraries"
RMDIR /S /Q "%systemdrive%\Windows\Prefetch"
RMDIR /S /Q "%systemdrive%\Windows\Logs"
RMDIR /S /Q "%systemdrive%\Users\Public\Libraries\collection.dat"
RMDIR /S /Q "%systemdrive%\Users\Public"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\UnrealEngineLauncher"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Speech Graphics\Carnival"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\TempState"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\LocalCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AppData\Indexed DB"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\IE\AW1C2HQS\"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\History\History.IE5"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\settings\Personal"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Feeds"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\FortniteGame"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\BattlEye"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\EasyAntiCheat"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Publishers"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Programs\Common"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Comms"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\CEF"
RMDIR /S /Q "%systemdrive%\Recovery\ntuser.sys"
RMDIR /S /Q "%systemdrive%\Recovery"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\Diagnosis\EventStore.db-wal"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\Diagnosis\DownloadedSettings"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\Rules"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\NetworksCache"
RMDIR /S /Q "%systemdrive%\ProgramData\AMD\PPC\apprecord.csv\"
RMDIR /S /Q "%systemdrive%\MSOCache\{71230000-00E2-0000-1000-00000000}\Setup.dat"
RMDIR /S /Q "%systemdrive%\Intel"
RMDIR /S /Q "%localappdata%\UnrealEngine"
RMDIR /S /Q "%localappdata%\FortniteGame"
C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe  Remove-Item -Path 'HKLM:SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\Unmanaged\*' -Recurs
C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe  Remove-Item -Path 'HKLM:SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Nla\Cache\*' -Recurs
del /q "C:\Windows\INF\*.*" 
REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments\ /v SaveZoneInformation /t REG_DWORD /d 1 /f"
RMDIR /S /Q "%localappdata%\Battle.net"
RMDIR /S /Q "%localappdata%\Blizzard Entertainment"
RMDIR /S /Q "%appdata%\Battle.net"
RMDIR /S /Q "%programdata%\Battle.net"
RMDIR /S /Q "%programdata%\Blizzard Entertainment"
RMDIR /S /Q "%USERPROFILE%\Documents\Call of Duty Modern Warfare"
reg delete "HKLM\Software\WOW6432Node\Blizzard Entertainment" /f
reg delete "HKCU\Software\Blizzard Entertainment" /f"
