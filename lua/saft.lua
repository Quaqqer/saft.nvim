local M = {}

function M.add_filetype()
   vim.filetype.add({
      extension = {
         saf = 'saft',
      },
   })
end

function M.setup()
   M.add_filetype()
end

return M
