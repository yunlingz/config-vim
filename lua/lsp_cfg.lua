local configs = require('lspconfig.configs')
local util = require('lspconfig.util')

vim.fn.sign_define('LspDiagnosticsSignError', {
  text = '❯',
  texthl = 'LspDiagnosticsSignError',
})
vim.fn.sign_define('LspDiagnosticsSignError', {
  text = '❯',
  texthl = 'LspDiagnosticsSignError',
})
vim.fn.sign_define('LspDiagnosticsSignError', {
  text = '❯',
  texthl = 'LspDiagnosticsSignError',
})
vim.fn.sign_define('LspDiagnosticsSignError', {
  text = '❯',
  texthl = 'LspDiagnosticsSignError',
})

-- check if it's already defined for when reloading this file.
if not configs.my_clangd then
  configs.my_clangd = {
    default_config = {
      cmd = {
        '/usr/local/opt/llvm/bin/clangd',
        '--clang-tidy',
        '--fallback-style=google',
      },
      init_options = {
        fallbackFlags = {
          '-xc++',
          '-std=c++17',
          '-pedantic',
          '-Wall',
          '-Wextra',
          '-fno-exceptions',
          '-fno-rtti',
          '-pthread',
          '-I/usr/local/include',
          '-I/usr/local/Cellar/fmt/7.1.3/include',
        },
      },
      filetypes = {'cpp', 'c'},
      root_dir = function(fname)
        return util.root_pattern('compile_commands.json', 'compile_flags.txt')(fname) or
                   util.path.dirname(fname)
      end,
    },
  }
end

if not configs.my_rls then
  configs.my_rls = {
    default_config = {
      cmd = {'/Users/ling/opt/rust-analyzer'},
      init_options = {
        cargo = {loadOutDirsFromCheck = true},
        procMacro = {enable = true},
      },
      filetypes = {'rust'},
      root_dir = function(fname)
        return util.root_pattern('Cargo.toml')(fname) or util.path.dirname(fname)
      end,
    },
  }
end

if not configs.my_pyright then
  configs.my_pyright = {
    default_config = {
      cmd = {'/Users/ling/.yarn/bin/pyright-langserver', '--stdio'},
      settings = {
        python = {
          analysis = {
            autoSearchPaths = true,
            useLibraryCodeForTypes = true,
            diagnosticMode = 'workspace',
          },
        },
      },
      filetypes = {'python'},
      root_dir = function(fname)
        return util.root_pattern('setup.py', 'pyproject.toml', 'setup.cfg', 'requirements.txt',
                                 '.git')(fname) or util.path.dirname(fname)
      end,
    },
  }
end

if not configs.my_deno then
  configs.my_deno = {
    default_config = {
      cmd = {'/usr/local/bin/deno', 'lsp'},
      init_options = {enable = true, lint = true},
      filetypes = {'typescript'},
      root_dir = function(fname)
        return util.root_pattern('deps.ts')(fname) or util.path.dirname(fname)
      end,
    },
  }
end

if not configs.my_lualsp then
  local runtime_path = vim.split(package.path, ';')
  table.insert(runtime_path, 'lua/?.lua')
  table.insert(runtime_path, 'lua/?/init.lua')

  configs.my_lualsp = {
    default_config = {
      cmd = {'lua-language-server'},
      settings = {
        Lua = {
          runtime = {version = 'LuaJIT', path = runtime_path},
          diagnostics = {globals = {'vim'}},
          workspace = {library = vim.api.nvim_get_runtime_file('', true)},
          telemetry = {enable = false},
        },
      },
      filetypes = {'lua'},
      root_dir = function(fname)
        return util.root_pattern('.git')(fname) or util.path.dirname(fname)
      end,
    },
  }
end

