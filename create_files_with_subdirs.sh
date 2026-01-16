#! /bin/bash
langs=("Assembly", "Autocode", "FORTRAN", "LISP", "COBOL", "ALGOL", "Smalltalk", "C", "SML", "Perl")
twodigits=("01","02","03","04","05","06","07","08","09","10")
now="$(date)"
mkdir "$now"

for value in "${twodigits[@]}" do
	mkdir "${now}/file1${value}"
done
