require("rose-pine").setup({
	disable_background = false,
})

function ColorMyPencils(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	vim.g.gruvbox_contrast_dark = "medium"
	vim.opt.background = "dark"
end

ColorMyPencils()
