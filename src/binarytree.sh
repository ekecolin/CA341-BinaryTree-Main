#Name: Colin Ekedigwe, Student number: 20403046 

echo "\n---------------Welcome to the CA341 Binary Tree App!---------------"
echo '\nPress any [key] to continue\n'
while [ true ] ; do
read key
if [ $? = 0 ] ; then
echo '\nWould you like to use the Functional or Logic version of the program?\n'
echo '"1" --> Functional \n"2" --> Logic \n'
echo 'Enter your pick: '
read num
if [ $num = "1" ];
then
   cd ..
   cd "$PWD/src"
   clear
   echo '[HASKELL: Below are the instructions for how to run this Functional binary tree program]\n'
   echo '1. To run this Haskell file please open up your "ghci command program"'
   echo '2. Once you have this loaded up type "l: filepath \ binarytree.hs" and your program is ready to go'
   echo '3. Check out our "README" file to know how to test the binary tree\n'
   #gcc cbook.c
   #./a.out
   #rm a.out
elif [ $num = "2" ]
then
 cd ..
 cd "$PWD/src"
 clear
 echo '[PROLOG: Below are the instructions for how to run this Logic binary tree program]\n'
 echo '1. Open your prolog terminal'
 echo '2. Click "file" on the top left, then choose "Consult" to open the prolog file "binarytree.pl"'
 echo '3. Type in your function name and parameters\n'
 #python3 pybinarytree.py
 #swipl binarytree.pl
else
 clear
 echo 'Wrong key please try again.\n' 
 sh binarytree.sh
 exit
fi
exit
else
echo " "
fi
done

#Author: Colin Ekedigwe - Student Number: 20403046 - I am aware of the Universities regards to breaches of academic
#integrity and plagiarism as serious. Any assistance I have gotten by using code to help me has been referenced and
#stated with links. I am writing this to acknowledge that a breach of the rules may result in penalties being imposed.
