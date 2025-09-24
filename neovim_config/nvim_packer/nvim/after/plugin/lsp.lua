-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "clangd" },
})

-- Use lspconfig (still works, no crash)
local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
    cmd = { "clangd", "--background-index", "--clang-tidy" },
    on_attach = function(client, bufnr)
        local opts = { buffer = bufnr }
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
        vim.keymap.set({ "n", "x" }, "<F3>", function()
            vim.lsp.buf.format({ async = true })
        end, opts)
        vim.keymap.set("n", "<F4>", vim.lsp.buf.code_action, opts)
    end,
})
