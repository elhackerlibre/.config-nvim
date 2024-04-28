return {
  "tpope/vim-fugitive",
  cmd = {"G", "Git"},
  keys = {
    {"<A>ga", ":Git fetch --all -p<cr>", desc = "Git fetch"},
    {"<A>gl", ":Git pull<cr>", desc = "Git pull"},
    {"<A>gp", ":Git push<cr>", desc = "Git push"},

  },
}
