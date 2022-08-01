# MD-simulation-for-COX-2-enzyme
general guidelines
1. Obtain protein/RNA/Complex structure from PDB or other reliable source
2. Standardisation and parameterisation of non-standard unit in complex (such as Heme unit, important metal Fe3+, crystal water etc.)
3. Geometery optimastion of ligands and RESP calculation (using Gaussian or other QM software)
4. using tleap to model the ligand and complex and solvate in the suitable box. Then generate the parm7 and rst7 files for this complex system (see AMBER manual)
5. Hydrogen mass repartition then Minisation*2, Heating*2, Equilibrium(50ns) general protocol
6. Production (50ns*n) depend on your aim and target
7. Traj collection and analysis
