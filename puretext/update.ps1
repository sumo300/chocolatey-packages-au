import-module au

$releases = 'https://www.stevemiller.net/puretext/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*url64\s*=\s*)('.*')"        = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    $url64   = $download_page.links | ? href -match '.zip$' | % href | select -First 1
    $filename64 = (split-path $url64 -leaf)
    $filename32 = $filename64.Replace("64-bit", "32-bit")
    $version = $filename64.split('_')[1]

    @{
        URL32   = 'https://www.stevemiller.net/downloads/' + $filename32
        URL64   = 'https://www.stevemiller.net/downloads/' + $filename64
        Version = $version
    }
}

update
