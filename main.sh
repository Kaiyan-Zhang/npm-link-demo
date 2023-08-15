mkdir foo
cd foo
npm init -y
echo "module.exports = { foo(){ console.log('foo') } }" > index.js
npm link
npm config get prefix

cd ..

mkdir test
cd test
npm init -y
echo "const { foo } = require('foo'); foo();" > index.js
npm link foo
node index.js
npm unlink foo

cd ..
cd foo
npm unlink
