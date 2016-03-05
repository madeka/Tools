//Display file system block usage in human readable output
alias du='du -ch'



VIM		VIM		VIM		VIM		VIM		VIM		VIM		VIM		VIM		VIM		VIM
	
%%%%%%%%%%%%%%%%%% SEARCH & REPLACE %%%%%%%%%%%%%%%
:%s/foo/bar/g
//Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.

:s/foo/bar/g
//Find each occurrence of 'foo' (in the current line only), and replace it with 'bar'

:%s/foo/bar/gc
//Change each 'foo' to 'bar', but ask for confirmation first.

:%s/\<foo\>/bar/gc
//Change only whole words exactly matching 'foo' to 'bar'; ask for confirmation.
http://vim.wikia.com/wiki/Search_and_replace
