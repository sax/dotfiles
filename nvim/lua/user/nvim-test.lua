-- Use slimux for vim-test. Running the tests for the first time will
-- open a selection buffer in which a tmux pane can be targeted.

vim.cmd [[
 try
   let test#strategy = "slimux"
 catch /^.+/
 endtry
]]

