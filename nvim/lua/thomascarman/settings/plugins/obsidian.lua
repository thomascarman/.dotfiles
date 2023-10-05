local obsidian_ok, obsidian = pcall(require, 'obsidian')
if not obsidian_ok then
    return
end


obsidian.setup {
    dir = "~/.vault/docs",
    daily_notes = {
        folder = "diary",
        template = "journal-daily.md",
    },
    notes_subdir = "notes",
    new_notes_location = "notes_subdir",
    templates = {
        subdir = "templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
        -- A map for custom variables, the key should be the variable and the value a function
        substitutions = {}
    },

    finder = "telescope.nvim",
    sort_by = "modified",
    sort_reversed = true,
    open_notes_in = "current"
}
