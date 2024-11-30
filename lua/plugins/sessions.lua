return {
    "rmagatti/auto-session",
    lazy = false,

    config = function()
        require("auto-session").setup({
            supressed_dirs = { "~/", "~/data", "~/data/projects", "~/data/repos", "/"} --WARN Very specific for my desktop setup 
        })
    end
}
