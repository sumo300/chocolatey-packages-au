import-module au

$releases = 'https://github.com/Komet/MediaElch/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }

        "$($Latest.PackageName).nuspec" = @{
            "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    $url32   = $download_page.links | ? href -match '.zip$' | % href | select -First 1
    $version = (Split-Path ( Split-Path $url32 ) -Leaf).Substring(1)

    @{
        URL32   = 'https://github.com' + $url32
        Version = $version
        ReleaseNotes = "https://mediaelch.github.io/mediaelch-blog/posts/mediaelch-v$version/"
    }
}

update
