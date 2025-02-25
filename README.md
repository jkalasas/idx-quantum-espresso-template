# Project IDX Quantum Espresso Template

## Running the project
_Click the button bellow to launch in Project IDX_

[![Open in IDX](https://cdn.idx.dev/btn/open_light_32.svg)](https://idx.google.com/import?url=https%3A%2F%2Fgithub.com%2Fjkalasas%2Fidx-quantum-espress-template.git)

## Jupyter Notebook
When running notebooks select the **.venv** python kernel.

## Examples
In the **setups** directory there are simple examples using python ASE (Atomic Simulation Environment) with QE in jupyter notebook.


### CLI Example
There is also an CLI example on **setups/scf** based on the example on this article for [Self consistent field calculation for silicon](https://pranabdas.github.io/espresso/hands-on/scf).

To run the calculation open a terminal and run the following:
```sh
cd setups/scf
pw.x < pw.scf.silicon.in > pw.scf.silicon.out
```

Results of the self consistent calculation will be stored in **pw.scf.silicon.out**.

## Credits
Included Pseudopotentials are from [SSSP Efficiency v1.3.0](https://www.materialscloud.org/discover/sssp/table/efficiency).