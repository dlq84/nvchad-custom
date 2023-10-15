---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- telescope find
    ["<leader>f"] = { "Find" },
    ["<leader>fm"] = nil,
    ["<leader>fF"] = {
      function()
        require("telescope.builtin").find_files { hidden = true, no_ignore = true }
      end,
      "Find all files",
    },
    ["<leader>fw"] = {
      function()
        require("telescope.builtin").live_grep()
      end,
      "Find words",
    },
    ["<leader>fW"] = {
      function()
        require("telescope.builtin").live_grep {
          additional_args = function(args)
            return vim.list_extend(args, { "--hidden", "--no-ignore" })
          end,
        }
      end,
      "Find words in all files",
    },
    ["<leader>fC"] = {
      function()
        require("telescope.builtin").commands()
      end,
      "Find commands",
    },

    -- git
    ["<leader>g"] = { "Git" },
    ["<leader>gc"] = { function() require("telescope.builtin").git_commits { use_file_path = true } end, "Git commits (current file)" },
    ["<leader>gC"] = { function() require("telescope.builtin").git_commits { use_file_path = false } end, "Git commits (repo)" },
    ["<leader>gb"] = { function() require("gitsigns").blame_line() end, "View Git blame" },
    ["<leader>gB"] = { function() require("gitsigns").blame_line { full = true } end, "View full Git blame" },
    ["<leader>gp"] = { function() require("gitsigns").preview_hunk() end, "Preview Git hunk" },
    ["<leader>gr"] = { function() require("gitsigns").reset_hunk() end, "Reset Git hunk" },
    ["<leader>gR"] = { function() require("gitsigns").reset_buffer() end, "Reset Git buffer" },
    ["<leader>gs"] = { function() require("gitsigns").blame_line() end, "Stage Git hunk" },
    ["<leader>gS"] = { function() require("gitsigns").blame_line() end, "Stage Git buffer" },
    ["<leader>gd"] = { function() require("gitsigns").blame_line() end, "View Git diff" },

    -- neotree
    ["<leader>e"] = { "<cmd>Neotree toggle<cr>", "Toggle Explorer" },

    -- LSP
    ["<leader>l"] = { "LSP" },
    ["<leader>lr"] = { function() require("telescope.builtin").lsp_references() end, "Refences of current symbol" },
    ["<leader>li"] = { function() require("telescope.builtin").lsp_implementations() end, "Implementation of current symbol" },
    ["<leader>ld"] = { function() require("telescope.builtin").lsp_definitions() end, "Definition of current symbol" },
    ["<leader>lt"] = { function() require("telescope.builtin").lsp_type_definitions() end, "Definition of current type" },
    -- ["<leader>"]
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
