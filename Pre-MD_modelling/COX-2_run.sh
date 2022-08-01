export CUDA_VISIBLE_DEVICES="2"
/usr/local/amber/bin/pmemd.cuda_SPFP -O -i min_1.in -o min_1.out -c MAA.rst7 -p MAA_HMR.parm7 -r min_1.ncrst -ref MAA.rst7 -inf min_1.inf
/usr/local/amber/bin/pmemd.cuda_SPFP -O -i min_2.in -o min_2.out -c min_1.ncrst -p MAA_HMR.parm7 -r min_2.ncrst -inf min_2.inf
/usr/local/amber/bin/pmemd.cuda_SPFP -O -i Heat_1.in -o Heat_1.out -c min_2.ncrst -p MAA_HMR.parm7 -r Heat_1.ncrst -ref min_2.ncrst -inf Heat_1.inf
/usr/local/amber/bin/pmemd.cuda_SPFP -O -i Heat_2.in -o Heat_2.out -c Heat_1.ncrst -p MAA_HMR.parm7 -r Heat_2.ncrst -ref Heat_1.ncrst -inf Heat_2.inf
/usr/local/amber/bin/pmemd.cuda_SPFP -O -i equi_1.in -o equi_1.out -c Heat_2.ncrst -p MAA_HMR.parm7 -r equi_1.ncrst -inf equi_1.inf
/usr/local/amber/bin/pmemd.cuda_SPFP -O -i production.in -o MAA_HMR_0-50ns.out -c equi_1.ncrst -p MAA_HMR.parm7 -r MAA_HMR_0-50ns.rst -x MAA_HMR_0-50ns.nc -inf MAA_HRM_0-50ns.inf
/usr/local/amber/bin/pmemd.cuda_SPFP -O -i production.in -o MAA_HMR_50-100ns.out -c MAA_HMR_0-50ns.rst -p MAA_HMR.parm7 -r MAA_HMR_50-100ns.rst -x MAA_HMR_50-100ns.nc -inf MAA_HRM_50-100ns.inf
/usr/local/amber/bin/pmemd.cuda_SPFP -O -i production.in -o MAA_HMR_100-150ns.out -c MAA_HMR_50-100ns.rst  -p MAA_HMR.parm7 -r MAA_HMR_100-150ns.rst -x MAA_HMR_100-150ns.nc -inf MAA_HRM_100-150ns.inf
/usr/local/amber/bin/pmemd.cuda_SPFP -O -i production.in -o MAA_HMR_150-200ns.out -c MAA_HMR_100-150ns.rst -p MAA_HMR.parm7 -r MAA_HMR_150-200ns.rst -x MAA_HMR_150-200ns.nc -inf MAA_HRM_150-200ns.inf
/usr/local/amber/bin/pmemd.cuda_SPFP -O -i production.in -o MAA_HMR_200-250ns.out -c MAA_HMR_150-200ns.rst -p MAA_HMR.parm7 -r MAA_HMR_200-250ns.rst -x MAA_HMR_200-250ns.nc -inf MAA_HRM_200-250ns.inf
/usr/local/amber/bin/pmemd.cuda_SPFP -O -i production.in -o MAA_HMR_250-300ns.out -c MAA_HMR_200-250ns.rst -p MAA_HMR.parm7 -r MAA_HMR_250-300ns.rst -x MAA_HMR_250-300ns.nc -inf MAA_HRM_250-300ns.inf
