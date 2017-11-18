# Remaining TODOs
There are <x> remaining TODOs in this file!
This plugin tells you about the TODOs remaining in a file when closing it.

## Usage

* When set up, the plugin automatically triggers the `Remaining_Todos()` function
whenever you quit a file.

* Otherwise, if you want to have an idea about the TODOs in the current file
while editing it, you can call the `:Todos` command, which similarly triggers 
the `Remaining_Todos()` function.

* You can also create a mapping of you own by adding the following line to the **remaining-todos.vim** file:
```vim
map <your_mapping> :call <SID>Remaining_Todos()
```

## Notes

* Using this plugin may be annoying if you're a multiple-windows Vim user. When 
closing all the open buffers at once (`:qa`), you get many messages like
```
There are x remaining TODOS in this file
There are y remaining TODOS in this file
There are z remaining TODOS in this file
...
```
and you might don't want such a behavior.

## License

MIT.
