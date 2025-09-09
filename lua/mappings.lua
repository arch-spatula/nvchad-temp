require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- 비주얼 모드로 선택 후 드래그 이동
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- 아래 줄바꿈 끌어올리기
map("n", "J", "mzJ`z")

-- motion으로 이동 중 자동 중앙 정렬
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- 검색 중 중앙 정렬
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- yank 이후 붙여 넣기 해도 레지스터에 보존
-- greatest remap ever
map("x", "<leader>p", [["_dP]])

-- 네이티브 한 방법으로 rename
map("n", "<leader>s", [[:%s/\<<C-r><C-w\>/<C-r><C-w>/gI<Left><Left>]])

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- 디버거 맵핑
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "[D]ebug [B]reakpoint: add debug breakpoint" })
-- 혼란스러우면 아래 단축키를 해제하고 사용하기
-- map("n", "<C-b>", dap.toggle_breakpoint, {  desc = "DAP Toggle Breakpoint" })
-- map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "[D]ebug [R]un: start or continue the debugger" })
-- 크롬 브라우저 디버거 단축키 활용
-- https://developer.chrome.com/docs/devtools/shortcuts?hl=ko
map("n", "<F8>", "<cmd> DapContinue <CR>", { desc = "DAP Continue" })
map("n", "<F10>", "<cmd> DapStepOver <CR>", { desc = "DAP Step Over" })
map("n", "<F11>", "<cmd> DapStepInto <CR>", { desc = "DAP Step Into" })
map("n", "<S-F11>", "<cmd> DapStepOut <CR>", { desc = "DAP Step Out" })


