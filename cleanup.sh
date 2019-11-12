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

mv -v ./*.pdf ./PDFs/ 2> /dev/null
mv -v ./*.jpg ./*.jpeg ./*.png ./Images/ 2> /dev/null
mv -v ./*.gif ./GIFs/ 2> /dev/null
mv -v ./*.tar.bz2 ./*.tar.gz ./*.bz2 ./*.rar ./*.tbz2 ./*.gz ./*.tgz ./*.zip ./*.Z ./*.7z Archives/ 2> /dev/null
mv -v ./*.mp4 ./*.amr ./Audios/ 2> /dev/null
mv -v ./*.docx ./*.doc ./*.odt ./*.ppt ./*.csv ./*.xlsx ./Docs/ 2> /dev/null
mv -v ./*.mobi ./*.epub ./E-Books/ 2> /dev/null
mv -v ./*.c ./*.cpp ./*.sql ./*.py ./*.java ./Code 2> /dev/null
