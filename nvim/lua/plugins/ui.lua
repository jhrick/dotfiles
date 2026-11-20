return {
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        view = "cmdline_popup",

        format = {
          cmdline = {
            icon = "",
            title = "",
          },
          search_down = {
            icon = "",
            title = "",
          },
          search_up = {
            icon = "",
            title = "",
          },
        },
      },

      views = {
        cmdline_popup = {
          position = {
            row = "50%",
            col = "50%",
          },

          size = {
            min_width = 50,
            width = "auto",
            height = "auto",
          },

          border = {
            style = "single",
            padding = { 0, 1 },
          },

          win_options = {
            winhighlight = {
              Normal = "Normal",
              FloatBorder = "NoiceCmdlinePopupBorder",
            },
          },
        },
      },

      presets = {
        command_palette = true,
      },
    },
  },
}
