" remaining-todos.vim
" author: marrakchino (nabilelqatib@gmail.com)
" version: 0.1

function! s:Remaining_Todos()
	let number_of_todos = 0
	let number_of_todos = number_of_todos + (system('grep -i "TODO" '.expand('%:p') . '| wc -l'))
	if number_of_todos > 0
		execute 'normal! \<Esc>'
		echohl ErrorMsg
		echomsg "There are " . number_of_todos . " TODOs remaining in this file."
		echohl None
		sleep 250m  " enable the user to see the message without slowing their workflow.
	endif
endfun

autocmd BufWinLeave * call <SID>Remaining_Todos()
