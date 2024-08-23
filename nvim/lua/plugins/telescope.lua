return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function() 
        require('telescope').setup({
          defaults = {
            layout_strategy = "horizontal",
            layout_config = {
              horizontal = { prompt_position = "top" },
            },
            sorting_strategy = "ascending",
          }})
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      end
    }
