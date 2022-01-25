" Use slimux for vim-test. Running the tests for the first time will
" open a selection buffer in which a tmux pane can be targeted.

let test#strategy = "slimux"

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>r :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>