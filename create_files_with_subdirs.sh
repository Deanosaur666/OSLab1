#! /bin/bash
# start log
touch "script.log"
echo "[$(date)] Script started" > "script.log"

# language names to write to files
langs=("Assembly" "Autocode" "FORTRAN" "LISP" "COBOL" "ALGOL" "Smalltalk" "C" "SML" "Perl")

# make main directory
maindir="$(date)"
mkdir "$maindir"
if [ $? -ne 0 ]; then
	echo "Error: Failed to create directory"
	echo "[$(date)] Error: Failed to create directory" >> "script.log"
	exit 1
fi
echo "[$(date)] Main directory created" >> "script.log"

# for each subdirectory
for i in {101..110}
do
	# make subdirectory
	subdir="file"$i
	mkdir "$maindir/$subdir"
	if [ $? -ne 0 ]; then
		echo "Error: Failed to create subdirectory"
		echo "[$(date)] Error: Failed to create subdirectory" >> "script.log"
		exit 1
	fi
	echo "[$(date)] Subdirectory $subdir created" >> "script.log"
	# for each file
	l=0
	for j in {501..510}
	do
		filename="$subdir/tuser"$j".txt"
		touch "$maindir/$filename"
		if [ $? -ne 0 ]; then
			echo "Error: Failed to create file"
			echo "[$(date)] Error: Failed to create file" >> "script.log"
			exit 1
		fi
		echo "${langs[l]}" > "$maindir/$filename"
		echo "[$(date)] File $filename created" >> "script.log"
		let l=$l+1
	done
done

echo "[$(date)] Script finished successfully" >> "script.log"
