Paste Operator
==============

Paste Operator provides vim mappings to paste text using motion.  It removes
the selected motion or selection and replaces it with whatever buffer you
request.  If you want to use the paste button and not the operator, simply
hit `pp`. To paste backwards, you can do either `pP` or the regular `P`.

Usage
-----

The default mapping is `p`, and can be followed by any motion or text
object. For instance:

- `pp`    => regular paste
- `pP`    => same as `P`
- `paw`   => replaces all word with paste buffer `0`
- `pi"`   => replaces inside double quotes with paste buffer
- `"ypi'` => replaces inside single quotes with paste buffer `y`


Options
-------

`paste-operator` currently requires no options.


Installation
------------

If you don't have a preferred installation method, I recommend using
[vim-plug](https://github.com/junegunn/vim-plug) as it works well with
[neovim](https://neovim.io/).

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

