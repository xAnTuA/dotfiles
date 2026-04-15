local opt = vim.opt
local o = vim.o
local fn = vim.fn
local v = vim.v

opt.cursorline = true
opt.numberwidth = 1
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 3
opt.tabstop = 3
opt.autoindent = true
opt.smartindent = true

opt.scrolloff = 10

-- Editing
opt.swapfile = false


opt.foldmethod = "indent"
opt.foldenable = true
opt.foldlevel = 99
opt.foldlevelstart = 99

opt.colorcolumn = "101"

o.foldtext = "v:lua.CustomFoldText()"

function _G.CustomFoldText()
    local line = fn.getline(v.foldstart)
    local count = v.foldend - v.foldstart + 1
    return line .. " ... " .. count .. " lines ... end"
end
