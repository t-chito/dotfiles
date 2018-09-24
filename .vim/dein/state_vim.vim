if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/home/takahashi/git_repos/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim/,/home/takahashi/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/home/takahashi/.vim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/takahashi/.vimrc', '/home/takahashi/git_repos/dotfiles/.vim/rc/dein.toml', '/home/takahashi/git_repos/dotfiles/.vim/rc/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/takahashi/git_repos/dotfiles/.vim/dein'
let g:dein#_runtime_path = '/home/takahashi/git_repos/dotfiles/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/takahashi/git_repos/dotfiles/.vim/dein/.cache/.vimrc'
let &runtimepath = '/home/takahashi/git_repos/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim/,/home/takahashi/.vim,/usr/share/vim/vimfiles,/home/takahashi/git_repos/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim,/home/takahashi/git_repos/dotfiles/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim81,/home/takahashi/git_repos/dotfiles/.vim/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/home/takahashi/.vim/after'
filetype off
