for FOLDERS in */; do
	cd $FOLDERS;
	echo $FOLDERS >> ../errors.log;
	echo "---------------------------------------------------------------------" >> ../errors.log
   	for FILE in *.smt2; do
		echo $FILE >> ../errors.log;
		z3 -smt2 -v:5 $FILE 2>&1 >> ../errors.log;
		echo "******************************************************************" >> ../errors.log
	done
	echo "---------------------------------------------------------------------" >> ../errors.log
	cd ../;
done
