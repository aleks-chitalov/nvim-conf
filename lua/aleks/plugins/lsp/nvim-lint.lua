return {
	'mfussenegger/nvim-lint',
	config = function ()
		local lint = require("lint")
		local checkstyle = lint.linters.checkstyle
		checkstyle.config_file = '/home/lexu/Downloads/Powerize/checkstyle-powerize.xml'
		lint.linters_by_ft = {
  			java = {'checkstyle'},
		    python = {'pylint'},
        }

		vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave", "TextChanged" }, {
  			callback = function()
    			lint.try_lint()
  			end,
		})

		vim.keymap.set("n", "<leader>l", function ()
			lint.try_lint()
		end
		)

        require('lint').linters.pylint.cmd = 'python'
        require('lint').linters.pylint.args = {'-m', 'pylint', '-f', 'json'}
	end,
}
