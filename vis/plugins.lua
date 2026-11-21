local plug = require("plugins/vis-plug")

plug.init(
  {
    {"Nomarian/vis-commentary", alias = "comment"},
    {"codeberg.org/luxanna/vis-autoclose"},
  },
  true
)

local comment = plug.plugins.comment
comment()
comment.MapBlocks("<C-c>")
