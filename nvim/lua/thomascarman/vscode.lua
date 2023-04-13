local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

-- Run to check if packer exist and install if not
local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }
    
    -- utils
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    }
end)
