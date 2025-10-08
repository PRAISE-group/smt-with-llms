for FOLDERS in */; do
	cd $FOLDERS;
   	for FILE in *.smt2; do
		echo $FILE >> errors.log;
		z3 $FILE 2>&1 >> errors.log;
		echo "--------------------" >> errors.log
	done
	cd ../;
done
