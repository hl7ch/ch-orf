1. specification is written with MediaWiki from eHealth Suisse http://e-health-wiki.ch/index.php/CH-ORF
2. Written mediawiki text is copied (currenty by hand) to orf.wiki in this folder
3. in terminal:

```
cd mediawiki
pandoc orf.wiki -f mediawiki -t html -o ../pages/_includes/index.html
```
