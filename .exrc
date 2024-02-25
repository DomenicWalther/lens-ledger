let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
imap <M-Down> <Plug>(copilot-accept-line)
imap <M-Right> <Plug>(copilot-accept-word)
imap <M-Bslash> <Plug>(copilot-suggest)
imap <M-[> <Plug>(copilot-previous)
imap <M-]> <Plug>(copilot-next)
imap <Plug>(copilot-suggest) <Cmd>call copilot#Suggest()
imap <Plug>(copilot-previous) <Cmd>call copilot#Previous()
imap <Plug>(copilot-next) <Cmd>call copilot#Next()
imap <Plug>(copilot-dismiss) <Cmd>call copilot#Dismiss()
inoremap <C-G>S <Plug>(nvim-surround-insert-line)
inoremap <C-G>s <Plug>(nvim-surround-insert)
inoremap <C-C> 
inoremap <C-W> u
nnoremap  zz
nnoremap  <Cmd>silent !tmux neww tmux-sessionizer
nnoremap  zz
nnoremap <silent>  xq <Cmd>TroubleToggle quickfix
vnoremap <silent>  ri  <Cmd>lua require('refactoring').refactor('Inline Variable')
nnoremap  mr <Cmd>CellularAutomaton make_it_rain
nnoremap  vpp <Cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua
nnoremap <silent>  x <Cmd>!chmod +x %
nnoremap  s :%s/\<\>//gI<Left><Left><Left>
nnoremap  j <Cmd>lprevzz
nnoremap  k <Cmd>lnextzz
vnoremap  d "_d
nnoremap  d "_d
nnoremap  Y "+Y
vnoremap  y "+y
nnoremap  y "+y
xnoremap  p "_dP
xnoremap # y?\V"
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap * y/\V"
nnoremap J mzJ`z
vnoremap J :m '>+1gv=gv
vnoremap K :m '<-2gv=gv
nnoremap N Nzzzv
nnoremap Q <Nop>
nnoremap <silent> S <Plug>(leap-backward)
xnoremap S <Plug>(nvim-surround-visual)
onoremap <silent> X <Plug>(leap-backward-x)
nnoremap Y y$
onoremap <silent> Z <Plug>(leap-backward)
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap cS <Plug>(nvim-surround-change-line)
nnoremap cs <Plug>(nvim-surround-change)
nnoremap ds <Plug>(nvim-surround-delete)
onoremap <silent> gs <Plug>(leap-cross-window)
xnoremap <silent> gs <Plug>(leap-cross-window)
nnoremap <silent> gs <Plug>(leap-cross-window)
xnoremap gS <Plug>(nvim-surround-visual-line)
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap n nzzzv
xnoremap <silent> s <Plug>(leap-forward)
nnoremap <silent> s <Plug>(leap-forward)
onoremap <silent> x <Plug>(leap-forward-x)
nnoremap ySS <Plug>(nvim-surround-normal-cur-line)
nnoremap yS <Plug>(nvim-surround-normal-line)
nnoremap yss <Plug>(nvim-surround-normal-cur)
nnoremap ys <Plug>(nvim-surround-normal)
onoremap <silent> z <Plug>(leap-forward)
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
xnoremap <silent> <Plug>(nvim-surround-visual-line) <Cmd>lua require'nvim-surround'.visual_surround({ line_mode = true })
xnoremap <silent> <Plug>(nvim-surround-visual) <Cmd>lua require'nvim-surround'.visual_surround({ line_mode = false })
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <C-F> <Cmd>silent !tmux neww tmux-sessionizer
nnoremap <C-U> zz
nnoremap <C-D> zz
inoremap  
inoremap S <Plug>(nvim-surround-insert-line)
inoremap s <Plug>(nvim-surround-insert)
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set completeopt=menu,preview,menuone,noselect
set expandtab
set helplang=en
set nohlsearch
set ignorecase
set indentkeys=0{,0},!^F,o,O,0[,0]
set isfname=#,$,%,+,,,-,.,/,48-57,=,@,_,~,@-@
set runtimepath=~/.config/nvim,/opt/homebrew/etc/xdg/nvim,/etc/xdg/nvim,~/.local/share/nvim/site,~/.local/share/nvim/site/pack/packer/start/packer.nvim,~/.local/share/nvim/site/pack/*/start/*,/opt/homebrew/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/opt/homebrew/Cellar/neovim/0.9.5/share/nvim/runtime,/opt/homebrew/Cellar/neovim/0.9.5/share/nvim/runtime/pack/dist/opt/matchit,/opt/homebrew/Cellar/neovim/0.9.5/lib/nvim,~/.local/share/nvim/site/pack/*/start/*/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/opt/homebrew/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,/opt/homebrew/etc/xdg/nvim/after,~/.config/nvim/after,~/personal/streamer-tools
set scrolloff=8
set shiftwidth=4
set smartindent
set softtabstop=4
set noswapfile
set tabstop=4
set termguicolors
set undodir=~/.vim/undodir
set undofile
set updatetime=50
set window=24
" vim: set ft=vim :
