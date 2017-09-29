# **Rubyshell**
===============

## **Team Mates**
- Arpan Gupta
- Rishabh Agarwal 

## **Software Requirements**
- GCC version 5.2.0 and upwards.

Note: *Any lower version may result in underfined behaviour including compilation errors and memory corruptions.*

## **Instructions to run the shell**
- Compile the source code using Makefile using the following command,  

  ```
  make
  ```  
  *This should have created an executable called 'shell'*  

- Run the shell using the following command,  

  ```
  ./shell
  ```  

- To clean up the project, use the following command,  

  ```
  make clean
  ```


## **Bash commands supported**

- ls
- cd (All types)
- pwd
- cat
- mkdir
- rm (-r, -f, -v)
- history (retrieves history of all user commands)
- history n (prints the most recent n commands issued by the numbers)
- issue n (issues the nth command in the history once again)
- <program_name> (Creates a child process to run <program_name>. Supports the
redirection operators > and < to redirect the input and ouput of the
program to indicated files)
- exit 
and all other basic bash commands

## **Custom commands implemented**

 -rmp (with -e1 and -e2 flags)
  -e1 
  ```
  rmp -e1 extension
  ```
  Deletes all files in directory except the files with the given extension.

  -e2

  ```
  rmp -e2 <list_of_files> 
  ```
  Deletes all files in the current directory except those in the list.

  ```
  <program_name> m
  ```
  ```<program_name> ```m creates a child process to execute program_name, but aborts the process if it does not complete its operation in m seconds by delivering proper message. 


## **Fallback Compilation Instructions if 'make' fails**
NOTE: *SKIP THIS SECTION IF make was successful i.e. if make did not throw errors.*

- Compile the source code using the following command,  

  ```
  gcc minish.c -o shell
  ```

## **Bugs**
-  regcomp() in regex.h: the regcomp() module is buggy as it "sometimes" results in malloc() error.  
   Please note that IF THIS ERROR OCCURS WHILE TESTING, the shell source code does not contain any bugs.  
   Its the library issue, as we believe the library is deprecated.  
   Reason to use it was to detect the foreground and background commands.  
   The approach of tokenization and detection may result in segmentation faults.  
   For example: the following is a scenario that can result in a segmentation fault:  

   ```
   minish>gcc test_sleep.c -o bin/test_sleep.o
   minish>ls
   segmentation fault
   ```  

   *Note that the segmentation fault occurs only when the -o option is used with the gcc command.*  
   *This link has more information about this --* https://lists.ubuntu.com/archives/foundations-bugs/2012-May/089662.html

- Continuing a suspended process in foreground works fine, but after the process completes  
  execution it goes into an infinite loop. You will need to hit <Ctrl-C> to get back the prompt.

## **References**
http://stackoverflow.com/questions/19814906/which-child-process-send-sigchld
http://stackoverflow.com/questions/2595503/determine-pid-of-terminated-process
http://stackoverflow.com/questions/12587621/signal-handler-sa-sigaction-arguments
http://www.gnu.org/software/libc/manual/html_node/Sigaction-Function-Example.html
http://man7.org/linux/man-pages/man2/sigaction.2.html
http://stackoverflow.com/questions/4200373/just-check-status-process-in-c
https://en.wikipedia.org/wiki/Unix_signal
http://man7.org/linux/man-pages/man2/getpid.2.html
http://linux.die.net/man/3/tcsetpgrp
http://stackoverflow.com/questions/1157700/how-to-wait-for-exit-of-non-children-processes
http://stackoverflow.com/questions/1058047/wait-for-any-process-to-finish
http://www.gnu.org/software/libc/manual/html_node/Job-Control.html
https://ftp.gnu.org/old-gnu/Manuals/glibc-2.2.3/html_chapter/libc_27.html
http://www.gnu.org/software/libc/manual/html_node/Implementing-a-Shell.html
http://linuxcommand.org/lts0080.php
http://linux.die.net/man/3/execvp
http://www.csl.mtu.edu/cs4411.ck/www/NOTES/process/fork/exec.html
http://linux.die.net/man/2/waitpid
http://linux.die.net/man/3/waitpid
https://www.mkssoftware.com/docs/man3/waitpid.3.asp
https://support.sas.com/documentation/onlinedoc/sasc/doc/lr2/waitpid.htm
http://stackoverflow.com/questions/21248840/example-of-waitpid-in-use
http://linux.die.net/man/2/kill
http://linux.die.net/man/3/kill
http://tldp.org/LDP/lpg/node11.html
http://www.gnu.org/software/libc/manual/html_node/Creating-a-Pipe.html
http://man7.org/tlpi/code/online/diff/pipes/simple_pipe.c.html
https://www.cs.cf.ac.uk/Dave/C/node23.html
http://stackoverflow.com/questions/9493234/chdir-to-home-directory
http://stackoverflow.com/questions/298510/how-to-get-the-current-directory-in-a-c-program
http://linux.die.net/man/3/getcwd
http://www.gnu.org/software/libc/manual/html_node/Working-Directory.html
http://cboard.cprogramming.com/c-programming/100200-check-blank-spaces-string.html
http://stackoverflow.com/questions/17259250/fwrite-doesnt-print-anything-to-stdout
http://www.tutorialspoint.com/c_standard_library/c_function_fwrite.htm
http://stackoverflow.com/questions/13377773/proper-way-to-handle-signals-other-than-sigint-in-python
http://www.cons.org/cracauer/sigint.html
http://www.cplusplus.com/forum/beginner/1501/
http://stackoverflow.com/questions/6970224/providing-passing-argument-to-signal-handler
http://www.gnu.org/software/libc/manual/html_node/Permission-for-kill.html
http://pubs.opengroup.org/onlinepubs/009695399/functions/getpgrp.html
http://stackoverflow.com/questions/22422400/error-initialization-makes-pointer-from-integer-without-a-cast
http://stackoverflow.com/questions/5582211/what-does-define-gnu-source-imply
http://www.gnu.org/software/libc/manual/html_node/Feature-Test-Macros.html
http://www.regular-expressions.info/repeat.html
http://www.gnu.org/software/libc/manual/html_node/Process-Creation-Example.html
http://stackoverflow.com/questions/28457525/how-do-you-kill-zombie-process-using-wait
http://codereview.stackexchange.com/questions/20897/trim-function-in-c
http://stackoverflow.com/questions/122616/how-do-i-trim-leading-trailing-whitespace-in-a-standard-way
http://unix.stackexchange.com/questions/5642/what-if-kill-9-does-not-work
https://major.io/2010/03/18/sigterm-vs-sigkill/
http://unix.stackexchange.com/questions/132224/is-it-possible-to-get-process-group-id-from-proc
http://ubuntuforums.org/showthread.php?t=1430052
http://ubuntuforums.org/showthread.php?t=1749381
http://theunixshell.blogspot.com/2012/12/running-background-process-and.html
http://stackoverflow.com/questions/21871325/execvp-system-call-not-executing
http://www.computerhope.com/unix/ucsh.htm
http://www.peope.net/old/regex.html
ftp://ftp.gnu.org/old-gnu/Manuals/grep-2.4/html_chapter/grep_5.html
http://regexr.com
http://www.seeingwithc.org/topic7html.html
http://stackoverflow.com/questions/1631450/c-regular-expression-howto
http://stackoverflow.com/questions/18477153/c-compiler-warning-unknown-escape-sequence-using-regex-for-c-program
http://stackoverflow.com/questions/1395177/regex-to-exclude-a-specific-string-constant
https://blog.udemy.com/c-string-to-int/
http://stackoverflow.com/questions/3213827/how-to-iterate-over-a-string-in-c
http://stackoverflow.com/questions/21592494/initializer-element-is-not-constant-error-for-no-reason-in-linux-gcc-compilin
http://www.cplusplus.com/forum/general/8795/
http://pubs.opengroup.org/onlinepubs/009695399/functions/regcomp.html
http://stackoverflow.com/questions/22573292/glibc-detected-a-out-double-free-or-corruption-out-0xbfe69600
http://cboard.cprogramming.com/c-programming/98173-regular-expression-tutorial-help.html
http://www.gnu.org/software/libc/manual/html_node/Regexp-Cleanup.html#Regexp-Cleanup
http://stackoverflow.com/questions/23031590/reading-from-pipe-into-buffer-character-by-character-find-the-size-of-data-in-pi
http://www.cs.cornell.edu/Courses/cs414/2004su/homework/shell/shell.html
http://brennan.io/2015/01/16/write-a-shell-in-c/
http://stackoverflow.com/questions/1500004/how-can-i-implement-my-own-basic-unix-shell-in-c
