eval "$(starship init zsh)"


# General Alias's
##############################
alias cls='clear'

# Terraform
################################
alias tfi='terraform init'
alias tch='terraform fmt && terraform validate'
alias tfp='terraform plan'
alias tfpo='terraform plan -out run.plan'
alias tfa='terraform apply --auto-approve run.plan'
alias tfo='terraform output'
alias tfd='terraform destroy -force'

# Terragrunt
###############################
alias tgv='terragrunt validate'
alias tgp='terragrunt plan'
alias tga='terragrunt apply'
alias tgd='terragrunt destroy'
alias tgaa='terragrunt apply -auto-approve'
alias tgda='terragrunt destroy -auto-approve'
alias tgrv='terragrunt run-all validate'
alias tgrp='terragrunt run --all plan'
alias tgra='terragrunt run-all apply'
alias tgrd='terragrunt run-all destroy'
alias tgraa='terragrunt run-all apply -auto-approve'
alias tgrda='terragrunt run-all destroy -auto-approve'

# Git General
################################
alias gst='git status'
alias gsm='git switch main'
alias gb='git branch'
alias gpl='git pull'
alias gcb='git checkout -b'
alias gpom='git push origin main'
alias gclr='git stash; git clear'
alias gcln='git branch | grep -v "main" | xargs git branch -D'

# Configure Git
################################
alias pu_git='git config user.name "1zyik"'
alias pe_git='git config user.email "isaacadepitan@gmail.com"'
alias wu_git='git config user.name "isaac-{job}"' 
alias we_git='git config user.email "isaac@{job-mail}"'


. "$HOME/.local/bin/env"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi
