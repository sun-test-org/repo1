#!/bin/bash

# Define the number of commits you want to add
num_commits=220

# Switch to your branch
git checkout auto_branch

# Loop to create and add commits
for ((i=201; i<=$num_commits; i++))
do
    # Generate a random file content
    random_content=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

    # Create a new file with random content
    echo "$random_content" > file_$i.txt

    # Add the new file to the staging area
    git add file_$i.txt

 git status

    git add .

 git status

   # Commit with a random commit message
    git commit -m "Commit $i: $random_content"
   # git commit -m "test Co-auth" -m "Co-authored-by: thakurveerendras1 veerendrat+1@proximabiz.com"
done
