_G.terminal_id_set = {}
_G.status_of_terminal_active = function()
  local s = {}
  local n = 1
  for k, v in pairs(_G.terminal_id_set) do
    s[n] = k
    n = n + 1
  end
  if n == 1 then
    return ''
  end
  return ' [TERM: ' .. table.concat(s, ',') .. ']'
end

_G.terminal_id_current = nil
_G.status_terminal_id_current = function()
  if _G.terminal_id_current ~= nil then
    return ' [CURR: ' .. _G.terminal_id_current .. ']'
  end
  return ''
end

-- function dump(o)
--   if type(o) == 'table' then
--     local s = '{ '
--     for k, v in pairs(o) do
--       if type(k) ~= 'number' then
--         k = '"' .. k .. '"'
--       end
--       s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
--     end
--     return s .. '} '
--   else
--     return tostring(o)
--   end
-- end

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

  highlights = {FloatBorder = {guifg = '#73e3ff', guibg = 'NONE'}},

  on_open = function(term)
    _G.terminal_id_set[term.id] = true
    _G.terminal_id_current = term.id
  end,

  on_close = function(term)
    _G.terminal_id_current = nil
  end,

  on_exit = function(term)
    _G.terminal_id_set[term.id] = nil
  end,
}

