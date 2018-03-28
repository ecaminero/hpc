#!/bin/bash
#
#SBATCH -p grimapartition         # partition (queue)
#SBATCH -N 5                      # number of nodes
#SBATCH -n 3                      # number of cores
#SBATCH -t 0-2:00                 # time (D-HH:MM)
#SBATCH -o slurm.%N.%j.out        # STDOUT
#SBATCH -e slurm.%N.%j.err        # STDERR
#SBATCH --mail-type=END,FAIL      # notifications for job done & fail
#SBATCH --mail-user=cruz@uc.cl    # send-to address
#SBATCH --workdir=/user/grupo6/slurm  #cambiar esto /user/grupoXX
#SRUN --workdir=/user/grupo6/slurm  #cambiar esto /user/grupoXX

HOST=`hostname`
IMAGE_ONE='/user/cruz/DipBD/2017-2/AC03/images/Bird.png'
IMAGE_TWO='/user/cruz/DipBD/2017-2/AC03/images/Rose.png '
IMAGE_THREE='/user/cruz/DipBD/2017-2/AC03/images/chrono.png'
NUM_THREADS=10

# params -t = num threads

if [[ ($1 == '-t' && $2 =~ ^[0-9]+$)]]; then
  NUM_THREADS=$2
fi

# declare array image
declare -a IMAGE_LIST=($IMAGE_ONE $IMAGE_TWO $IMAGE_THREE)
rm -rf ./image-result/*.png

START=$(date +%s.%N)

for image in "${IMAGE_LIST[@]}"; do
  imageResult=$(basename $image)
  imageResultName=${imageResult%.png}
  ./masker -t $NUM_THREADS $image ./image-result/$imageResultName-result.png
done
END=$(date +%s.%N)

TIME_EXE=$(echo "$END - $START" | bc)
echo Finished on $HOST at $TIME_EXE

echo Finished on $HOST with $NUM_THREADS at $TIME_EXE >> ./executionTime.txt

# run$ sbatch -w caleuche run.sh