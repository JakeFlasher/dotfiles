"Plugs: {{{
set nocompatible

call plug#begin('~/.vim/plugged')
  " verilog
  Plug 'vim-syntastic/syntastic'
  Plug 'vhda/verilog_systemverilog.vim'
  " Haskell "
  Plug 'jaspervdj/stylish-haskell'
  " File manipulator "
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'preservim/nerdtree'
  " UI
  Plug 'itchyny/lightline.vim'
  Plug 'mengelbrecht/lightline-bufferline'
  Plug 'terryma/vim-smooth-scroll'
"  Plug 'NLKNguyen/papercolor-theme'
" Plug 'arcticicestudio/nord-vim'
  Plug 'shaunsingh/nord.nvim'
"  Plug 'sainnhe/gruvbox-material', { 'do': 'rm -r ftplugin &> /dev/null' }
  Plug 'ryanoasis/vim-devicons'
  " Tools
  Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
  Plug 'junegunn/vim-easy-align'
  Plug 'junegunn/fzf', { 'on': ['Files', 'Marks', 'Maps', 'Buffers'] }
  Plug 'junegunn/fzf.vim', { 'on': ['Files', 'Marks', 'Maps', 'Buffers'] }
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-fugitive'
  Plug 'justinmk/vim-sneak'
  Plug 'preservim/nerdcommenter'
 " General
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'puremourning/vimspector'
  Plug 'skywind3000/asynctasks.vim', { 'on': 'AsyncTask' }
  Plug 'skywind3000/asyncrun.vim', { 'on': 'AsyncTask' }
  " Latex
  Plug 'lervag/vimtex'
  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex', 'on': 'LLPStartPreview' }
  Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
  " Python
  " Plug 'tell-k/vim-autopep8', { 'for': 'python' }
  " C++
  Plug 'bfrg/vim-cpp-modern'
  " Markdown
  Plug 'iamcco/markdown-preview.nvim', { 'for': 'markdown', 'do': 'cd app & yarn install' }
  Plug 'dhruvasagar/vim-table-mode', { 'for': 'markdown' }
  " Go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
  " Flutter
  Plug 'thosakwe/vim-flutter', { 'for': 'dart' }
  Plug 'dart-lang/dart-vim-plugin'
  " Typescript
  Plug 'leafgarland/typescript-vim'
  Plug 'ianks/vim-tsx'
  Plug 'prettier/vim-prettier', {
    \ 'do': 'npm install',
    \ 'branch': 'release/0.x',
    \ 'on': 'PrettierAsync'
    \ }
  " vim-snippets
  Plug 'sirver/ultisnips'
  Plug 'honza/vim-snippets'
call plug#end()
" }}}
" Settings: {{{
" Performance: {{{
set hidden
set nobackup
set nowritebackup
set noswapfile
set updatetime=100
set bs=2            " can use backspace
set mouse=a         " can use mouse
set ma
" }}}
" Python: {{{
let g:python3_host_prog = "/bin/python3"
let g:python_host_prog = "/bin/python2"
" }}}
" Search: {{{
set incsearch       " search as characters are entered
set hlsearch        " highlight matche
" set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is lower case

augroup ClearSearch " auto clear highlight
  autocmd!
  autocmd InsertEnter * let @/ = ''
augroup END
" }}}
" Tools: {{{
set clipboard+=unnamedplus
set nrformats=alpha
" }}}
" Spaces & Tabs: {{{
let tabsize=4
let &tabstop=tabsize       " numdiffChangedber of visual spaces per TAB
let &softtabstop=tabsize   " number of spaces in tab when editing
let &shiftwidth=tabsize    " number of spaces to use for autoindent
set expandtab              " tabs are space
set autoindent
set copyindent
set smartindent
set cindent
set shiftround     " Use multiple of shiftwidth when indenting with > and <
" }}}
" UI Config: {{{
set number                   " show line number
set relativenumber           " show relative line number
set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set laststatus=2             " always show status line
set showtabline=2            " always show tab line
set shortmess+=c             " don't pass messages to ins-completion-menu
set colorcolumn=81           " set guide line
set linebreak                " set line break
set breakindent              " get same indent as before
set numberwidth=5            " make the line number column wider
set signcolumn=yes           " always show signcolumns
set scrolloff=6              " Keep 10 lines above/below cursor
set noshowmode               " remove mode
" set fillchars=vert:\ ,eob:\            " remove ~ at endBuffer
set fillchars=eob:\            " remove ~ at endBuffer
let g:golden_ratio_autocommand = 0 " dont resize automatically
set showcmd
" }}}
" Window remap: {{{
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" }}}
" Color: {{{
syntax on
set t_Co=256
set background=dark
" gruvbox_material:{{{
"set termguicolors
"let g:gruvbox_material_background = 'hard'
"let g:gruvbox_material_better_performance = 1
"let g:gruvbox_material_diagnostic_line_highlight = 1
"let g:gruvbox_material_sign_column_background = 'none'
"let g:gruvbox_material_transparent_background = 0
"let g:gruvbox_material_current_word = 'grey background'
"
"augroup GruvboxMaterialCustom
"  autocmd!
"  autocmd ColorScheme gruvbox-material call SetColorOptions()
"  function SetColorOptions()
"    highlight CursorLineNr guifg=#A9B665 gui=bold guibg=none
"    highlight VertSplit guifg=#46413E
"  endfunction
"augroup END
"
"colorscheme gruvbox-material
" }}}
" colorscheme nord: {{{
" Example config in Vim-Script
let g:nord_contrast = v:true
let g:nord_borders = v:false
let g:nord_disable_background = v:false
let g:nord_italic = v:false
colorscheme nord
" }}}
"" papercolor: {{{
"colorscheme PaperColor
"let g:PaperColor_Theme_Options = {
"  \   'theme': {
"  \     'default.dark': {
"  \       'override' : {
"  \         'color00' : ['#080808', '232'],
"  \         'linenumber_bg' : ['#080808', '232']
"  \       }
"  \     }
"  \   },
"  \   'language': {
"  \     'python': {
"  \       'highlight_builtins' : 1
"  \     },
"  \     'cpp': {
"  \       'highlight_standard_library': 1
"  \     },
"  \     'c': {
"  \       'highlight_builtins' : 1
"  \     }
"  \   }
"  \ }
"" }}}
autocmd FileType json syntax match Comment +\/\/.\+$+
" }}}
" Clear Space Ending: {{{
" set lcs+=space:·
" set list
" hi Whitespace guifg=#464741
autocmd BufWinLeave * call clearmatches() " for performance

func! DeleteTrailingWS()
    exec "normal mz"
    %s/\s\+$//ge
    exec "normal `z"
endfunc
" auto delete useless spaces
au BufWrite * :call DeleteTrailingWS()
" }}}
" Plugs Settings: {{{
" syntastic verilog: {{{
let g:syntastic_verilog_checkers = ['verilator','iverilog']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" vimtex配置: {{{
let g:vimtex_toc_config = {
\ 'name' : 'TOC',
\ 'layers' : ['content', 'todo', 'include'],
\ 'split_width' : 25,
\ 'todo_sorted' : 0,
\ 'show_help' : 1,
\ 'show_numbers' : 1,
\}
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
" 对中文的支持
let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 --interaction=nonstopmode $*'
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines ={'_':'xelatex'}

set conceallevel=2   "这里建议写成2，写1时替换后的效果不好看
let g:tex_conceal='abdmg'
let g:tex_conceal_frac=1
"let g:vimtex_compiler_latexmk = {
        " \ 'executable' : 'latexmk',
        " \ 'options' : [
        " \   '-xelatex',
        " \   '-file-line-error',
        " \   '-synctex=1',
        " \   '-interaction=nonstopmode',
        " \ ],
        " \}

" }}}
" Smooth Scroll: {{{
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 4, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 4, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 5, 1)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 5, 1)<CR>
" }}}
" Git Color: {{{
highlight RedSign guibg=none
highlight GreenSign guibg=none
highlight BlueSign guibg=none
highlight PurpleSign guibg=none
highlight YellowSign guibg=none
highlight OrangeSign guibg=none
highlight AquaSign guibg=none
" }}}
" Go: {{{
let g:go_def_mapping_enabled = 0
" }}}
" Prettier: {{{
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1
autocmd FileType typescript,typescript.tsx,javascript,javascript.tsx noremap <buffer> <leader>fm :PrettierAsync<CR>
" }}}
" Autopep8: {{{
autocmd FileType python noremap <buffer> <leader>fm :call Autopep8()<CR>
let g:autopep8_disable_show_diff=1
" }}}
" Sneak: {{{
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
" }}}
" Latex Preview: {{{
let g:livepreview_cursorhold_recompile = 0
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'xelatex'
" }}}
" Easy Align: {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}
" asynctasks & asyncrun" {{{
noremap <silent><F7> :AsyncTask file-build<CR>
noremap <silent><F8> :AsyncTask file-run<CR>
let g:asyncrun_open = 6
let g:asynctasks_term_pos = "bottom"
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
" }}}
" fzf: {{{
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
nmap <c-p> :Files<CR>
let g:fzf_colors = {
    \ 'border': ['border', '#32302F'],
    \ 'bg+': ['bg+', '#32302F'],
    \ 'info': ['info', '#CBB795'],
    \ 'fg': ['fg', 'Comment'] }
" }}}
" vim-cpp-modern: {{{
let g:cpp_simple_highlight = 1
let g:cpp_named_requirements_highlight = 1
" }}}
" vim table mode: {{{
let g:table_mode_corner='|'
" }}}
" nerdcommenter: {{{
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_c = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': '' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
nmap <silent><c-_> <leader>c<space>
vmap <silent><c-_> <leader>c<space>
" }}}
" file explorer: {{{
nnoremap <silent>- :CocCommand explorer --toggle --sources=buffer-,file+<CR>
" }}}
" Vimspector: {{{
" let g:vimspector_enable_mappings = 'HUMAN'
nmap <silent><F5> <Plug>VimspectorContinue
nmap <silent><F3> :VimspectorReset<CR>
nmap <silent><F4> <Plug>VimspectorRestart
nmap <silent><F6> <Plug>VimspectorPause
nmap <silent><F9> <Plug>VimspectorToggleBreakpoint
nmap <silent><F10> <Plug>VimspectorStepOver
nmap <silent><F11> <Plug>VimspectorStepInto
nmap <silent><F12> <Plug>VimspectorStepOut

highlight VimSpectorBreakPoint guifg=#EA6962
sign define vimspectorBP text=● texthl=VimSpectorBreakPoint
sign define vimspectorBPDisabled text=◯ texthl=VimSpectorBreakPoint
sign define vimspectorPC text=▶ texthl=CursorLineNr
" }}}
" Lightline: {{{
"let g:lightline = {
"  \ 'colorscheme' : 'gruvbox_material',
"  \ 'active': {
"  \   'left': [
"  \     [ 'mode', 'paste' ],
"  \     [ 'cocInfo' ],
"  \     [ 'readonly', 'relativepath' ]
"  \   ],
"  \   'right': [
"  \     [ 'indexinfo' ],
"  \     [ 'fileencoding' ],
"  \     [ 'filetype' ]
"  \   ]
"  \ },
"  \ 'tabline': {
"  \   'left': [ [ 'buffers'] ],
"  \   'right': [ [ 'time' ] ]
"  \ },
"  \ 'inactive': {
"  \   'right': [ [ 'indexinfo' ] ]
"  \ },
"  \ 'component_function': {
"  \   'fileencoding': 'LightlineFileEncoding',
"  \   'filetype': 'LightlineFiletype',
"  \   'cocInfo': 'LightlineCocInfo'
"  \ },
"  \ 'component_expand': {'buffers': 'lightline#bufferline#buffers' },
"  \ 'component_type': { 'buffers': 'tabsel' },
"  \ 'component_raw': { 'buffers': 1 },
"  \ 'component': {
"  \   'indexinfo': '%3p%% ☰  %3l:%2c ',
"  \   'time': '%{strftime("%H:%M")}'
"  \ },
"\ }
" toggle between different colorschemes
" let g:lightline = { 'colorscheme': 'PaperColor' }
let g:lightline = {
  \ 'active': {
  \   'left': [
  \     [ 'mode', 'paste' ],
  \     [ 'ctrlpmark', 'git', 'diagnostic', 'cocstatus', 'filename', 'method' ]
  \   ],
  \   'right':[
  \     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ],
  \     [ 'blame' ]
  \   ],
  \ },
  \ 'component_function': {
  \   'blame': 'LightlineGitBlame',
  \ }
\ }

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

let g:lightline = { 'colorscheme': 'nord' }

let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#clickabl = 1
let g:lightline#bufferline#unnamed = '[No Name]'

function! LightlineFileEncoding()
  return ' '.(winwidth(0) > 70 && &fileencoding != '' ? &fileencoding.' ' : '')
    \ .WebDevIconsGetFileFormatSymbol().' '
endfunction

function! LightlineFiletype()
  return (winwidth(0) > 70 ? &filetype.' ' : '')
    \ .WebDevIconsGetFileTypeSymbol().' '
endfunction

function! CocGetInfo(type) abort
  let _backup = get(g:, 'coc_stl_format', '')
  let is_err = (a:type  is# 'error')

  let info = get(b:, 'coc_diagnostic_info', {})
  let cnt = get(info, a:type, 0)
  if empty(info) || empty(cnt) | return '' | endif

  if !empty(_backup)
    let g:coc_stl_format = _backup
  endif

  return (a:type  is# 'error' ? 'E:' : 'W:').cnt
endfunction

function! LightlineCocInfo()
  let errorMes = CocGetInfo('error')
  let warningMes = CocGetInfo('warning')

  let msg = ''
  if errorMes != ''
    let msg = msg.' '.errorMes.' '
  endif

  if warningMes != ''
    let msg = msg.' '.warningMes.' '
  endif
  return msg
endfunction
" }}}
" UltiSnips: {{{
  let g:UltiSnipsListSnippets = '<c-tab>'
  let g:UltiSnipsJumpForwardTrigger = '<F1>'
  let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
  let g:UltiSnipsExpandTrigger = '<F1>'
" }}}
" Coc_default: {{{
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" }}}
" }}}
" }}}
" }}}
" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
" Vim Snippets: {{{
"
"
" }}}
