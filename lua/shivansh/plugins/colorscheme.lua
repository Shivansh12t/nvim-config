return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    local bg = "#011628"
    local bg_dark = "#011423"
    local bg_highlight = "#143652"
    local bg_search = "#0A64AC"
    local bg_visual = "#275378"
    local fg = "#CBE0F0"
    local fg_dark = "#B4D0E9"
    local fg_gutter = "#627E97"
    local border = "#547998"

    -- Ensure transparent option is passed
    local transparent = true

    require("tokyonight").setup({
      style = "night",
      transparent = transparent, -- Set transparency
      view = {
        cursorline = false,
        separator_style = "none",
      },
      on_colors = function(colors)
        colors.bg = bg
        colors.bg_dark = transparent and colors.none or bg_dark
        colors.bg_float = transparent and colors.none or bg_dark
        colors.bg_highlight = bg_highlight
        colors.bg_popup = bg_dark
        colors.bg_search = bg_search
        colors.bg_sidebar = transparent and colors.none or bg_dark
        colors.bg_statusline = transparent and colors.none or bg_dark
        colors.bg_visual = bg_visual
        colors.border = border
        colors.fg = fg
        colors.fg_dark = fg_dark
        colors.fg_float = fg
        colors.fg_gutter = fg_gutter
        colors.fg_sidebar = fg_dark
      end
    })

    -- Apply the colorscheme
    vim.cmd("colorscheme tokyonight")

    -- Set transparency for Normal and NormalFloat
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- Keep terminal transparency
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- Transparent floating windows

    -- Optionally, you can set other highlights to "none" if needed for transparency
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  end
}
