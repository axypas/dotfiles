# Dotfiles

## Install

~~~bash
  cd \
  && curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh \
  && sh ./install.sh \
  && git clone https://github.com/axypas/dotfiles.git \
  && sudo apt-get install zsh \
  && wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh \
  && ln -s dotfiles/zsh/zshrc ~/.zshrc \
  && ln -s dotfiles/vim/vimrc ~/.vimrc
~~~

## Docker
  Under dev

### Create container your plugins and commit the image

~~~bash
  docker build  -t axypas/vim . 
  docker run -i -t -v ~/dotfiles/vim/vimrc:/home/dev/.vimrc axypas/vim
  
  # install the vim plugins and commit
  docker ps -l
  docker commit <CONTAINER_ID> axypas/vim:with-plugins

  docker push axypas/vim:with-plugins
~~~

### Use the image

~~~bash
  docker run -v ~/home/dev/workspace axypas/vim:with-plugins
~~~



## Markdown preview plugin
~~~bash
   wget https://raw.githubusercontent.com/suan/vim-instant-markdown/master/after/ftplugin/markdown/instant-markdown.vim && mkdir -p ~/.vim/after/ftplugin/markdown/ \
   && mv instant-markdown.vim ~/.vim/after/ftplugin/markdown/
~~~
