echo " Installing tailwindcss" && 
npm install -D tailwindcss &&
echo " Initailaizing Tailwind CSS" && 
npx tailwindcss init &&
echo " Making src directory " && 
mkdir src &&
echo '''Writing content to  tailwind config js file''' && 
echo "@tailwind base; 
@tailwind components;
@tailwind utilities;" > src/input.css &&
echo " Writing content to html file" &&  echo '''
/** @type {import(tailwindcss).Config} */
module.exports = {
  content: ["./dist/**/*.{html,js}"],
  theme: {
    extend: {},
  },
  plugins: [],
}
''' > tailwind.config.js &&
echo " making dist directory" &&  mkdir dist &&
echo " Writing content to html file " && 
echo '''<!DOCTYPE html>                            
<html lang="en" class="bg-teal-300">
<head>                              
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="/dist/output.css" rel="stylesheet">
</head>
<body>

<div class="container m-auto w-1/2 mt-10 h-10  bg-red-500 text-center pt-3 p-10  rounded-full">
    This is Tailwind CSS.
    &nbsp; &nbsp; &nbsp; 
    <a href = "https://www.github.com/adalovelace2003" target="_blank" class="text-white underline td underline-offset-1 "> Ada Lovelace github.com/adalovelace2003 </a>
</div>
</body>
</html>''' >  dist/index.html &&
echo " Running the command that watch for the changes " && 
npx tailwindcss -i ./src/input.css -o ./dist/output.css --watch 
