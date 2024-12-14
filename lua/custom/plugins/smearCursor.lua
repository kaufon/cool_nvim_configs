return {
  "sphamba/smear-cursor.nvim",
  event = "VeryLazy",
  opts = {
    cursor_color = "#d3cdc3",

    -- Background color. Defaults to Normal GUI background color if not set.
    normal_bg = "#12121E",

    -- Smear cursor when switching buffers or windows.
    smear_between_buffers = true,

    -- Smear cursor when moving within line or to neighbor lines.
    smear_between_neighbor_lines = true,

    scroll_buffer_space = true,
    legacy_computing_symbols_support = false,
  },
}
