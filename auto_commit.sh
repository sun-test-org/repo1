#!/bin/bash

# Define the number of commits you want to add
num_commits=101

# Switch to your branch
git checkout auto_branch

# Loop to create and add commits
for ((i=52; i<=$num_commits; i++))
do
    # Generate a random file content
    random_content=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

    # Create a new file with random content
    echo "$random_content" > file_$i.txt

    # Add the new file to the staging area
    git add file_$i.txt

git add .

    # Commit with a random commit message
   # git commit -m "Commit $i: $random_content"
git commit -m "Commit $i: $random_content" --author "thakurveerendras1 veerendrat+1@proximabiz.com" --signoff
done
