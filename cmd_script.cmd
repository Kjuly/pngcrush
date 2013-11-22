@echo off
mkdir workspace_in 2>nul
mkdir workspace_out 2>nul
cd workspace_in

for /R %CD% %%f in (*.png) do (
  ..\pngcrush\pngcrush -reduce -brute ..\workspace_in\%%~nf.png ..\workspace_out\%%~nf.png
)

cd ..
echo on