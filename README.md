# ModelicaTutorial

Modelica libraries used in the exercises of the OpenModelica tutorials
(Introduction to Object Oriented Modeling, Simulation, Debugging and Dynamic Optimization with Modelica using OpenModelica).

| Library | Exercise |
|---|---|
| `Debugging.mo` | Equation-based model debugger: chattering (`Debugging.Chattering`) and solver failures (`Debugging.SolverFailure`) |
| `DynamicOptimization.mo` | Dynamic optimization with `optimize()` |

Both use the Modelica Standard Library 4.1.0.

`Debugging.Chattering.ChatteringEvents1` stops at t = 0.50001, just after the chattering starts at t = 0.5. The chattering
is detected and the transformational debugger can be opened without stopping a crawling simulation by hand.
Set Stop Time to 1 in the simulation setup to see the simulation crawl.

## Where to get them

- OpenModelica includes this repository as the submodule `OMCompiler/Examples/ModelicaTutorial` and installs the
  libraries to `share/doc/omc/testmodels`.
- The OpenModelica package manager indexes them, so `installPackage(Debugging)` or the package manager dialog in
  OMEdit installs them, also in the web OMEdit at https://playground.openmodelica.org/.
- The tutorial exercises in the browser: https://playground.openmodelica.org/tutorial/
