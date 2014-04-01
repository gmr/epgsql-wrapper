make
cd epgsql-git
COMMIT=`git log -n 1 --pretty=oneline`
VERSION=${COMMIT:0:8}
echo $VERSION
sed -i -e s/git/\"$VERSION\"/g src/epgsql.app.src
make
