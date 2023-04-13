local colors_ok, colors = pcall(require, 'nvim-highlight-colors')
if not colors_ok then
    return
end

colors.setup {
    render = 'background', -- or 'foreground' or 'first_column'
    enable_named_colors = true,
    enable_tailwind = true,
    custom_colors = {
        -- Light Background
        { label = 'primary%-100', color = '#fbf1c7' },
        { label = 'primary%-200', color = '#ebdbb2' },
        { label = 'primary%-300', color = '#d5c4a1' },
        { label = 'primary%-400', color = '#bdae93' },
        { label = 'primary%-500', color = '#a89984' },

        -- Light Foreground
        { label = 'primary%-600', color = '#7c6f64' },
        { label = 'primary%-700', color = '#665c54' },
        { label = 'primary%-800', color = '#504945' },
        { label = 'primary%-900', color = '#3c3836' },
        { label = 'primary%-1000', color = '#282828' },

        -- Dark Background
        { label = 'primary%-dark%-100', color = '#282828' },
        { label = 'primary%-dark%-200', color = '#3c3836' },
        { label = 'primary%-dark%-300', color = '#504945' },
        { label = 'primary%-dark%-400', color = '#665c54' },
        { label = 'primary%-dark%-500', color = '#7c6f64' },

        -- Dark Foreground
        { label = 'primary%-dark%-600', color = '#a89984' },
        { label = 'primary%-dark%-700', color = '#bdae93' },
        { label = 'primary%-dark%-800', color = '#d5c4a1' },
        { label = 'primary%-dark%-900', color = '#ebdbb2' },
        { label = 'primary%-dark%-1000', color = '#fbf1c7' },

        -- Light Colors
        { label = 'primary%-red', color = '#fb4934' },
        { label = 'primary%-green', color = '#b8bb26' },
        { label = 'primary%-yellow', color = '#fabd2f' },
        { label = 'primary%-blue', color = '#83a598' },
        { label = 'primary%-purple', color = '#d3869b' },
        { label = 'primary%-aqua', color = '#8ec07c' },
        { label = 'primary%-orange', color = '#f38019' },
        { label = 'primary%-gray', color = '#a89984' },

        -- Dark Colors
        { label = 'primary%-dark%-red', color = '#cc241d' },
        { label = 'primary%-dark%-green', color = '#98971a' },
        { label = 'primary%-dark%-yellow', color = '#d79921' },
        { label = 'primary%-dark%-blue', color = '#458588' },
        { label = 'primary%-dark%-purple', color = '#b16286' },
        { label = 'primary%-dark%-aqua', color = '#689d6a' },
        { label = 'primary%-dark%-orange', color = '#d65d0e' },
        { label = 'primary%-dark%-gray', color = '#928374' },
    }
}
