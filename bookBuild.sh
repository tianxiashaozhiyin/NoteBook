if [ $# -ne 1 ];then
	echo "请输入提交信息"
	exit
fi
gitbook build
git checkout gh-pages
cp -r ./_book/* ./
git add .
git commit -m "$1"
git push
