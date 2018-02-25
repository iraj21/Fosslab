
pdftotext s1.pdf s1.txt
tr -d '\n' < s1.txt > s1temp.txt
sed -i 's/MDL/\nMDL/g' s1temp.txt
grep "MDL16CS" s1temp.txt > s1cs.txt
sed -i 's/MA/ MA/g' s1cs.txt
awk '{print $6}' c4b.txt > csb.txt
grep MDL csb.txt > csbrollno.txt
join csbrollno.txt s1cs.txt > csbs1.txt
sed  's/MA101/4/g' csbs1.txt > s1grade.txt
sed -i 's/PH100/4/g' s1grade.txt
sed -i 's/BE110/3/g' s1grade.txt
sed -i 's/BE10105/3/g' s1grade.txt
sed -i 's/BE103/3/g' s1grade.txt
sed -i 's/EE100/3/g' s1grade.txt
sed -i 's/PH110/1/g' s1grade.txt
sed -i 's/EE110/1/g' s1grade.txt
sed -i 's/CS110/1/g' s1grade.txt
sed -i 's/(O)/ 10/g' s1grade.txt
sed -i 's/(A+)/ 9/g' s1grade.txt
sed -i 's/(A)/ 8.5/g' s1grade.txt
sed -i 's/(B+)/ 8/g' s1grade.txt
sed -i 's/(B)/ 7/g' s1grade.txt
sed -i 's/(C)/ 6/g' s1grade.txt
sed -i 's/(P)/ 5/g' s1grade.txt
sed -i 's/(F)/ 0/g' s1grade.txt
sed -i 's/,/ /g' s1grade.txt
awk '{printf($1" "(($2 * $3) + ($4 * $5) + ($6 * $7) + ($8 * $9) + ($10 * $11) + ($12 * $13) + ($14 * $15) + ($16 * $17) + ($18 * $19))/23)}' s1grade.txt > s1calc.txt
sed -i 's/MDL/\nMDL/g' s1calc.txt
pdftotext s2.pdf s2.txt
tr -d '\n' < s2.txt > s2temp.txt
sed -i 's/MDL/\nMDL/g' s2temp.txt
grep "MDL16CS" s2temp.txt > s2cs.txt
sed -i 's/CY/ CY/g' s2cs.txt
join csbrollno.txt s2cs.txt > csbs2.txt
sed  's/CY100/4/g' csbs2.txt > s2grade.txt
sed -i 's/MA102/4/g' s2grade.txt
sed -i 's/BE100/4/g' s2grade.txt
sed -i 's/BE102/3/g' s2grade.txt
sed -i 's/CY110/1/g' s2grade.txt
sed -i 's/EC100/3/g' s2grade.txt
sed -i 's/EC110/1/g' s2grade.txt
sed -i 's/CS120/1/g' s2grade.txt
sed -i 's/CS100/3/g' s2grade.txt
sed -i 's/(O)/ 10/g' s2grade.txt
sed -i 's/(A+)/ 9/g' s2grade.txt
sed -i 's/(A)/ 8.5/g' s2grade.txt
sed -i 's/(B+)/ 8/g' s2grade.txt
sed -i 's/(B)/ 7/g' s2grade.txt
sed -i 's/(C)/ 6/g' s2grade.txt
sed -i 's/(P)/ 5/g' s2grade.txt
sed -i 's/(F)/ 0/g' s2grade.txt
sed -i 's/,/ /g' s2grade.txt
awk '{printf($1" "(($2 * $3) + ($4 * $5) + ($6 * $7) + ($8 * $9) + ($10 * $11) + ($12 * $13) + ($14 * $15) + ($16 * $17) + ($18 * $19))/24)}' s2grade.txt > s2calc.txt
sed -i 's/MDL/\nMDL/g' s2calc.txt
sed -i 's/MDL161/MDL16CS120/g' s2calc.txt
join s1calc.txt s2calc.txt > sgpa.txt
awk '{printf($1" "(($2 + $3)/2))}' sgpa.txt > cgpa.txt
sed -i 's/MDL/\nMDL/g' cgpa.txt
join sgpa.txt cgpa.txt > final.txt
awk '{printf($1"\t" $2"\t" $3"\t" $4)}' final.txt >Final.txt
sed -i 's/MDL/\nMDL/g' Final.txt
sed -i '1 i\ROLL_NO         S1_SGPA S2_SGPA CGPA' Final.txt
nano Final.txt
