import-module au

$latestRelease = 'https://api.github.com/repos/Komet/MediaElch/releases/latest'

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
    $releaseObj = Invoke-RestMethod $latestRelease
    $assets = $releaseObj.assets
    $assetObj = $assets | Where-Object { $_.name -like "*win_10*" } | Select-Object -First 1
    $version = $releaseObj.tag_name.Remove(0,1)

    @{
        URL32   = $assetObj.browser_download_url
        Version = $version
        ReleaseNotes = "https://mediaelch.github.io/mediaelch-blog/posts/mediaelch-v$version/"
    }
}

update
