# Lua Closure Unexpected Variable Modification

This repository demonstrates a subtle bug in Lua related to closures and how variables are shared unexpectedly across different closure instances.

The `bug.lua` file contains code that creates closures which appear independent but actually modify the same variable. This leads to unexpected results when calling those closures multiple times or from different instances.

The `bugSolution.lua` file shows the correct way to create independent closures using local variables.

## How to reproduce

1. Clone this repository.
2. Run `bug.lua` using a Lua interpreter.
3. Observe the unexpected output where the second set of closure calls are unexpectedly affected by the first.

## Solution

The `bugSolution.lua` file shows the solution, which is to ensure that each closure has its own local copy of the modified variable.