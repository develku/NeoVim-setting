local keyMapper = function (from, to, mode, opts)
        local options = { noremap = true, silent = false} -- silent: false to see the output
        mode = mode or "n"

        -- if opts is not nil then use the basic vim.tbl_extend function to merge the options
        if opts then
                options = vim.tbl_extend("force", options, opts)
        end

        -- set the key mapping
        vim.keymap.set(mode, from, to ,options)
end

return { mapKey = keyMapper }

