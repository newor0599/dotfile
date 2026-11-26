local plug = require("plugins/vis-plug")

plug.init(
  {
    { "Nomarian/vis-commentary", alias = "comment" },
    { "codeberg.org/luxanna/vis-autoclose" },
  },
  true
)

local comment = plug.plugins.comment
comment()
comment.MapBlocks("<C-c>")

local oil = require("vis-oil")
oil()
oil.options.show_hidden = true
oil.options.attributes = { "%D %H:%M" }
oil.options.sort = { "directory", "hidden d", "size" }
oil.options.separator = "┃ "
