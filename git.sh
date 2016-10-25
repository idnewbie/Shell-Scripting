#!/bin/bash

echo -e "Simple tools Git"

echo -e "1) Clone Git"
echo -e "2) Push Git"

echo -n "Your choice: "
read choice

case "$choice" in
   1)
      echo -e "Do you want clone some project?"
      echo -n "Enter URL here: "
      read url

      git clone $url
      ;;
   2)
      echo -e "What your file want to upload to github?"
      echo -e "use . (all folder and file) or -A (all file) for all folder or file"
      echo -n "Filename: "
      read file

      git add $file

      echo -n "Commit for this file: "
      read commit
      git commit -m "$commit"

      echo -n "Push as origin (default) or another: "
      read origin

      git push -u "$origin" master
      ;;
    *)
      echo -e "Wrong choice"
      exit 1
      ;;
esac
