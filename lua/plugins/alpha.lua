return {
  "goolord/alpha-nvim",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local startify = require("alpha.themes.startify")

    startify.section.header.val = {
      [[ _   _            _   _ _                          ]],
      [[ | \ | |          | | | (_)                        | |  ]],
      [[ |  \| | ___  ___ | | | |_ _ __ ___   ___ ___ _ __ | |_  ]],
      [[ | . ` |/ _ \/ _ \| | | | | '_ ` _ \ / __/ _ \ '_ \| __| ]], 
      [[ | |\  |  __/ (_) \ \_/ / | | | | | | (_|  __/ | | | |_  ]],
      [[ \_| \_/\___|\___/ \___/|_|_| |_| |_|\___\___|_| |_|\__| ]], 
    }

    require("alpha").setup(
      startify.config
    )
  end,
}

