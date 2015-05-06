# USAGE

  git clone --recursive https://github.com/axypas/dotfiles.git && cd dotfiles

  docker build  -t axypas/vim-last . 

  docker run -i -t  -v ~/my_workspace:/home/dev/workspace axypas/vim-last
