return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      -- General appearance
      hide_root_node = true,
      retain_hidden_root_indent = false,
      enable_diagnostics = false,
      enable_git_status = true,
      enable_opened_markers = false,
      enable_modified_markers = true,

      -- Sidebar
      window = {
        position = "left",
        width = 30,
        mappings = {
          ["<space>"] = "none",
          ["l"] = "open",
          ["h"] = "close_node",
        },
      },

      -- Filesystem
      filesystem = {
        bind_to_cwd = true,
        follow_current_file = {
          enabled = true,
          leave_dirs_open = false,
        },
        group_empty_dirs = true,

        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            ".DS_Store",
            "thumbs.db",
          },
        },
      },

      -- Remove unnecessary source tabs
      source_selector = {
        winbar = false,
        statusline = false,
      },

      -- Icons and indentation
      default_component_configs = {
        indent = {
          indent_size = 2,
          padding = 1,
          with_markers = true,
          indent_marker = "│",
          last_indent_marker = "└",
          highlight = "NeoTreeIndentMarker",

          with_expanders = true,
          expander_collapsed = "›",
          expander_expanded = "⌄",
          expander_highlight = "NeoTreeExpander",
        },

        icon = {
          folder_closed = "󰉋",
          folder_open = "󰝰",
          folder_empty = "󰉖",
          folder_empty_open = "󰷏",
          selected = "󰄾",

          default = "󰈔",
          highlight = "NeoTreeFileIcon",
          use_filtered_colors = true,
        },

        modified = {
          symbol = "●",
          highlight = "NeoTreeModified",
        },

        git_status = {
          symbols = {
            added = "✚",
            deleted = "✖",
            modified = "●",
            renamed = "󰁕",
            untracked = "○",
            ignored = "◌",
            unstaged = "󰄱",
            staged = "✓",
            conflict = "!",
          },
        },
      },
    },
  },
}
