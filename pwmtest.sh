echo '7 7 7 7' > /proc/sys/kernel/printk
config-pin P9.14 pwm
config-pin -q P9.14

for i in `find /sys |grep 48302200|grep pwmchip|grep /unexport$`
do 
   echo 0 > $i
   
   ls $i
done

for i in `find /sys |grep 48302200|grep pwmchip|grep /export$`
do 
   echo 0 > $i
   
   ls $i
done

> pathtest

for i in `find /sys |grep 48302200|grep pwmchip|grep pwm0| grep /duty_cycle$`
do 
   echo $i >> pathtest
   ls $i
done

for i in `find /sys |grep 48302200|grep pwmchip|grep pwm0| grep /period$`
do 
   echo $i >> pathtest
   ls $i
done

for i in `find /sys |grep 48302200|grep pwmchip|grep pwm0| grep /enable$`
do 
  echo 0 > $i  
done





