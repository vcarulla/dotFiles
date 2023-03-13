" Manejador de plugins vim-plug https://github.com/junegunn/vim-plug
" Bloque de vim-plug (directorio de guardado de plugins)
call plug#begin('~/.vim/plugged')

  Plug 'gruvbox-community/gruvbox'      " Manejador de Temas gruvbox
  Plug 'easymotion/vim-easymotion'      " Acelerador de movimiento
  Plug 'scrooloose/nerdtree'            " Arbol de directorios
  Plug 'christoomey/vim-tmux-navigator' " Moverse entre pantallas
  Plug 'vim-airline/vim-airline'        " Barra inferior con Powerline
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "FuzziFinder para busquedas
  Plug 'junegunn/fzf.vim'               " FuzzyFinder la conf
  Plug 'hashivim/vim-terraform'         " Plug para archivos Tf
  Plug 'vim-syntastic/syntastic'        " Necesario para vim-terraform
  Plug 'juliosueiras/vim-terraform-completion' " Autocomplete Terraform
  Plug 'godlygeek/tabular'              " Necesario para Markdown
  Plug 'plasticboy/vim-markdown'        " Compatiblidad con Markdown
  Plug 'tpope/vim-eunuch'               " Comandos Linux
  Plug 'airblade/vim-gitgutter'         " Muestra lineas con cambios git
" Plug 'tpope/vim-fugitive'
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
  Plug 'sotte/presenting.vim'

call plug#end()



