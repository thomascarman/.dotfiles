return require('packer').startup(function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }
    
    -- utils
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    }
end)