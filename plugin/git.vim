function! Send()
  :call SetGitDir()
  :!git add .
  :!git commit -m "update"
  :!git push
endfunction

function! Pull()
  :!git pull
endfunction

function! Clone(url)
  :!git clone a:url
endfunction

function! Diff()
  :!git diff
endfunction

command Push :call Send()
command Pull :call Pull()
command Clone :call Clone()
command Diff :call Diff()

function! SetGitDir()
    " Change working dir to the current file
    cd %:p:h
    " Set 'gitdir' to be the folder containing .git
    let gitdir=system("git rev-parse --show-toplevel")
    " See if the command output starts with 'fatal' (if it does, not in a git repo)
    let isnotgitdir=matchstr(gitdir, '^fatal:.*')
    " If it empty, there was no error. Let's cd
    if empty(isnotgitdir)
        cd `=gitdir`
    endif
endfunction

