## WorkspaceSymbols troubleshooting

This serves as a test lib for https://github.com/elixir-lsp/elixir-ls/issues/686

* Use the `test.code-workspace` file to open this as a workspace in VScode
* Open a file in `my_dep.ex` and watch ElixirLS output
  * ElixirLS output should completely successfully
  * Once done ElixirLS compiling, there should no longer be a `beam.smp` process
      * Verify with `Activity Monitor` on MacOS or `ps $(pgrep beam.smp) | grep ElixirLS`
* open a file in `my_fw.ex`
  * ElixirLS output will constantly try to compile `WorkspaceSymbols`
* open another file in `my_dep.ex`
  * Look at ElixirLS output for `my_dep` - It will now have the constant compilationgit
