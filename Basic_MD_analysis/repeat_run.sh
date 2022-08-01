i=$1

if [ $i == 1 ]
then
   inputrst=equi_1.ncrst
else 
   inputrst=$((i-1)).rst7
fi

if [ $i -le 6 ]
then

   cat << EOF > production$i.pbs
#PBS -lselect=1:ncpus=4:mem=24gb:ngpus=1:gpu_type=RTX6000
#PBS -lwalltime=24:00:0
cd \$PBS_O_WORKDIR
module load cuda/9.0
RUN=$i
/rds/general/user/igould/home/pmemd.cuda_SPFP -O -i production.in -o $i.out -c $inputrst -p *_HMR.parm7 -ref $inputrst -r $i.rst7 -x $i.nc -inf $i.inf
./repeat_run.sh $((i+1)) 
EOF

qsub production$i.pbs

fi 
