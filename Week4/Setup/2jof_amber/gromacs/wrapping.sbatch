#!/bin/bash
#SBATCH --job-name=run-gromacs
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --tasks-per-node=5

module load gromacs/openmpi/intel/2020.4

gmx_mpi trjconv -f combined.xtc -s step4.1_equilibration.tpr -o md_center.xtc
