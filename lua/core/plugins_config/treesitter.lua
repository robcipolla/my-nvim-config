require'nvim-treesitter.configs'.setup {
  -- A list of parser names
  ensure_installed = {
    "lua",
    "go",
    "javascript",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true
  }
} 
