# VSCode Configuration for C Development on Linux

## (Optional) One-time Docker Setup
1. Choose an image_name (e.g. cs2505)
1. **Run** `docker build -t IMAGE_NAME .`

## Per-project Setup
1. (If using Docker) **Set** `IMAGE_TAG_GOES_HERE` in `devcontainer.json`
- (Otherwise) You can **delete** `Dockerfile` and `.devcontainer/`
2. **Set** `NAME_OF_PROGRAM` and `PATH_TO_SOURCE` in `tasks.json`
1. (If there are no `.o` files) **Delete** `*.o` line in `tasks.json`
1. **Set** `NAME_OF_PROGRAM` in `launch.json`
1. **Set** the variables in `test.sh`

## Actions
- **Tasks: Run Build Task** to build the program (output in `bin/`)
- **Run Menu: Start Debugging (default: F5)** to build, then debug the program
- **Tasks: Run Test Task** to run testing/grading script
