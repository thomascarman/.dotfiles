local augroup = require('thomascarman.utils.augroup')

-- Setup format for svelte to show as html
augroup('sveltegroup')(function(autocmd)
    autocmd({ 'BufNewFile', 'BufRead' }, { pattern = '*.svelte'}, 'set ft=html')
end)

augroup('vimwikigroup')(function(autocmd)
    autocmd({ 'BufNewFile', 'BufRead' }, { pattern = 'diary.md'}, 'VimwikiDiaryGenerateLinks')
    autocmd({ 'BufNewFile', 'BufRead' }, { pattern = 'Tags.md'}, 'VimwikiGenerateTagLinks')
    --autocmd({ 'BufNewFile' }, { pattern = '*/diary/*.md'}, function()
    --    vim.cmd[[%!echo diary]]
    --end)
end)

