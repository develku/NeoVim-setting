return {
  "echasnovski/mini.icons",
  config = function()
    require("mini.icons").setup({
      -- Icon style: 'glyph' or 'ascii' or 'ascii-inverted'
      style = "glyph",

      -- Customize per category. See `:h MiniIcons.config` for details.
      default   = {},
      directory = {},
      extension = {},
      file      = {},
      filetype  = {},
      os        = {},
      lsp = {
        copilot = { glyph = "", hl = "MiniIconsRed" }, -- Copilot icon customization
        supermaven = { glyph = "󱍅", hl = "MiniIconsRed" }, -- Supermaven icon customization
      },
    })

    -- -- Control which extensions will be considered during "file" resolution
    -- use_file_extension = function(ext)
    --   -- Only using the 'ext' argument, 'file' is removed
    --   return true
    -- end
  end,
}
