#!/usr/bin/perl

$latex = 'platex';
$bibtex = 'pbibtex';
$makeindex = 'mendex';
$dvipdf = "dvipdfmx %O -o %D %S";
$dvips = 'dvips';
$dvi_previewer = 'xdvi';

## OS Xの場合は以下のコメントを外せばいいかも
# $pdf_previewer = 'open -a preview';

## latexmk で pdf まで生成するには --pdfdvi オプションをつけてください.
## *nixな環境の場合、下記のエイリアスを設定しておくといいかもしれません.
## $ alias latexmk="latexmk --pdfdvi"
