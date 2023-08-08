-- If Mason seems like it isn't installing an lsp, check the mason buffer (:Mason then space > F > Z) to make sure all of the LSPs are supported by mason (they don't match the docs!)

local LSPs = {
  "rust_analyzer",
  "html-lsp",
  "css-lsp",
}
return LSPs
