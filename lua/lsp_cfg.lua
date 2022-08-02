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
      root_dir = util.root_pattern('compile_commands.json', 'compile_flags.txt'),
      single_file_support = true,
    },
  }
end

if not configs.my_rls then
  configs.my_rls = {
    default_config = {
      cmd = {'/Users/yunlingzhu/opt/rust-analyzer/rust-analyzer'},
      init_options = {
        cargo = {loadOutDirsFromCheck = true},
        procMacro = {enable = true},
      },
      filetypes = {'rust'},
      root_dir = util.root_pattern('Cargo.toml'),
    },
  }
end

if not configs.my_pyright then
  configs.my_pyright = {
    default_config = {
      cmd = {'/Users/yunlingzhu/.yarn/bin/pyright-langserver', '--stdio'},
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
      root_dir = util.root_pattern('pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt',
                                   'Pipfile', 'pyrightconfig.json'),
      single_file_support = true,
    },
  }
end

if not configs.my_luals then
  local runtime_path = vim.split(package.path, ';')
  table.insert(runtime_path, 'lua/?.lua')
  table.insert(runtime_path, 'lua/?/init.lua')

  configs.my_luals = {
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
      root_dir = util.find_git_ancestor,
      single_file_support = true,
    },
  }
end
