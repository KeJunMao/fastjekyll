clear
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$Host.UI.RawUI.WindowTitle = "FastJekyll"
$exe = "rubyinstaller-devkit-2.5.1-1-x64"
$url = "https://github.com/oneclick/rubyinstaller2/releases/download/rubyinstaller-2.5.1-1/$exe.exe"
$file = "$PSScriptRoot\$exe.exe"
$fileis = Test-Path $file
$text = '

 ______        _       _      _          _ _ 
|  ____|      | |     | |    | |        | | |
| |__ __ _ ___| |_    | | ___| | ___   _| | |
|  __/ _` / __| __|   | |/ _ \ |/ / | | | | |
| | | (_| \__ \ || |__| |  __/   <| |_| | | |
|_|  \__,_|___/\__\____/ \___|_|\_\\__, |_|_|
                                    __/ |    
                                   |___/    
                                    
                            Powered By KeJun.
'

Write-Host $text

pause

If (!$fileis){
Write-Host Download $exe ...
Invoke-WebRequest -Uri $url -OutFile $file
Write-Host Download $exe Done!
}

Write-Host Install $exe ...
Write-Progress -Activity "Install Ruby and Gem"| & "./$exe.exe" /silent | Out-Null
Write-Host Install $exe Done!

cd C:\Ruby25-x64\bin
.\ruby.exe -v
.\gem -v

Write-Host Install Jekyll and Bundler ...
Write-Progress -Activity "Install Jekyll and Bundle" | .\gem install bundler jekyll

Write-Progress -Activity "enjoy!" | .\jekyll -v | Out-Null
Write-Host enjoy!
pause