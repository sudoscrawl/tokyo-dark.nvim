# tokyo-dark.nvim

A Neovim colorscheme plugin ported from VS Code Tokyo Night Dark theme.

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "sudoscrawl/tokyo-dark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyo-dark").setup({
      transparent = false,
      italic_comments = true,
    })
    vim.cmd([[colorscheme tokyo-dark]])
  end,
}
```

## Configuration

| Option | Type | Default | Description |
| --- | --- | --- | --- |
| `transparent` | `boolean` | `false` | Enable/disable transparent background |
| `italic_comments` | `boolean` | `true` | Enable/disable italic comments |

## Usage

```vim
colorscheme tokyo-dark
```

Or in Lua:

```lua
vim.cmd("colorscheme tokyo-dark")
```
