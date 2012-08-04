
function download($url, $name)
{
    if (!$name)
    {
        $name = $url.split('/')[-1]        
    }

    $wc = New-Object net.webclient

    $wc.DownloadFile($url, "$pwd\content\Scripts\$name")
}
$ver = "2.0.4"

mkdir "content\Scripts"
download "http://requirejs.org/docs/release/$ver/minified/require.js" require.min.js
download "http://requirejs.org/docs/release/$ver/comments/require.js" require.js
download "http://requirejs.org/docs/release/$ver/r.js"
download "https://raw.github.com/requirejs/text/latest/text.js"
download "https://raw.github.com/requirejs/domReady/latest/domReady.js"
download "https://github.com/jrburke/require-cs/raw/latest/cs.js"
download "https://raw.github.com/requirejs/i18n/latest/i18n.js"
download "https://raw.github.com/jrburke/requirejs/master/LICENSE"
move-item "$pwd\content\Scripts\LICENSE" "$pwd\content\Require.JS - LICENSE.txt" 