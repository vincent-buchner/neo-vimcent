return {
  "goolord/alpha-nvim",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local startify = require("alpha.themes.startify")

    startify.section.header.val = {
      [[ _   _            _   _ _                          ]],
      [[ | \ | |          | | | (_)         ]],
      [[ |  \| | ___  ___ | | | |_ _ __ ___  ]],
      [[ | . ` |/ _ \/ _ \| | | | | '_ ` _ \ ]],
      [[ | |\  |  __/ (_) \ \_/ / | | | | | |]],
      [[ \_| \_/\___|\___/ \___/|_|_| |_| |_|]],
      [[=========================================================]],
      [[<LEADER>: Space]],
      [[Ctrl + p: File Lookup]],
      [[Ctrl + g: Grep]],
      [[Ctrl + n: File Tree]],
      [[<LEADER>gf: Format File]],
      [[Ctrl + b: Scroll Up]],
      [[Ctrl + f: Scroll Down]],
      [[Ctrl + Space: Complete]],
      [[Ctrl + e: Abort Complete]],
      [[Enter: Complete AutoCorrect]],
      [[gh: Learn More]],
      [[gd: Defintions]],
      [[<space>ca: Code Action]]

    }

    require("alpha").setup(
      startify.config
    )
  end,
}
