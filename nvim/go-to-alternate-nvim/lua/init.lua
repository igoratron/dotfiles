local M = {}

M.setup = function()
	vim.keymap.set("n", "<leader>ga", goToAlternate)
end

function goToAlternate()
	local currentFile = vim.fn.expand("%")

	if string.match(currentFile, "^app/") then
		goToTestFile(currentFile)
	elseif string.match(currentFile, "^spec/") then
		goToSourceFile(currentFile)
	else
		print("Can't find an alternate file")
	end
end

function goToTestFile(currentFile)
	local folder, filename = string.match(currentFile, "app/(.+)/(.*).rb")
	local testFile = vim.fn.glob("spec/" .. folder .. "/**/" .. filename .. "_spec.rb")
	vim.cmd("vs " .. testFile)
end

function goToSourceFile(currentFile)
	local _, filename = string.match(currentFile, "spec/(.*)/(.-)_spec.rb")
	local sourceFile = vim.fn.glob("app/" .. "/**/" .. filename .. ".rb")
	vim.cmd("vs " .. sourceFile)
end

return M
