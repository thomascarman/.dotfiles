local toggleterm_ok, toggleterm = pcall(require, 'toggleterm')
if not toggleterm_ok then
    return
end

local shell = 'zsh'
local result = os.execute('zsh --version')
if result ~= true and result ~= 0 then
    shell = 'bash'
end

toggleterm.setup {
    shell =  shell,
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

function Lazygit_toggle()
    lazygit:toggle()
end

local Remap = require('thomascarman.utils').remap

local nnoremap = Remap.nnoremap

nnoremap("<A-1>", "<cmd>ToggleTerm<CR>")
nnoremap("<A-2>", "<cmd>2ToggleTerm<CR>")
nnoremap("<A-3>", "<cmd>3ToggleTerm<CR>")
nnoremap("<A-4>", "<cmd>4ToggleTerm<CR>")
nnoremap("<A-5>", "<cmd>5ToggleTerm<CR>")
nnoremap("<A-t>", "<C-\\><C-n><cmd>ToggleTermToggleAll<CR>")

nnoremap("<A-g>", "<cmd>lua Lazygit_toggle()<CR>")
