docker run -ti -d --name gitpitchpreview -p 8989:80 -v $(pwd)/PITCHME:/usr/share/nginx/html gitpitchpreview &&

# このへんでなんか起動後に特定のrepo urlをgitpitchに渡してofflineリンクからファイルを取得してホストの適切なとこ(PITCHMEフォルダ)に
# locateするみたいなshell芸書ければいいことがある気がするがさて。

echo "please download your slideshow from gitpitch. (push offline button.)" &&
echo "then replace ./PITCHME folder to downloaded one." &&
echo "and then, modify PITCHME/assets/md/PITCHME.md, open localhost:8989/ in your browser."