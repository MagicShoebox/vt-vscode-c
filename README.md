# VSCode Configuration for C Development on Linux

## Launching (if using Docker)
1. Use `Remote-Containers` to build and open the project in container.

## Per-project Setup
1. **Set** `NAME_OF_PROGRAM` and `PATH_TO_SOURCE` in `tasks.json`
1. (If there are no `.o` files) **Delete** `*.o` line in `tasks.json`
1. **Set** `NAME_OF_PROGRAM` in `launch.json`
1. **Set** the variables in `test.sh`

## Actions
- **Tasks: Run Build Task** to build the program (output in `bin/`)
- **Run Menu: Start Debugging (default: F5)** to build, then debug the program
- **Tasks: Run Test Task** to run testing/grading script
