require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

-- local client = vim.lsp.start_client({
-- 	name = "educationalsp",
-- 	cmd = { "/Users/kimsanghyun/Desktop/mainDir/2410/educationalsp" },
--     -- 아래는 개인적인 설정
-- 	-- on_attach = require("plugins.lsp").on_attach,
-- })
--
-- if not client then
-- 	vim.notify("hey, you didnt do the client thing good")
-- 	return
-- end
--
-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = "markdown",
-- 	callback = function()
-- 		vim.lsp.buf_acttach_client(0, client)
-- 	end,
-- })
