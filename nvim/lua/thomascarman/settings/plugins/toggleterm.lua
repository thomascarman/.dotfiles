require('toggleterm').setup {
    shell =  'bash',
    close_on_exit = true,
    direction = 'horizontal',
    float_opts = {
        border = 'double',
    },
    winbar = {
        enabled = true,
        name_formatter = function(term)
            return term.name
        end
    },
}

local Terminal  =  require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
    cmd = 'lazygit',
    hidden = true,
    direction = 'float',
})

function _lazygit_toggle()
    lazygit:toggle()
end

local Remap = require('thomascarman.utils').remap

local nnoremap = Remap.nnoremap
local tnoremap = Remap.tnoremap

nnoremap("<A-1>", "<cmd>ToggleTerm<CR>")
nnoremap("<A-2>", "<cmd>2ToggleTerm<CR>")
nnoremap("<A-3>", "<cmd>3ToggleTerm<CR>")
nnoremap("<A-4>", "<cmd>4ToggleTerm<CR>")
nnoremap("<A-5>", "<cmd>5ToggleTerm<CR>")
nnoremap("<A-t>", "<C-\\><C-n><cmd>ToggleTermToggleAll<CR>")

nnoremap("<A-g>", "<cmd>lua _lazygit_toggle()<CR>")
