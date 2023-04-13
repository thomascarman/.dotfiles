local scrollbar_ok, scrollbar = pcall(require, 'scrollbar')
if not scrollbar_ok then
    return
end

scrollbar.setup()
require('scrollbar.handlers.gitsigns').setup()
