# !/bin/csh

    set i=1

    set n=`wc -l main.f | awk '{print$1}'`
    echo $n

    echo "! this is mpi program generated by csh" > pmain.f
    while ($i != $n)

    set line=`sed -n ${i},${i}p main.f | cut -c1`

    if($line == "c")then
       sed -n ${i},${i}p main.f | cut -c2- >> pmain.f
    else
       sed -n ${i},${i}p main.f | cut -c1- >> pmain.f
    endif

    @ i++

    end
   
    if($line == "c")then
       sed -n ${i},${i}p main.f | cut -c2- >> pmain.f
    else
       sed -n ${i},${i}p main.f | cut -c1- >> pmain.f
    endif
