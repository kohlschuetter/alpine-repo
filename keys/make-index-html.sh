#!/bin/sh
#
dir="/alpine-repo/keys/"

cd "$(dirname $0)"

cat >index.html <<EOT
<!DOCTYPE html>
<html>
<head>
<title>Index of $dir</title>
<style type="text/css">
a, a:active {text-decoration: none; color: blue;}
a:visited {color: #48468F;}
a:hover, a:focus {text-decoration: underline; color: red;}
body {background-color: #F5F5F5;}
h2 {margin-bottom: 12px;}
table {margin-left: 12px;}
th, td { font: 90% monospace; text-align: left;}
th { font-weight: bold; padding-right: 14px; padding-bottom: 3px;}
td {padding-right: 14px;}
td.s, th.s {text-align: right;}
div.list { background-color: white; border-top: 1px solid #646464; border-bottom: 1px solid #646464; padding-top: 10px; padding-bottom: 14px;}
div.foot { font: 90% monospace; color: #787878; padding-top: 4px;}
</style>
</head>
<body>
<h2>Index of $dir</h2>
<div class="list">
<table summary="Directory Listing" cellpadding="0" cellspacing="0">
<thead><tr><th class="n">Name</th></tr/></thread>
<tbody>
EOT

for f in $(ls -1 | grep -v make-index-html | grep -v index.html); do
  cat >>index.html <<EOT
<tr class="f"><td class="n"><a href="$f">$f</a></td></tr>
EOT
done

cat >>index.html <<EOT
</tbody>
</table>
</div>
<div class="foot"></div>
EOT
