local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol
                                                                      .make_client_capabilities())

-- local opts = {noremap = true, silent = true, unique = true}
local opts = {noremap = true, silent = true}

local on_attach = function(_, bufnr)
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)

  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>i', '<cmd>lua vim.lsp.buf.code_action()<CR>',
                              opts)

  local enable_lsp_formater = true
  for _, ft in ipairs({'python', 'lua', 'json'}) do
    if vim.api.nvim_buf_get_option(bufnr, 'filetype') == ft then
      enable_lsp_formater = false
      break
    end
  end
  if enable_lsp_formater then
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>',
                                opts)
  end

end

local servers = {
  'my_clangd',
  'my_rls',
  'my_pyright',
  -- 'my_ocamllsp',
  -- 'my_tsserver',
  -- 'my_luals',
}
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {on_attach = on_attach, capabilities = capabilities}
end

require('lsp_signature').setup({bind = true, handler_opts = {border = 'single'}})
