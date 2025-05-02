return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			update_focused_file = {
				enable = true,
				update_root = true,
			},
			view = {
				width = 45,
			},
            filters = {
                git_ignored = false, -- Exibe arquivos ignorados pelo Git
                dotfiles = false,    -- Exibe arquivos ocultos (começando com '.')
            },
            git = {
                enable = true,
                ignore = false,      -- Garante que o Git não oculte arquivos ignorados
            },
			renderer = {
				root_folder_label = false,
				root_folder_modifier = ":t",
				indent_markers = {
					enable = true,
					icons = {
						corner = "└",
						edge = "│",
						item = "│",
						bottom = "─",
						none = " ",
					},
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "+",
							arrow_open = "-",
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
							symlink_open = "",
						},
						git = {
							unstaged = "",
							staged = "",
							unmerged = "",
							renamed = "󰏫",
							untracked = "◌",
							deleted = "",
							ignored = "󰘓",
						},
					},
					padding = " ",
				},
			},
		},
	}
}

