#!/bin/bash

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.

#!/bin/bash
count=1
while [ $count -le 5 ]; do 
    mkdir dir$count 
    count=$((count +1))
done
echo "Done! Five folders were created"

# 2. How would you verify the creation of all 5 directories?
ls
# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
#!/bin/bash
folder_number=1
while [ $folder_number -le 5 ]; do 
    file_number=1
    echo $folder_number
    while [ $file_number -le 5 ]; do 
        touch dir$folder_number/file$file_number.txt
        echo "I love data" > dir$folder_number/file$file_number.txt
        #echo $file_number 
        file_number=$((file_number +1))
    done
    folder_number=$((folder_number +1))
done
echo "Done! Files were created"

# 4. How would you verify the presence of all 5 files?
#!/bin/bash
folder_number=1
while [ $folder_number -le 5 ]; do 
    echo dir$folder_number
    echo "List of Files:"
    ls dir$folder_number
    folder_number=$((folder_number +1))
done
echo "Done! Folder content was shown"
# 5. How would you append to one of the existing files " and machine learning!"?
echo -n  " and machine learning" >>dir1/file1.txt
# 6. How would you verify that the text was indeed appended to the existing file?
code dir1/file1.txt
# 7. How would you delete all files except for the one with the appended text?
#!/bin/bash
cd dir1
file_number=1
while [ $file_number -le 5 ]; do 
    if ! grep -q "and machine learning" file$file_number.txt; then
        echo "This file will be deleted:"
        echo file$file_number.txt
        rm file$file_number.txt
    fi
    file_number=$((file_number +1))
done
cd ../
echo "Done! Files were deleted"
# 8. How would you navigate back to the parent directory containing all the directories?
cd ../
# 9. How would you remove each directory along with its contents?
rm -r dir1 dir2 dir3 dir4 dir5
# 10. How would you verify that all directories and files have been deleted?
ls