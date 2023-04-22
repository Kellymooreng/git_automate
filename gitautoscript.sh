#!/bin/bash
read -p "please enter a workspace: " workspace
mkdir $workspace
cd $workspace
read -p "please enter the project url: " url
git clone $url
repo=$(ls ~/$workspace)
cd $repo
branch=$(git branch)
if [ "$branch" == "* main" ]; then
  read -p "please enter your new branchname: " newbranch
  read -p "please enter your commit message: "  message
  git checkout -b $newbranch
  echo "trying to automate git" > file.log
  git status
  git add .
  git commit -m "$message"
  git push origin $newbranch
fi
#git@github.com:Kellymooreng/tecopsT4.git
