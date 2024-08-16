# Todo

- [x] ~~install [neorg](https://github.com/nvim-neorg/neorg/)~~ fuck neorg the image.nvim doesn't work in my terminal
      [ ] - install all the necessary modules
- [x] install some image viewer
  - [x] ~make [image.nvim](https://github.com/3rd/image.nvim) work in my terminal~
    > [!NOTE]
    > migrated to kitty
  - [x] address an issue about not working in xfce4-terminal
- [ ] figure out, how to view pdf and docx files
- [x] setup [telescope-file-browser](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [x] setup lsp
- [x] work with keybinds
- [x] setup latex support
- [ ] setup RU locale support
- [x] make theme transparent
- [x] make noice transparent
- [x] fix bufferline
- [x] change `codeAction` sign from lspsaga's to default one from lspconfig

use this:

```lua
opts = {
ui = {
        code_action = 'your icon'
    }
}
```

- [x] change green color of brackets to gray(ish)
- [x] change rose-pine theme for terminal
- [x] remap `<C-c>` to switch modes
- [ ] address issue on `bufferline.nvim` that `BufferLineCloseOthers` throws error
- [x] disable `x256-color` in terminal
  > [!NOTE]
  > disabling it didn't provide any visual effect (why?)
  > [!WARNING]
  > cancelled: using markdown instead of latex
- [x] ~read about syncing latex with pdf readers (Zathura)~
- [ ] use [vim-be-good](https://github.com/ThePrimeagen/vim-be-good)
- [ ] handle reading pdf, odt and binaries
- [ ] handle php lsp (and probably rust)
- [x] configure and migrate to [kitty](https://sw.kovidgoyal.net/kitty/)
- [ ] make image.nvim redraw on autocmd
