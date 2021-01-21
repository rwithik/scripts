#!/bin/bash

if [[ ! -d PDFs ]]; then
	mkdir PDFs
fi
if [[ ! -d Images ]]; then
	mkdir Images
fi
if [[ ! -d GIFs ]]; then
	mkdir GIFs
fi
if [[ ! -d Audios ]]; then
	mkdir Audios
fi
if [[ ! -d Archives ]]; then
	mkdir Archives
fi
if [[ ! -d Docs ]]; then
	mkdir Docs
fi
if [[ ! -d E-Books ]]; then
	mkdir E-Books
fi
if [[ ! -d Code ]]; then
	mkdir Code
fi
# if [[ ! -d Mics ]]; then
# 	mkdir Misc
# fi

mv -v ./*.pdf ./*.PDF ./PDFs/ 2> /dev/null
mv -v ./*.jpg ./*.jpeg ./*.png ./*.svg ./Images/ 2> /dev/null
mv -v ./*.gif ./GIFs/ 2> /dev/null
mv -v ./*.tar.bz2 ./*.tar.gz ./*.bz2 ./*.rar ./*.tbz2 ./*.gz ./*.tgz ./*.zip ./*.Z ./*.7z Archives/ 2> /dev/null
mv -v ./*.mp4 ./*.amr ./*.mp3 ./Audios/ 2> /dev/null
mv -v ./*.docx ./*.doc ./*.md ./*.odt ./*.ppt ./*.csv ./*.xlsx ./*.pptx ./Docs/ 2> /dev/null
mv -v ./*.mobi ./*.epub ./E-Books/ 2> /dev/null
mv -v ./*.c ./*.cpp ./*.sql ./*.py, ./*.ipynb ./*.java ./Code 2> /dev/null
