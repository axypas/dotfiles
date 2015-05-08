# Dotfiles

## Install

~~~bash
  cd && git clone https://github.com/axypas/dotfiles.git \
  && sudo apt-get install zsh \
  && wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh \
  && ln -s dotfiles/zsh/zshrc ~/.zshrc \
  && ln -s dotfiles/vim/vimrc ~/.vimrc
~~~

## Docker
  Under dev
 
~~~bash
  docker build  -t axypas/vim-last . 

  docker run -i -t  -v ~/my_workspace:/home/dev/workspace axypas/vim-last
~~~

## Markdown preview plugin
~~~bash
   wget https://raw.githubusercontent.com/suan/vim-instant-markdown/master/after/ftplugin/markdown/instant-markdown.vim && mkdir -p ~/.vim/after/ftplugin/markdown/ \
   && mv instant-markdown.vim ~/.vim/after/ftplugin/markdown/
~~~
