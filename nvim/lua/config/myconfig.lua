-- Trifoce configuration --
require("triforce").setup({
  enabled = true, -- Enable/disable the entire plugin
  gamification_enabled = true, -- Enable XP, levels, achievements

  -- Notification settings
  notifications = {
    enabled = true, -- Master toggle for all notifications
    level_up = true, -- Show level up notifications
    achievements = true, -- Show achievement unlock notifications
  },

  -- Keymap configuration
  keymap = {
    show_profile = "<leader>tp", -- Set to nil to disable default keymap
  },

  -- Auto-save interval (in seconds)
  auto_save_interval = 300, -- Save stats every 5 minutes

  -- Add custom language support
  custom_languages = {
    gleam = { icon = "✨", name = "Gleam" },
    odin = { icon = "🔷", name = "Odin" },
    -- Add more languages...
  },

  -- Customize level progression (optional)
  level_progression = {
    tier_1 = { min_level = 1, max_level = 10, xp_per_level = 300 }, -- Levels 1-10
    tier_2 = { min_level = 11, max_level = 20, xp_per_level = 500 }, -- Levels 11-20
    tier_3 = { min_level = 21, max_level = math.huge, xp_per_level = 1000 }, -- Levels 21+
  },

  -- Customize XP rewards (optional)
  xp_rewards = {
    char = 1, -- XP per character typed
    line = 1, -- XP per new line
    save = 50, -- XP per file save
  },

  -- Add filetypes to be excluded
  ignore_ft = {},

  -- Override heatmap highlight groups (hex colors or existing hl groups)
  heat_highlights = {
    TriforceHeat1 = "#f0f0a0",
    TriforceHeat2 = "#f0a0a0",
    TriforceHeat3 = "#a0a0a0",
    TriforceHeat4 = "#707070",
    -- Or link to your colorscheme's groups:
    -- TriforceHeat1 = 'DiffText',
  },

  -- Enable some debugging messages
  debug = false,
})

-- Swowkeys configuration --
local M = {
  keys = {},
  w = 1,
  extmark_id = nil,

  config = {
    -- :h nvim_open_win params
    winopts = {
      -- focusable = false,
      relative = "editor",
      style = "minimal",
      border = "single",
      height = 1,
      row = 1,
      col = 0,
      zindex = 100,
    },

    winhl = "FloatBorder:Comment,Normal:Normal",

    timeout = 3, -- in secs
    maxkeys = 3,
    show_count = false,
    excluded_modes = {}, -- example: {"i"}

    -- bottom-left, bottom-right, bottom-center, top-left, top-right, top-center
    position = "top-right",

    keyformat = {
      ["<BS>"] = "󰁮 ",
      ["<CR>"] = "󰘌",
      ["<Space>"] = "󱁐",
      ["<Up>"] = "󰁝",
      ["<Down>"] = "󰁅",
      ["<Left>"] = "󰁍",
      ["<Right>"] = "󰁔",
      ["<PageUp>"] = "Page 󰁝",
      ["<PageDown>"] = "Page 󰁅",
      ["<M>"] = "Alt",
      ["<C>"] = "Ctrl",
    },
  },
}

return M
