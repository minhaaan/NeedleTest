export PATH="$PATH:/opt/homebrew/bin"
if which needle; then 
  needle generate Targets/NeedleTest/Sources/NeedleGenerated.swift Targets/NeedleTest/Sources/
else 
  echo "warning"
fi