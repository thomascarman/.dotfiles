local M = {}

function M.exists(file)
   local ok, err, code = os.rename(vim.fn.expand(file), vim.fn.expand(file))
   if not ok then
       if code == 13 then
           -- permissions have been denied, but it exists
           return true
       end
   end
   return ok, err
end

function M.isdir(path)
    return M.exists(path .. '/')
end

function M.augroup(group)
    vim.api.nvim_create_augroup(group, { clear = true })

    return function(autocmds)
        autocmds(function(event, opts, command)
            opts.group = group
            if type(command) == 'function' then
                opts.callback = command
            else
                opts.command = command
            end
            vim.api.nvim_create_autocmd(event, opts)
        end)
    end
end

function M.filter(t, filterIter)
    local out = {}

    for k, v in pairs(t) do
        if filterIter(v, k, t) then table.insert(out, v) end
    end

    return out
end

function M.getOSName()
    local BinaryFormat = package.cpath:match("%p[\\|/]?%p(%a+)")

    if BinaryFormat == 'dll' then
        return 'Windows'
    elseif BinaryFormat == 'so' then
        return 'Linux'
    elseif BinaryFormat == 'dylib' then
        return 'MacOS'
    end
end

local function bind(op, outer_opts)
    outer_opts = outer_opts or { noremap = true }
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.api.nvim_set_keymap(op, lhs, rhs, opts)
    end
end

M.remap = {}

M.remap.nmap = bind("n", { noremap = false })
M.remap.nnoremap = bind("n")
M.remap.vnoremap = bind("v")
M.remap.xnoremap = bind("x")
M.remap.inoremap = bind("i")
M.remap.tnoremap = bind("t")

-- local l = {
--     'strawberry',
--     'star',
--     'stellar',
-- }
-- 
-- vim.api.nvim_create_user_command('Test',
--     function (opts)
--         print(vim.inspect(opts.args))
--         print(vim.inspect(M[opts.args]))
--     end,
--     {
--         nargs = 1,
--         complete = function (ArgLead, CmdLine, CursorPos)
--             local out = M.filter(l, function (o) return string.match(o, ArgLead) end)
--             return out
--         end,
--     }
-- )

return M
