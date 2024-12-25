# PhD dissertation template - SPBU

This template is based on [arma-thesis](https://github.com/igankevich/arma-thesis/tree/master).

Here we use `pdflatex` instead of `xelatex` because of the speed.

You can use `build.sh <tex filename>` or `make` to compile the document. The output will be in the `build` directory.

**Remark**

1. **When you finally submit the dissertation to the university, any hyperlinks are not allowed. You should change the last line to following in the `preamble.tex`**
    >\usepackage[hidelinks,draft=true]{hyperref}
2. If you are using TeX Live 2024, which was released on March 13, 2024, you might encounter some font-related issues. To resolve these problems, please execute the following command:
    > sudo tlmgr update --self --all
3. Add any custom packages to the `custom.tex` file.
4. I made slight modifications to `ugost2008.bst` to display only the first letter of the author's first and middle names;
5. If you are using `vimtex`, you may need to adjust the `vimrc` file.
    ```
    let g:vimtex_compiler_latexmk = {
        \ 'aux_dir' : 'build',
        \ 'out_dir' : 'build',
        \ 'executable' : 'latexmk',
        \ 'options' : [
        \   '-interaction=nonstopmode',
        \   '-synctex=1',
        \   '-output-directory=build',
        \   '-pdf',
        \   '-pdflatex',
        \   '-bibtex',
        \   '-shell-escape',
        \   '-f',
        \ ],
        \}
    ```


**Wishing everyone good luck in the preparation process!**