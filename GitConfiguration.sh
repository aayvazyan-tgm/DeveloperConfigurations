#For windows users: use the git bash to run this script

#git lg //pretty log
git config --global alias.lg 'log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)<%an>%Creset" --abbrev-commit --date local'

#git cleanup //Deletes all local repos that have been merged (except the current branch, master, release and develop)
git config --global alias.cleanup '!git branch --merged | grep  -v "\\*\\|master\\|develop\\|release" | xargs -n 1 git branch -d'

#git amend //amend changes to the last commit without editing the message
git config --global alias.amend 'commit --amend --no-edit'

#git pf //push force alias
git config --global alias.pf 'push --force'

#git sb //switch branch by entering partial name
git config --global alias.sb '!sh -c "git branch -a | grep -v remotes | grep $1 | xargs git checkout"'

#git forget x //ignore changes to the file x
git config --global alias.forget '!git ls-files -z $1 | xargs -0 git update-index --assume-unchanged'

#git remember x //un ignore changes to the file x
git config --global alias.remember '!git ls-files -z $1 | xargs -0 git update-index --no-assume-unchanged'

#git unstage //unstage the last commit and keep the changes
git config --global alias.unstage 'reset --soft HEAD^'
