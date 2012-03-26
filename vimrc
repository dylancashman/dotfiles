set nocompatible
filetype off " per http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html

" Wow, this cleaned up my ~/.vim like you would not believe.
" http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen
" Note that pathogen must be called before built-in filetype plugin is
" loaded
call pathogen#infect()
call pathogen#helptags() " Generate help tags for every bundle

" RVM fix via http://rvm.beginrescueend.com/integration/vim/
set shell=/bin/sh

source $HOME/.vim/tslime.vim
source $HOME/.vim/vundle.vim
source $HOME/.vim/colorscheme.vim
source $HOME/.vim/options.vim
source $HOME/.vim/tabs.vim
source $HOME/.vim/backups.vim
source $HOME/.vim/mapping.vim
source $HOME/.vim/completion.vim
source $HOME/.vim/tabularizing.vim
source $HOME/.vim/syntax/jst.vim
" Allows % to switch between if/elsif/else/end, open/close XML tags, and
" more.
runtime macros/matchit.vim

source $HOME/.vim/autocommand.vim

" Turn on syntax highlighting when we have colors or gui is running
if &t_Co > 2 || has("gui_running") " &t_Co > 2 => we have colors
  syntax on
endif

set pastetoggle=<F2>       " Hit <F2> to disable/enable autoindention for paste

" Load users local overrides
" You can load your fav colorscheme in there for example
let local_vimrc = $HOME . "/.vimrc.local"
if filereadable(local_vimrc)
  source $HOME/.vimrc.local
endif
