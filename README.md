Paste Operator
==============

Paste Operator provides vim mappings to paste text using motion or visual
selection.  It removes the selected motion or selection and replaces it with
whatever buffer you request.  If you want to use the paste button and not the
operator, simply hit `pp`

Usage
-----

If you want to use the paste button and not the operator, simply hit `pp`.
The default mapping is `p`, and can be followed by any motion or text
object. For instance:

- `pp`    => regular paste
- `piw`   => replaces word with paste buffer
- `pi'`   => replaces inside quotes with paste buffer
- `"1pi'` => replaces inside quotes with paste buffer `1`


Options
-------

`paste-operator` currently requires no options.


Installation
------------

If you don't have a preferred installation method, I recommend using
[vim-plug](https://github.com/junegunn/vim-plug) as it works well with neovim.

Assuming you have vim-plugged installed and configured, the following steps will
install the plugin:

Add the following line to your `~/.vimrc` and then run `:PlugInstall` from
within Vim:

``` vim
call plug#begin()
" ...
Plug 'blackbeltscripting/vim-paste-operator'
" ...
call plug#end()
```

