# このへんでなんか起動後に特定のrepo urlをgitpitchに渡してofflineリンクからファイルを取得してホストの適切なとこ(PITCHMEフォルダ)に
# locateするみたいなshell芸書ければいいことがある気がするがさて。
if [ ! -d "PITCHME" ]; then
	echo "please download your slideshow from gitpitch. (push offline button.)"
	echo "then locate it to this folder."
else
	docker run -ti -d --name gitpitchpreview -p 8989:80 -v $(pwd)/PITCHME:/usr/share/nginx/html gitpitchpreview &&
	echo "preview ready. let's open localhost:8989/ in your browser."
fi


