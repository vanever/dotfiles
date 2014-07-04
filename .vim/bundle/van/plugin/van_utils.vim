function CreateCscopeTag()
    if(executable('cscope') && has("cscope") )

		" remove previous data
		silent! execute "cs reset"

        silent! execute "cs kill -1"
        if(g:iswindows != 1)
            silent! execute "!find . -name '*.h' -o -name '*.hpp' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
        else
            silent! execute "!dir /s/b *.c,*.cpp,*.h,*.hpp,*.java,*.cs > cscope.files"
        endif
        silent! execute "!cscope -b"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
endf

function AddCscopeTag()
	if has("cscope")
		" tag first then cscope tag
		set csto=1
		set cst

		silent! execute "cs reset"
		" add any database in current directory
		if filereadable("cscope.out")
		    cs add cscope.out
		" else add database pointed to by environment
		elseif $CSCOPE_DB != ""
		    cs add $CSCOPE_DB
		endif
		set csverb
	endif
endf

function Maximize_Window()
  if executable('wmctrl')
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
  endif
endfunction
