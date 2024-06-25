#!/bin/bash
#Script for updating Chezmoi without having to do so many commands

chezmoi diff #diff to see chganges
read -p "Press any key..." #allowing use to look at the changes to proceed
chezmoi apply #apply the changes to chezmoi
cd /home/grnch/.local/share/chezmoi #moving to chezmoi dir
git add . #adding the dir to git, not sure if this is needed
read -p 'Git Commit: ' commitin #getting a commit from user
git commit -m "$commitin" #applying the commit
git push -u origin main && echo "Dotfiles Updated!" || echo "Push Failed!" #pushing to the main branch and telling the user the script has run successfully or failed


