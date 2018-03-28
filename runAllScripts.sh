sbatch -w caleuche run.sh -t 1
sbatch -w caleuche run.sh -t 2
sbatch -w caleuche run.sh -t 4
sbatch -w caleuche run.sh -t 8
sbatch -w caleuche run.sh -t 16

echo "---------------------------"  >> ./executionTime.txt
echo "\n"  >> ./executionTime.txt

sbatch -w tripio run.sh -t 1
sbatch -w tripio run.sh -t 2
sbatch -w tripio run.sh -t 4
sbatch -w tripio run.sh -t 8
sbatch -w tripio run.sh -t 16

echo "---------------------------"  >> ./executionTime.txt
echo "\n"  >> ./executionTime.txt

sbatch -w caleuche run.sh -t 1
sbatch -w caleuche run.sh -t 2
sbatch -w caleuche run.sh -t 4
sbatch -w caleuche run.sh -t 8
sbatch -w caleuche run.sh -t 16


./run.sh -t 1 && ./run.sh -t 2 && ./run.sh -t 4 && ./run.sh -t 8 && ./run.sh -t 16


1 - 100


(0.305013318/16)*100
(0.37579826/16)*100
(0.383177928/16)*100

0,305013318

0,37579826

0,383177928








44.423845/(7.957944*16)


efficiency(0.270161406, 16)*100
efficiency(0.332203829, 16)*100
efficiency(0.348895432, 16)*100