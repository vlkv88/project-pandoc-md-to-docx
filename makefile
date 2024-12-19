docx: project.md
	pandoc project.md -d config.yaml --filter pandoc-crossref --from markdown --to docx --output project.docx --columns=1 --citeproc --reference-doc=template.docx 
	python filters/bullets.py project.docx