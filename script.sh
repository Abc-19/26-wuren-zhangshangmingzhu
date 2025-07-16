#!/bin/bash
mkdir -p linux_practice/name
mkdir -p linux_practice/permission
touch linux_practice/name/file1.txt
touch linux_practice/name/file2.txt
touch linux_practice/permission/file3.txt
touch linux_practice/permission/file4.txt
rm -f linux_practice/name/file1.txt
mv linux_practice/name/file2.txt linux_practice/name/show.txt
echo "Hello linux" > linux_practice/name/show.txt
echo "Content of show.txt:"
cat linux_practice/name/show.txt
echo "Changing permissions for files in permission directory:"
for file in linux_practice/permission/*; do
    if [ -f "$file" ]; then
        chmod 644 "$file"
        filename=$(basename "$file")
        echo "Changed permissions for $filename to -rw-r--r--"
    fi
done
