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
