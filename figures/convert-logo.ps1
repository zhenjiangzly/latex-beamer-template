# =============================================================================
#  SVG → PDF 校徽转换脚本
#  使用 Inkscape 专业转换, 保持矢量质量
#  用法: pwsh ./figures/convert-logo.ps1
# =============================================================================

$inkscape = "C:\Program Files\Inkscape\bin\inkscape.exe"

if (-not (Test-Path $inkscape)) {
    Write-Error "Inkscape 未找到! 请先安装 Inkscape: winget install Inkscape.Inkscape"
    exit 1
}

Set-Location $PSScriptRoot

Write-Output "=== 转换纯图标 LOGO ==="
& $inkscape --export-type=pdf --export-filename="hbue-logo.pdf" "hbue-logo-picture only.svg"
Write-Output "  → hbue-logo.pdf  ($([math]::Round((Get-Item hbue-logo.pdf).Length/1KB,1)) KB)"

Write-Output "=== 转换完整校名 LOGO ==="
& $inkscape --export-type=pdf --export-filename="hbue-logo-full.pdf" "HBUE-LOGO-with name-01.svg"
Write-Output "  → hbue-logo-full.pdf  ($([math]::Round((Get-Item hbue-logo-full.pdf).Length/1KB,1)) KB)"

Write-Output "`n✅ 转换完成! 重新编译 .tex 文件即可看到更新。"
