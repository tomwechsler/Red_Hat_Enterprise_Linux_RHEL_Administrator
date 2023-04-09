# The vim cheatsheet

**How do I get into the editor mode now?**

 (i) for 'insert', this immediately switches vim to insert mode  
 (I) moves the cursor to the beginning of the line and enters insert mode  
 (a) insert (append) after the cursor  
 (A) moves the cursor to the end of the line and enters insert mode  
 (o) inserts a new line below the current line and enters insert mode on the new line  
 (O) inserts a new line above the current one and enters insert mode on the new line  

**Exit and save:**

 :w filename saves the file under filename. If the file already exists the specification of the file name is optional  
 :w! saves the file even if it is read-only, if possible  
 :wq saves the current file and exits the editor  
 :x saves the current file and exits the editor  
 ZZ saves the current file and exits the editor. The missing colon is not a typo!  
 :q terminates the editor. Edited files must have been saved before  
 :q! terminates the vi even if files have not yet been saved. The changes to these files are lost  

**Navigation in a document:**

The most important move commands are:

 h moves the cursor one character to the left  
 j moves the cursor down one character  
 k moves the cursor up one character  
 l moves the cursor one character to the right  
 G moves the cursor to the end of the file  
 gg moves the cursor to the beginning of the file  
 H moves the cursor to the top of the screen  
 L moves the cursor to the bottom of the screen  
