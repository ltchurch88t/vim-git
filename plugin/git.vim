function! Send()
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

command Send :call Send()
command Pull :call Pull()
command Clone :call Clone(<f-args>)
command Diff :call Diff()
