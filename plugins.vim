if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'tpope/vim-surround'

Plug 'tpope/vim-commentary'

Plug 'preservim/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'junegunn/goyo.vim'

Plug 'PotatoesMaster/i3-vim-syntax'

Plug 'tpope/vim-fugitive'

Plug 'lukesmithxyz/vimling'

Plug 'vimwiki/vimwiki'

Plug 'bling/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'kovetskiy/sxhkd-vim'

Plug 'ap/vim-css-color'

Plug 'jiangmiao/auto-pairs'

Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

Plug 'maxmellon/vim-jsx-pretty', { 'for': 'javascript' }

Plug 'junegunn/fzf', { 'do': './install --bin' }

Plug 'junegunn/fzf.vim'

Plug 'stsewd/fzf-checkout.vim'

Plug 'lervag/vimtex'

Plug 'flazz/vim-colorschemes'

Plug 'dylanaraps/wal.vim'

call plug#end()
