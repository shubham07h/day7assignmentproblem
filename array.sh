ar=(1 2 3 4 5 6 7 8 9)
echo "original array"
echo ${ar[@]}

echo "Array in ascending order"
for((i=0; i<${#ar[@]}; i++))
do
for((j=0; j<${#ar[@]}-1; j++))
do
if [[ ${ar[j]} > ${ar[$((j+1))]} ]]
then
temp=${ar[j]}
ar[$j]=${ar[$((j+1))]}
ar[$((j+1))]=$temp
fi
done
done
echo ${ar[@]}
echo "second largest element : ${ar[8]}"
echo "second smallest element : ${ar[1]}"
