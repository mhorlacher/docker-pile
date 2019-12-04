# run init.sh scripts
for script in /init.d/init.sh/*;
do
    ${script}
done

# run init.r script
for script in /init.d/init.r/*;
do
    Rscript ${script}
done

