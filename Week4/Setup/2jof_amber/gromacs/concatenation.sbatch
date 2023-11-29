#!/bin/bash
#SBATCH --job-name=run-gromacs
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --tasks-per-node=5

module load gromacs/openmpi/intel/2020.4

gmx_mpi trjcat -f step5_1.gro step5_2.gro step5_3.gro step5_4.gro step5_5.gro step5_6.gro step5_7.gro step5_8.gro step5_9.gro -o combined.gro
