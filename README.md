## Code organisation

Business logic lives in the root of the project in `todo.go`. 

The command-line interface that works with the business logic lives in the `cmd` subdirectory.


## nuggets of information

For CLI tools, it's good to use the standard error (STDERR) output instead of the standard output (STDOUT) to display messages as the user can easily filter them out if they desire.

exit your program with a return code different than 0 when errors occur.

- os.Args is a slice of strings []string that gives you access to the cli arguments passed to your program.
