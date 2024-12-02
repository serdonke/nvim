return {
    "rmagatti/auto-session",
    lazy = false,

    config = function()
        require("auto-session").setup({
            supressed_dirs = { "/home/donke", "/home/data", "/home/data/projects", "/home/data/repos", "/"} --WARN Very specific for my desktop setup 
        })
    end
}
