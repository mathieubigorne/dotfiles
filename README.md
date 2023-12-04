# Install dev tools
```shell
xcode-select --install
```

# Update mac
```shell
sudo softwareupdate -i -a
```

# Install Homebrew
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# Setup & run dotfiles
```shell
mkdir ~/projects
cd ~/projects

git clone https://github.com/mathieubigorne/dotfiles.git
cd dotfiles

./osx/set-defaults.sh
./homebrew/formulas.sh

cp .aliases .bash_profile .bash_prompt .exports .functions .gitconfig ~ && source ~/.bash_profile
```

# Setup fzf
```shell
$(brew --prefix)/opt/fzf/install
```

# Sublime
```shell
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```

# Ruby
```shell
rbenv init
rbenv install 2.6.1
```

# PNPM
```shell
curl -fsSL https://get.pnpm.io/install.sh | sh -
```