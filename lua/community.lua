-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.colorscheme.tokyodark-nvim" },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = "mfussenegger/nvim-dap",
    ft = "python",
    config = function(_, opts)
      -- Specify the path to your global Python interpreter
      local custom_python_path = "/usr/bin/python"

      require("dap-python").setup(custom_python_path, opts)
    end,
  },
}
