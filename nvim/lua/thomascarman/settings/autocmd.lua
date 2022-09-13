local augroup = require('thomascarman.utils.augroup')

augroup('vimwikigroup')(function(autocmd)
    autocmd({ 'BufNewFile', 'BufRead' }, { pattern = 'diary.md'}, 'VimwikiDiaryGenerateLinks')
    autocmd({ 'BufNewFile', 'BufRead' }, { pattern = 'Tags.md'}, 'VimwikiGenerateTagLinks')
    --autocmd({ 'BufNewFile' }, { pattern = '*/diary/*.md'}, function()
    --    vim.cmd[[%!echo diary]]
    --end)
end)

