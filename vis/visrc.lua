require("vis")
require("bind")

if not pcall(require, "plugins/vis-plug") then
  local plug_path = (os.getenv("XDG_CONFIG_HOME") or os.getenv("HOME") .. "/.config") ..
      "/vis/plugins/vis-plug"
  os.execute('git clone --quiet https://github.com/erf/vis-plug "' .. plug_path .. '"')
end
require("plugins")

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
  win.options.tabwidth = 2
  win.options.numbers = true
  win.options.relativenumbers = true
  vis:command("set layout v")
end)
