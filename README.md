# Ada Range Check with Missing Exception Handling

This repository demonstrates a common, yet subtle, error in Ada programming:  the lack of exception handling when dealing with user input. The `Check_Range` function correctly checks for a number within a specific range, but the `Main` procedure lacks proper error handling if the user enters non-numeric data.  This can lead to program crashes.

The `bug.ada` file shows the original code with the bug, and the `bugSolution.ada` file presents a corrected version with exception handling.

## Bug Description

The `Main` procedure uses `Get` to read an integer from the user. If the user enters non-numeric input,  `Get` will raise a `Data_Error` exception. The original code doesn't handle this exception, resulting in a program termination.

## Solution

The solution involves using an exception handler to gracefully handle the `Data_Error` exception. If the exception occurs, the program displays an informative error message rather than abruptly stopping.