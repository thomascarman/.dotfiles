require('tabline').setup {
    enable = false,
    options = {
        section_separators = {'', ''},
        component_separators = {'', ''},
        max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
        show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
        show_devicons = true, -- this shows devicons in buffer section
        show_bufnr = false, -- this appends [bufnr] to buffer section,
        show_filename_only = true, -- shows base filename only instead of relative path in filename
        modified_icon = "+ ", -- change the default modified icon
        modified_italic = true, -- set to true by default; this determines whether the filename turns italic if modified
        show_tabs_only = true, -- this shows only tabs instead of tabs + buffers
    },
}

local augroup = require('thomascarman.utils.augroup');

augroup('tablinegroup')(function (autocmd)
    autocmd({ 'BufRead' }, { pattern = '*' }, function ()
        local data = vim.t.tabline_data
        if data.show_all_buffers == true then
            data.show_all_buffers = false
            vim.t.tabline_data = data
            vim.cmd([[redrawtabline]])
        end
    end)
end)
