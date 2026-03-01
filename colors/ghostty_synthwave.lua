-- Save as ~/.config/nvim/colors/ghostty_synth.lua

-- Clear existing highlights
vim.cmd 'hi clear'
if vim.fn.exists 'syntax_on' then
  vim.cmd 'syntax reset'
end
vim.g.colors_name = 'ghostty_synth'

local c = {
  bg = '#000000',
  fg = '#dad9c7',
  cursor = '#19cde6',
  black = '#000000',
  red = '#f6188f', -- Hot Pink
  green = '#1ebb2b',
  yellow = '#fdf834',
  blue = '#2186ec',
  orange = '#f85a21', -- Magenta/Orange in your palette
  cyan = '#12c3e2',
  white = '#ffffff',
  bright_black = '#7f7094',
  bright_red = '#f841a0',
  bright_cyan = '#19cde6',
}

-- Helper function for highlights
local function hl(group, options)
  vim.api.nvim_set_hl(0, group, options)
end

-- --- UI HIGHLIGHTS ---
hl('Normal', { fg = c.fg, bg = c.bg })
hl('Cursor', { fg = c.bg, bg = c.cursor })
hl('Visual', { fg = c.bg, bg = c.bright_cyan }) -- Selection
hl('LineNr', { fg = c.bright_black })
hl('CursorLine', { bg = '#111111' })
hl('StatusLine', { fg = c.fg, bg = '#1a1a1a' })

-- --- SYNTAX HIGHLIGHTS ---
hl('Comment', { fg = c.bright_black, italic = true })
hl('Constant', { fg = c.orange })
hl('String', { fg = c.yellow })
hl('Identifier', { fg = c.bright_cyan })
hl('Function', { fg = c.blue })
hl('Statement', { fg = c.red, bold = true })
hl('PreProc', { fg = c.red })
hl('Type', { fg = c.cyan })
hl('Special', { fg = c.bright_red })
hl('Todo', { fg = c.bg, bg = c.yellow, bold = true })

-- --- TERMINAL COLORS ---
-- This ensures :term matches your Ghostty palette exactly
vim.g.terminal_color_0 = '#000000'
vim.g.terminal_color_1 = '#f6188f'
vim.g.terminal_color_2 = '#1ebb2b'
vim.g.terminal_color_3 = '#fdf834'
vim.g.terminal_color_4 = '#2186ec'
vim.g.terminal_color_5 = '#f85a21'
vim.g.terminal_color_6 = '#12c3e2'
vim.g.terminal_color_7 = '#ffffff'
vim.g.terminal_color_8 = '#7f7094'
vim.g.terminal_color_9 = '#f841a0'
vim.g.terminal_color_10 = '#25c141'
vim.g.terminal_color_11 = '#fdf454'
vim.g.terminal_color_12 = '#2f9ded'
vim.g.terminal_color_13 = '#f97137'
vim.g.terminal_color_14 = '#19cde6'
vim.g.terminal_color_15 = '#ffffff'
