function! Rsslinks()
   silent! v/^\s*<link/d
   silent! %s/^\s*<link>\(.*\)<\/link>.*$/\1/
endfunction

command! Rsslink call Rsslinks()
