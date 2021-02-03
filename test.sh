#! /bin/bash

# SET THESE VARIABLES
PATH_TO_SOURCE="src"                  # The folder containing the source .c files
TAR_NAME="PID"                        # The name of the .tar to create (.tar will be appended)
FILES=("File1.c" "File2.c" "File3.c") # Source files to include in the .tar
TEST_FOLDER="testing"                 # The folder containing testing/grading scripts
TESTS="TESTS.sh"                      # The provided testing/grading script to run

# Create .tar file from modified source files
tar -cvf "bin/${TAR_NAME}.tar" -C "${PATH_TO_SOURCE}" ${FILES[*]}

# Switch to folder with testing/grading scripts
cd "${TEST_FOLDER}"

# Copy .tar to testing/grading folder
cp "../bin/${TAR_NAME}.tar" .

# Run testing/grading script on the .tar of source files
./"${TESTS}" "${TAR_NAME}.tar"

# Clean up duplicate .tar file (leave original in bin/)
rm "${TAR_NAME}.tar"