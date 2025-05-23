return {
    automatic_enable = false, -- HACK: rely on lspconfig[server_name].setup to enable the LSPs.
    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup {}
        end,
    },
}
