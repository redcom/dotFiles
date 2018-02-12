while true
do
clear
echo "lint runer"
git diff development --name-only |grep ".js$"| xargs ./node_modules/.bin/eslint -c .eslintrc --quiet --fix $1
sleep 30
done
