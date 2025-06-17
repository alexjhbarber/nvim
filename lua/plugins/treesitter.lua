return { 
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    prefer_git = false,
    compilers = {'zig'},
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "javascript", "php", "python", "markdown" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end 
}

