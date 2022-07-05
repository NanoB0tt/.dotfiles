local neogit = require('neogit')
local nnoremap = require('NanoB0tt.keymap').nnoremap

neogit.setup{}

nnoremap("<leader>gs", function()
    neogit.open({ })
end)

