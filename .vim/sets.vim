syntax on                      " Habilitar coloreo de sintaxís
filetype off                   " Suele ser 'Plugin on' pero se desactiva para que los plugins carguen correctamente

set nocompatible               " No intentar ser vi compatible (no se exactamente porque)
set number                     " Ver numeros de linea
set numberwidth=1              " Ancho de los numeros de linea
set mouse=a                    " Habilitar uso de mouse
set clipboard=unnamed          " Habilitar clipboard
set showcmd                    " Mostrar comandos ejecutados
set ruler                      " Mostrar pocisión del cursor en barra inferior (VIM)
set encoding=utf-8             " Condificación de archivos
set showmatch                  " Resaltar pareja de signos de apertura/cierre de codigo
set relativenumber             " Mostrar numero de linea relativo
set laststatus=2               " Barra inferior siempre visible (VIM)
set backspace=indent,eol,start " Para que delete key funcione como se espera
set textwidth=79               " Define el ancho de texto maximo
set wrap                       " Ajuste de texto al ancho maximo
set nohlsearch                 " Resaltar coincidencias
set incsearch                  " Busqueda incremental
set ignorecase                 " Busqueda insensitiva
set smartcase                  " Busqueda si al menos contiene una letra mayuscula
set hidden                     " Buffers abiertos en segundo plano
" set formatoptions=tcqrn1     " Un poco de todo esto https://vimhelp.org/change.txt.html#fo-table
set tabstop=2                  " Indentar con tabulacion
set sw=2                       " Indentar con espacio
set shiftwidth=2               " No se que es
set softtabstop=2              " No se que es
set expandtab                  " Convierte tabs en espacios
" set smartindent              " Indenta de manera automatica
" set cursorline               " Mostrar una linea donde esta posicionado el cursor
set noswapfile                 " Desabilita el archivo temporal
set nobackup                   " Cuando se guarda el archivo original se borra el backup
set undodir=~/.vim/undodir     " Directorio 'cache' de modificaciones de archivo. Dejar permisos 700 por seguridad
set undofile                   " Habilita la restauracion de modificaciones de archivo
set scrolloff=8                " Cantidad de lineas minimas sobre y debajo del cursor para realizar el scroll
set signcolumn=yes             " Muestra ~ en la izq de cada fila. Necesario especificar el ancho con algunos plugins
set noshowmode                 " Ocultar modo activado
set visualbell                 " Parpadeo de cursor en vez de sonido
set ttyfast                    " Acelera el scroll (o eso dicen)
set modelines=0                " Evita ejecucion de codigo (malicioso) automatico
set nomodeline                 " Evita ejecucion de codigo (malicioso) automatico
"set exrc                      " Habilita la lectura de codigo .vimrc .exrc y .gvimrc en el directorio actural
"set secure                    " Evita ejecucion de codigo .vimrc y .exrc en directorio actual.
let mapleader=' '              " Asignar tecla lider (espacio)                  
set path+=**                   " Busqueda en subfolder y 'tab-completion' en todas las tareas relacionadas
set wildmenu                   " Muesstra todas las coincidencias cuando se preciona tab
