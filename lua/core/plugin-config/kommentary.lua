local kommentaryConfig = require("kommentary.config")
local tsCtxCommentStr = require("ts_context_commentstring.internal")

vim.g.kommentary_create_default_mappings = false

local languages = {
    lua = {
        prefer_single_line_comments = true,
    },
    c = {
        single_line_comment_string = "//",
        multi_line_comment_strings = { "{/*", "*/}" },
        prefer_single_line_comments = true,
    }
}

for language, item in pairs(languages) do
  if not item.single_line_comment_string then
    item.single_line_comment_string = "auto"
  end
  if not item.multi_line_comment_strings then
    item.multi_line_comment_strings = "auto"
  end
  item.hook_function = function()
    tsCtxCommentStr.update_commentstring()
  end
  kommentaryConfig.configure_language(language, item)
end
