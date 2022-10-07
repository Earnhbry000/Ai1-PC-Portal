#Function Set-WallPaper($Value)
 #{
  #  Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value
    #rundll32.exe user32.dll, UpdatePerUserSystemParameters
 #}
 
 
 #Set-WallPaper -value "C:\Users\Public\Desktop\A.png"


reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\Users\Public\Desktop\A.png /f
 Start-Sleep -s 10
 rundll32.exe user32.dll, UpdatePerUserSystemParameters, 0, $false
