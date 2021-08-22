index_content="
const express = require('express') \n
const cors = require('cors') \n
const morgan = require('morgan') \n

const public = express.static('public') \n

const app = express() \n
const port = process.env.PORT || 3000 \n

app.use(cors()) \n
app.use(morgan('dev')) \n
app.use(public) \n

app.listen(port, () => {
console.log('Listening on port 3000...')
})
"
html_content="
<!DOCTYPE html> \n
<html> \n
 <head> \n
   <title>Document</title> \n
   <link rel='stylesheet' href='style.css'> \n 
  </head> \n
  <body> \n
   <script src='app.js'></script> \n
 </body> \n
</html> \n
"
style_content="
*{ \n
 margin: 0; \n
 padding: 0; \n
 box-sizing: border-box; \n
} \n
"

echo "EXPRESS APP GENERATOR"
echo "============================="
echo -e "[ i ] Initializing npm project..."
echo -e "\n"
npm init --silent -y 2>/dev/null
echo "[ ✔ ] Project initialized successfully"
echo -e "\n"
echo "[ i ] Instaling dependencies..."
npm i --silent express cors morgan 2>/dev/null && npm i --silent nodemon --save-dev 2>/dev/null
sleep 3
echo -e "\n"
echo "[ ✔ ] Dependencies installed successfully"
sleep 3
echo -e "\n"
echo "[ i ] Generating folder structure..."
echo -e "\n"
touch index.js && echo -e $index_content > index.js
sleep 3
echo "[ ✔ ] index.js created successfully"
echo -e "\n"
mkdir public
cd public 
touch index.html && echo -e $html_content > index.html
echo "[ ✔ ] public/index.html created successfully"
touch style.css && echo -e $style_content > style.css
echo "[ ✔ ] public/style.css created successfully"
touch app.js
echo "[ ✔ ] public/app.js created successfully"
sleep 3
echo -e "\n"
echo "[ ✔ ] Basic structure created successfully"
echo -e "\n"
sleep 3
echo "[ ✔ ] Project created successfully"
echo "=================================="
exit 0
