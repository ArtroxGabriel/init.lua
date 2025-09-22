return {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
    user_default_options = {
        names = true, -- "Name" codes like Blue or red.  Added from `vim.api.nvim_get_color_map()`
        names_custom = false, -- Custom names to be highlighted: table|function|false
        RGB = true, -- #RGB hex codes
        RGBA = true, -- #RGBA hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = true, -- 0xAARRGGBB hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS *features*:
        -- names, RGB, RGBA, RRGGBB, RRGGBBAA, AARRGGBB, rgb_fn, hsl_fn
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Tailwind colors.  boolean|'normal'|'lsp'|'both'.  True sets to 'normal'
        tailwind = true, -- Enable tailwind colors
        -- parsers can contain values used in `user_default_options`
        sass = { enable = true, parsers = { "css" } }, -- Enable sass colors
        xterm = false, -- Enable xterm 256-color codes (#xNN, \e[38;5;NNNm)
      },
    }
}
