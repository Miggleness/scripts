#!/bin/bash
declare -a versions=("5.0.100-preview.4.20258.7"
            "5.0.0-preview.4.20257.10"
	    "5.0.0-preview.4.20251.6"
	    "2.1.18"
	    "2.1.19"
	    "3.1.300"
	    "3.1.4"
    )

for version in "${versions[@]}"
do
  sudo rm -rf /usr/local/share/dotnet/sdk/$version
  sudo rm -rf /usr/local/share/dotnet/shared/Microsoft.NETCore.App/$version
  sudo rm -rf /usr/local/share/dotnet/shared/Microsoft.AspNetCore.All/$version
  sudo rm -rf /usr/local/share/dotnet/shared/Microsoft.AspNetCore.App/$version
  sudo rm -rf /usr/local/share/dotnet/host/fxr/$version
  echo $version
done
