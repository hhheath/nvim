return {
    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup {}
        end,
    },
}
