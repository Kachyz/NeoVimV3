return {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
}

-- CHEAT SHEET
-- <C> character
--
-- = NORMAL MODE =
-- cs"'       -> changes surrounded double quotes for single quotes
-- yss<C>     -> surround entire LINE
-- ysiw<C>    -> surround _inner word_ with character
--               * This could be mixed with movements like $ or 3iw
-- ds<C>      -> delete surrounded character
--
--  = VISUAL MODE =
-- S          -> surround selected text
