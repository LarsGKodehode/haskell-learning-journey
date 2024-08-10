GHC_FLAGS := "-O2"

OUT_DIR := "out"
SRC_DIR := "src"

# Build command
build experiment:
  mkdir -p {{ OUT_DIR }} # Create output directory if it doesn't exist
  ghc {{ GHC_FLAGS }} -o {{ OUT_DIR }}/{{ experiment }} {{ SRC_DIR}}/{{ experiment }}/main.hs

# Run command
run experiment:
  runghc {{ SRC_DIR }}/{{ experiment }}/main.hs

# Clean command
clean:
  rm -rf {{ OUT_DIR }} *.hi *.o

