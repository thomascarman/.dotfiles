local colors_ok, colors = pcall(require, 'nvim-highlight-colors')
if not colors_ok then
    return
end

colors.setup {
    render = 'background', -- or 'foreground' or 'first_column'
    enable_named_colors = true,
    enable_tailwind = true
}
