function! Send()
  :!git add .
  :!git commit "update"
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
