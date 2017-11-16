"Disable the Print key for MacVim
if has("gui_running")
  if has("gui_macvim")
	macmenu &File.Print key=<nop>
  endif
endif
set guicursor=n:blinkon0
set guifont=HaskligNerdFontC-Regular:h18
set macligatures
set antialias
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m            "remove menu bar.
set guioptions-=T            "remove toolbar.
set linespace=1
