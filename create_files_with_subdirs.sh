#! /bin/bash
# start log
touch "script.log"
echo "[$(date)] Script started" > "script.log"

# language names to write to files
langs=("Assembly" "Autocode" "FORTRAN" "LISP" "COBOL" "ALGOL" "Smalltalk" "C" "SML" "Perl")
# last two digits for files tuser501.txt to tuser510.txt
twodigits=("01" "02" "03" "04" "05" "06" "07" "08" "09" "10")


# make main directory
maindir="$(date)"
mkdir "$maindir"
echo "[$(date)] Main directory created" >> "script.log"

# for each subdirectory
for i in {101..110}
do
	# make subdirectory
	subdir="file"$i
       	mkdir "$maindir/$subdir"
	echo "[$(date)] Subdirectory $subdir created" >> "script.log"
	# for each file
	i=0
	for val in ${langs[@]}
	do
		filename="$subdir/tuser5"${twodigits[i]}".txt"
		touch "$maindir/$filename"
		echo "${langs[i]}" > "$maindir/$filename"
		echo "[$(date)] File $filename created" >> "script.log"
		let i=$i+1
	done
done

echo "[$(date)] Script finished successfully" >> "script.log"
