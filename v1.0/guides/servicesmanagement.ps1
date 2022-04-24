$servicestodisable = @(
    "WpnUserService_3d12c"
    "UserDataSvc_3d12c" #for Mail/Calendar App Storage
    "UnistoreSvc_3d12c" #for Mail/Calendar App Storage
    "PimIndexMaintenanceSvc_3d12c"
    "OneSyncSvc_3d12c" #for Mail/Calendar App Syncing
    "MessagingService_3d12c"
    "CDPUserSvc_3d12c"
    "XboxNetApiSvc" #for Xbox Live Online Play
    "XboxGipSvc" #for Xbox Controller Management
    "XblGameSave"
    "XblAuthManager"
    "WSearch"
    "WpnService"
    "WMPNetworkSvc"
    "wlidsvc"
    "wisvc"
    "WdiSystemHost"
    "WdiServiceHost"
    "WbioSrvc" #for Windows Hello or Fingerprint Readers, etc
    "W32Time"
    "UsoSvc" #for Windows Update
    "UevAgentService"
    "tzautoupdate"
    "TrustedInstaller"
    "TrkWks"
    "TokenBroker"
    "TabletInputService"
    "stisvc" #for Scanning etc.
    "shpamsvc"
    "ShellHWDetection"
    "RemoteRegistry"
    "RemoteAccess"
    "RasMan"
    "PcaSvc"
    "NetTcpPortSharing"
    "MapsBroker"
    "lmhosts"
    "LicenseManager" #for Microsoft Store
    "lfsvc"
    "InstallService" #for Microsoft Store
    "DPS"
    "DisplayEnhancementService" #for Screen Brightness
    "DiagTrack"
    "diagnosticshub.standardcollector.service"
    "DeviceAssociationService"
    "bthserv" #for Bluetooth
    "AppVClient"
    "wuauserv" #for Windows Update
)

foreach ($service in $servicestodisable) {
    Write-Output "Changing Services to Disabled..."
    Get-Service -Name $service | Set-Service -StartupType Disabled
}

###########################################################################

$servicestomanual = @(
    ""
)

foreach ($service in $servicestomanual) {
    Write-Output "Changing Services to Manual..."
    Get-Service -Name $service | Set-Service -StartupType Manual
}

