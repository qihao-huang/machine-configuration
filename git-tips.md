```
Command line instructions

Git global setup
git config --global user.name "Qihao.Huang"
git config --global user.email "qihao.huang@outlook.com"

Create a new repository
git clone git@gitlab.com:quiescence/test.git
cd test
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master

Existing folder
cd existing_folder
git init
git remote add origin git@gitlab.com:quiescence/test.git
git add .
git commit -m "Initial commit"
git push -u origin master

Existing Git repository
cd existing_repo
git remote rename origin old-origin
git remote add origin git@gitlab.com:quiescence/test.git
git push -u origin --all
git push -u origin --tags
```