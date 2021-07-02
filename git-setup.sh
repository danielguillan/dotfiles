## Github
ssh-keygen -t rsa -C "dguillan@newrelic.com"

# Git config
brew install diff-so-fancy

# Git global config
git config --global user.name "Daniel Guillan"
git config --global user.email "dguillan@newrelic.com"
git config --global github.user danielguillan
git config --global core.editor "code -w"
git config --global color.ui true
git config --global core.excludesfile ~/.gitignore_global
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
