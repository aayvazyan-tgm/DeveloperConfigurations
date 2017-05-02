#Execute with git shell on windows

#git lg //pretty log
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#git cleanup //Deletes all local repos except master, develop and the current branch
git config alias.cleanup "!git branch --merged | grep  -v '\\*\\|master\\|develop' | xargs -n 1 git branch -d"

#git amend //amend changes to the last commit without editing the message
git config --global alias.amend "commit --amend --no-edit"

#git pf //push force alias
git config --global alias.pf "push --force"

#git sb //switch branch by entering partial name
git config --global alias.sco '!sh -c "git branch -a | grep -v remotes | grep $1 | xargs git checkout"'

