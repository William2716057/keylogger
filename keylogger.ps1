$logfile = "logged.txt"

while ($true) {
    $key = [Console]::ReadKey($true)

    if ($key.Key -eq "Escape") {
        break
    }
    elseif ($Key.Key -eq "Enter") {
	Add-Content -Path $logfile -Value "`r `n"
    }

    elseif ($key.KeyChar -ne [char]0) {
        #Add-Content -Path $logfile -NoNewline -Value [int][char]$key.KeyChar
	Add-Content -Path $logfile -NoNewline -Value ("{0} " -f ([int][char]$key.KeyChar))
    }
    else {
        Add-Content -Path $logfile -Value "<$($key.Key)>"
    }
}
