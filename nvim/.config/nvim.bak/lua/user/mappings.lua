-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    -- Add markdown preview under UI meny
    ["<leader>up"] = {
      function()
        require("peek").open()
      end,
      desc = "Open markdown peek",
    },
    ["<leader>uP"] = {
      function()
        require("peek").close()
      end,
      desc = "Close markdown peek",
    },

    -- Todo jumping
    ["<leader>K"] = {
      function()
        require("todo-comments").jump_prev()
      end, 
      desc = "Jump to previous todo",
    },
    ["<leader>J"] = {
      function()
        require("todo-comments").jump_next()
      end, 
      desc = "Jump to next todo",
    },
    ["<leader>m"] = {"<cmd>TodoTelescope<cr>", desc = "Search todos"},

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- place this in one of your configuration file(s)

    -- surround macros
    ["<leader>s'"] = {"ciw''<esc>hp", desc = "Surround word with '"},
    ["<leader>ss'"] = {"^vg_c''<esc>hp", desc = "Surround line with '"},
    ["<leader>sb'"] = {"cib''<esc>hp", desc = "Surround inner block from [( to )] with '"},
    ["<leader>sB'"] = {"ciB''<esc>hp", desc = "Surround inner block from [{ to }] with '"},

    ["<leader>s\""] = {"ciw\"\"<esc>hp", desc = "Surround word with \""},
    ["<leader>ss\""] = {"^vg_c\"\"<esc>hp", desc = "Surround line with \""},
    ["<leader>sb\""] = {"cib\"\"<esc>hp", desc = "Surround inner block from [( to )] with \""},
    ["<leader>sB\""] = {"ciB\"\"<esc>hp", desc = "Surround inner block from [{ to }] with \""},

    ["<leader>st"] = {"ciw``<esc>hp", desc = "Surround word with `"},
    ["<leader>sst"] = {"^vg_c``<esc>hp", desc = "Surround line with `"},
    ["<leader>sbt"] = {"cib``<esc>hp", desc = "Surround inner block from [( to )] with `"},
    ["<leader>sBt"] = {"ciB``<esc>hp", desc = "Surround inner block from [{ to }] with `"},

    ["<leader>s<"] = {"ciw<><esc>hp", desc = "Surround word with <>"},
    ["<leader>ss<"] = {"^vg_c<><esc>hp", desc = "Surround line with <>"},
    ["<leader>sb<"] = {"cib<><esc>hp", desc = "Surround inner block from [( to )] with <>"},
    ["<leader>sB<"] = {"ciB<><esc>hp", desc = "Surround inner block from [{ to }] with <>"},

    ["<leader>s("] = {"ciw()<esc>hp", desc = "Surround word with ()"},
    ["<leader>ss("] = {"^vg_c()<esc>hp", desc = "Surround line with ()"},
    ["<leader>sb("] = {"cib()<esc>hp", desc = "Surround inner block from [( to )] with ()"},
    ["<leader>sB("] = {"ciB()<esc>hp", desc = "Surround inner block from [{ to }] with ()"},

    ["<leader>s{"] = {"ciw{}<esc>hp", desc = "Surround word with {}"},
    ["<leader>ss{"] = {"^vg_c{}<esc>hp", desc = "Surround line with {}"},
    ["<leader>sb{"] = {"cib{}<esc>hp", desc = "Surround inner block from [( to )] with {}"},
    ["<leader>sB{"] = {"ciB{}<esc>hp", desc = "Surround inner block from [{ to }] with {}"},

    ["<leader>s"] = {name = "Surround word"},
    ["<leader>ss"] = {name = "Surround line"},
    ["<leader>sb"] = {name = "Surround inner block from [( to )]"},
    ["<leader>sB"] = {name = "Surround inner block from [{ to }]"},

    -- HOP: 
    t = {
      function() 
        require("hop").hint_words() 
      end,
      desc = "Hop word *this* window",
    },
    T = {
      function() 
        require("hop").hint_words({ 
          multi_windows = true
        }) 
      end,
      desc = "Hop word *all* windows",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
