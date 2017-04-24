#git lg //pretty log
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#git cleanup //Deletes all local repos except master, develop and the current branch
git config alias.cleanup "!git branch --merged | grep  -v '\\*\\|master\\|develop' | xargs -n 1 git branch -d"

#git amend //amend changes to the last commit and 
git config --global alias.amend "git commit --amend --no-edit"
