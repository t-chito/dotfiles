" 諸々の設定
set nocompatible
set whichwrap=b,s,h,l,<,>,[,]
"viとの互換性を無効にする(INSERT中にカーソルキーが有効になる)
set nocompatible
"カーソルを行頭，行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"BSで削除できるものを指定する
" indent  : 行頭の空白
" eol     : 改行
" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start
"色付け
colorscheme koehler
"文字コードをUFT-8に設定
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
"音を消す
set noerrorbells
"ヤンクがクリップボードに保持される
set clipboard+=unnamed

" 見た目系

" 行番号を表示
set number
" 現在の行を強調表示
"set cursorline
" 現在の行を強調表示（縦）
"set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化して消去
set visualbell t_vb=
" 括弧入力時の対応する括弧を表示
set showmatch

" ステータスラインの設定
" ファイル名，テキスト全体に対するカーソル位置(%表示)
 set statusline=%t
" これ以降は右寄せ表示
 set statusline+=%=
" file encoding
 set statusline+=[ENC=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[ROW=%l/%L]

" ステータスラインを常に表示
set laststatus=2

" コマンドラインの補完
" set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" jjでEsc
inoremap <silent> jj <ESC>
" っjでEsc
inoremap <silent> っj <ESC>


" Tab系

" 不可視文字を可視化(タブが「▸-」と表示される)
"set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
"set tabstop=4
" 行頭でのTab文字の表示幅
"set shiftwidth=4

" タブを表示するときの幅
set tabstop=2
" タブを挿入するときの幅
set shiftwidth=2
" タブをタブとして扱う(スペースに展開しない)
"set noexpandtab
" 
"set softtabstop=0


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>


" neobundle 設定ではなくdein設定

"if &compatible
"  set nocompatible
"endif
"set runtimepath+=~/git_repos/dotfiles/dein.vim

"call dein#begin(expand('~/git_repos/dotfiles/'))

"call dein#add('dotfiles/dein.vim')
"call dein#add('dotfiles/vimproc.vim', {'build': 'make'})

"call dein#add('dotfiles/neocomplete.vim')
"call dein#add('dotfiles/neomru.vim')
"call dein#add('dotfiles/neosnippet')

" (中略)

"call dein#add('lervag/vimtex')
"call dein#add('thinca/vim-quickrun')
"call dein#end()


syntax on



" "### dein.vim 導入
" 
"   " プラグインが実際にインストールされるディレクトリ
"   let s:dein_dir = expand('~/git_repos/dotfiles/.vim/dein')
"   " dein.vim 本体
"   let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" 
"   " dein.vim がなければ github から落としてくる
" if &runtimepath !~# '/dein.vim'
" 	if !isdirectory(s:dein_repo_dir)
" 		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
" 	endif
"     execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
"   endif
" 
"   " 設定開始
" 	if dein#load_state(s:dein_dir)
" 		call dein#begin(s:dein_dir)
"  
"     " プラグインリストを収めた TOML ファイル
"     " 予め TOML ファイル（後述）を用意しておく
"     let g:rc_dir    = expand('~/git_repos/dotfiles/.vim/rc')
"     let s:toml      = g:rc_dir . '/dein.toml'
"     let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
" 
"     " TOML を読み込み、キャッシュしておく
"     call dein#load_toml(s:toml,      {'lazy': 0})
"     call dein#load_toml(s:lazy_toml, {'lazy': 1})
" 
"     " 設定終了
"     call dein#end()
"     call dein#save_state()
"   endif
" 
"   " もし、未インストールものものがあったらインストール
" 	if dein#check_install()
"        call dein#install()
" 	endif
" 
" " dein.vim ここまで

"""
"indentguideのほう
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 0
"colorscheme ir_black
"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=lightgrey
let g:indent_guides_guide_size = 1
"set background=dark

"indentLineのほう
"let g:indentLine_color_term = 111
"let g:indentLine_color_gui = '#708090'
""let g:indentLine_char = '' "use ¦, ┆ or │
"let g:indentLine_char = '¦'

"set list listchars=tab:\¦\ 
""set list
""set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
"hi SpecialKey ctermfg=235 guifg=#3a3a3a

" easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

syntax on

