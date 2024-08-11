GHC_FLAGS := "-O2"

OUT_DIR := "out"
SRC_DIR := "src"

# Build command
build experiment:
  mkdir -p {{ OUT_DIR }} # Create output directory if it doesn't exist
  ghc {{ GHC_FLAGS }} -o {{ OUT_DIR }}/{{ experiment }} {{ SRC_DIR}}/{{ experiment }}/Main.hs

# Run command
run experiment:
  runghc {{ SRC_DIR }}/{{ experiment }}/Main.hs

# Clean command
clean:
  rm -rf {{ OUT_DIR }} *.hi *.o

# Note related options
NOTE_FILE := "documentation/notes.md"

# The following has problems with the more esoteric symbols we programmers want to use
# there is some way to escape these with just, but I could not quickly see how
# leaving it for later as this is just basic tool to take some quick notes
# More extensive once will have to be done with an editor

# Add a note
add-note title body:
  echo -e "## {{ title }}\n{{ body }}\n" >> {{ NOTE_FILE }}

