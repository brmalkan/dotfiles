return {
  {
    "nvim-telescope/telescope.nvim",

    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },

    opts = {
      defaults = {
        file_ignore_patterns = {
          "^%.git/",
          "^node_modules/",
        },
      },

      pickers = {
        find_files = {
          hidden = false,
          no_ignore = false,
        },
      },

      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    },

    config = function(_, opts)
      require("telescope").setup(opts)
      require("telescope").load_extension("fzf")
    end,
  },
}
