vis:map(vis.modes.NORMAL,";",":")
vis:map(vis.modes.NORMAL," sv",":vsplit<Enter>")
vis:map(vis.modes.NORMAL," sh",":split<Enter>")

vis:map(vis.modes.NORMAL,"<M-y>",'"+y')
vis:map(vis.modes.VISUAL,"<M-y>",'"+y')
vis:map(vis.modes.VISUAL_LINE,"<M-y>",'"+y')

vis:map(vis.modes.NORMAL,"<M-p>",'"+p')
vis:map(vis.modes.VISUAL,"<M-p>",'"+p')
vis:map(vis.modes.VISUAL_LINE,"<M-p>",'"+p')

vis:map(vis.modes.NORMAL,"<C-l>","<C-w>l")
vis:map(vis.modes.NORMAL,"<C-h>","<C-w>h")
vis:map(vis.modes.NORMAL,"<C-j>","<C-w>j")
vis:map(vis.modes.NORMAL,"<C-k>","<C-w>k")
