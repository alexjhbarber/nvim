For nvim-treesitter

0. Delete all your tree sitter files in your nvim-data folder

Delete the Treesitter files so that we can start with a fresh installation of Treesitter with the new compiler.

If you use lazy, delete the treesitter files in the nvim-data folder and nvim-data\lazy folder

1. Install Zig

If you use scoop: scoop install zig

If you use chocolatey: choco install zig

Or visit the installation page for other ways to install Zig

2. Edit your init.lua file to use the Zig compiler instead of GCC

Put this code in your init file

require ('nvim-treesitter.install').compilers = { 'zig' }

3. Install each language

Open Nvim and let it install Treesitter.

Then run :TSUpdate and then :TSInstall <language>. Replace <language> for the language you want to install the parser for.
