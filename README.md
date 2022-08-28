# MD-simulation-for-COX-2-enzyme
general guidelines
1. Obtain protein/RNA/Complex structure from PDB or other reliable sources
2. Standardisation and parameterisation of non-standard unit in the complex (such as Heme unit, important metal Fe3+, crystal water etc.)
3. Geometery optimastion of ligands and RESP calculation (using Gaussian or other QM software)
4. use tleap (ABMER packages) to model the ligand and complex and solvate in the suitable box. Then generate the parm7 and rst7 files for this complex system (see AMBER manual)
5. Hydrogen mass repartition then Minimisation*2, Heating*2, Equilibrium(15ns) (general protocol)
6. Production (50ns*n) depend on your aims and targets
7. Traj collection and analysis

For future research:
1. Literature review on COX-2 (I personally think this review is quite comprehensive):https://pubs.acs.org/doi/10.1021/acs.chemrev.0c00215
2. Allostery in COX-2: 2.1. https://www.pnas.org/doi/10.1073/pnas.1507307112    2.2. https://doi.org/10.1074/jbc.M113.505503     2.3.https://doi.org/10.1074/jbc.M116.757310   2.4.https://doi.org/10.1074/jbc.TM118.006295
3. For some background info about dipyrone: 3.1. https://doi.org/10.1002/jcph.1512      3.2. https://doi.org/10.1038/sj.bjp.0707239
4. For the mechanism of paracetamol: 4.1.  https://doi.org/10.1016/j.clpt.2005.09.009  4.2. https://link.springer.com/article/10.1007/s10787-013-0172-x   4.3. https://doi.org/10.1111/1440-1681.13392
5. For AMBER MD simulation you can see some tutorial on AMBER website: https://ambermd.org/AmberTools.php
