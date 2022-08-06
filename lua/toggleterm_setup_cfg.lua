require('toggleterm').setup {
  direction = 'float',
  float_opts = {
    border = 'single',
    width = function()
      return math.floor(vim.o.columns * 0.618)
    end,
    height = function()
      return math.floor(vim.o.lines * 0.618)
    end,
    winblend = 0,
  },
  shade_terminals = false,
  open_mapping = [[<C-\>]],
}

_G.num_of_terminal_active = function()
  return #require('toggleterm.terminal').get_all()
end
