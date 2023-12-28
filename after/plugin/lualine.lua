
local lualine = require("lualine")

lualine.setup({
		options = {
			icons_enabled = true,
			-- theme = 'onedark',
			component_separators = '|',
			section_separators = '',
		},
		--[[
		sections = {
			lualine_x = {
				 require("lazyvim.util").lualine.cmp_source("codeium")
			}
		}
		]]--
})
