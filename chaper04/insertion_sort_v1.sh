#!/bin/bash
#功能描述(Description):插入排序算法演示,升序排序.

#通过循环读取5个随机整数赋值给数组变量num.
for x in {1..5}; do
    read -p "请输入随机整数:" tmp
    num[$x]=$tmp
done

#默认认为第1个数已经为有序数字.
#直接从第2个数开始跟她前面的数字对比大小.
#使用i控制需要提取出来跟前面比较大小的数字.
for ((i = 2; i <= 5; i++)); do
    #使用j控制第i个元素前面需要比较的数字.
    #j从第i-1个数字元素开始,每循环一次j再往前移动1位.
    #如果j小于0了,或者i大于(>)第j个元素的值,则循环退出.
    #可以继续循环的条件是j大于等于0,并且第1个元素数字比第j个元素数字小,否则循环就退出.
    #如果第i个元素比第j个元素小,则将i个元素和j个元素对调下位置.
    tmp=${num[i]}
    for ((j = $((i - 1)); j >= 0 && $tmp < num[j]; j--)); do
        num[j + 1]=${num[j]}
        num[j]=$tmp
    done
done
echo ${num[@]}
