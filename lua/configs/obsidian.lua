return {
    workspaces = {
        {
            name = "personal-notes",
            path = "~/Documents/personal-notes",
        },
    },
    disable_frontmatter = true, -- i don't want frontmatter by default
    attachments = {
        -- The default folder to place images in via `:ObsidianPasteImg`.
        -- If this is a relative path it will be interpreted as relative to the vault root.
        -- You can always override this per image by passing a full path to the command instead of just a filename.
        img_folder = "Media",
    },
    ui = {
        enable = false, -- i literally just want the picker and pressing enter to take me to link
    },
}
