return {
  "telescope.nvim",

  dependencies = {
    "nvim-telescope/telescope-file-browser.nvim",
  },

  keys = {
    {
      ";f",
      function()
        require("telescope.builtin").find_files({
          cwd = require("lazy.core.config").options.root,
        })
      end,
    },
    {
      ";e",
      function()
        local telescope = require("telescope")
        local function telescope_buffer_dir()
          return vim.fn.expand("%:p:h")
        end

        telescope.extensions.file_browser.file_browser({
          path = "%:p:h",
          cwd = telescope_buffer_dir(),
          respect_gitignore = false,
          hidden = true,
          grouped = true,
          preview = false,
          initial_mode = "normal",
          layout_config = { height = 40 },
        })
      end,
    },
  },

  config = function(_, opts)
    local telescope = require("telescope")
    local fb_actions = require("telescope").extensions.file_browser.actions

    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      wrap_results = true,
      layout_strategy = "vertical",
      layout_config = {
        vertical = {
          mirror = true,
          prompt_position = "top",
          width = 0.80,
          height = 0.90,
          preview_height = 0,
          preview_cutoff = 0,
        },
      },
      borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
      sorting_strategy = "ascending",
      winblend = 0,
      mappings = {
        n = {},
      },
      prompt_prefix = " ",
      selection_caret = " ",
      entry_prefix = " ",
      path_display = { "filename_first" },
    })

    opts.pickers = {
      find_files = {
        disable_devicons = true,
        results_title = false,
        find_command = {
          "fd",
          "--type",
          "f",
          "-H",
          "--strip-cwd-prefix",
        },
      },
    }

    opts.extensions = {
      file_browser = {
        theme = "dropdown",
        hijack_netrw = true,
        mappings = {
          ["n"] = {
            ["N"] = fb_actions.create,
            ["h"] = fb_actions.goto_parent_dir,
            ["/"] = function()
              vim.cmd("startinsert")
            end,
          },
        },
        -- disable_devicons = true,
      },
    }

    telescope.setup(opts)

    telescope.load_extension("fzf")
    telescope.load_extension("file_browser")
  end,
}
