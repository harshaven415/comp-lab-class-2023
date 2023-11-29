#!/bin/bash
#SBATCH --job-name=run-gromacs
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --tasks-per-node=5

module load gromacs/openmpi/intel/2020.4

gmx_mpi trjcat -f step5_1.trr step5_2.trr step5_3.trr step5_4.trr step5_5.trr step5_6.trr step5_7.trr step5_8.trr step5_9.trr -o combined.trr

gmx_mpi trjcat -f step5_1.xtc step5_2.xtc step5_3.xtc step5_4.xtc step5_5.xtc step5_6.xtc step5_7.xtc step5_8.xtc step5_9.xtc -o combined.xtc
