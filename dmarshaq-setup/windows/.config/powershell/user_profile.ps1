function touch($file) {
    "" | Out-File $file -Encoding ASCII 
}

function unzip ($file) {
    Write-Output("Extracting", $file, "to", $pwd)
    $fullFile = Get-ChildItem -Path $pwd -Filter $file | ForEach-Object { $_.FullName }
    Expand-Archive -Path $fullFile -DestinationPath $pwd
}

function grep($regex, $dir) {
    if ( $dir ) {
        Get-ChildItem $dir | select-string $regex
        return
    }
    $input | select-string $regex
}

function which($name) {
    Get-Command $name | Select-Object -ExpandProperty Definition
}

function pkill($name) {
    Get-Process $name -ErrorAction SilentlyContinue | Stop-Process
}

function pgrep($name) {
    Get-Process $name
}

function nf {
    param($name) New-Item -ItemType "file" -Path . -Name $name 
}

function mkcd {
    param($dir) mkdir $dir -Force; Set-Location $dir 
}

function la {
    Get-ChildItem -Path . -Force | Format-Table -AutoSize
}

function ll {
    Get-ChildItem -Path . -Force -Hidden | Format-Table -AutoSize
}

$env:TERM='xterm-256color'
oh-my-posh init pwsh --config 'C:\Users\mrsho\.config\powershell\oh-my-posh\ys.omp.customized.json' | Invoke-Expression

