Name: Colin Ekedigwe, Student number: 20403046

Welcome to the manual page of our 'Functional Programming Language' binary tree

-----OPTIONS-----
1. search - look for a number in the tree
2. preorder - view all elements inserted into the tree
3. inorder - view all elements in numeric order (ascending)
4. postorder - view all elements after they have been put in order


------HOW TO RUN THE HASKELL PROGRAM IN 'GHCI'------
1. Load your haskell file by typing ':l filepath\binarytree.hs' in you GHCI command program
2. To begin type this test case 'let bintree = foldr insert (Empty) [20,15,5,10,25]'
3. print (bintree) <- Prints tree
4. print (preorder bintree) <- Prints list of values
5. print (inorder bintree) <- Prints list of values
6. print (postorder bintree) <- Prints list of values
7. print (search bintree 15) <- Prints 'true'
8. print (search bintree 6) <- Prints 'false


------HOW TO RUN THE PROLOG PROGRAM------
1. Open your prolog terminal
2. Click "file" on the top left, then choose "Consult" to open the prolog file "binarytree.pl"
3. Type in your function name and parameters

------TEST CASE EXAMPLES FOR PROLOG------
4. insert(10, empty, R)
   Result: R = tree(10, empty, empty)
5. search(10,tree(10,tree(5,empty,empty),tree(15,empty, tree(20,empty, empty)))).
   Result: true
6. preorder(tree(10,tree(5,empty,empty),tree(15,empty,tree(20,empty,empty))),X).
   Result: X = [10, 5, 15, 20]
7. inorder(tree(10,tree(5,empty,empty),tree(15,empty,tree(20,empty,empty))),X).
   Result: X = [5, 10, 15, 20]
8. postorder(tree(10,tree(5,empty,empty),tree(15,empty,tree(20,empty, empty))),X).
   Result: X = [5, 20, 15, 10]


#Author: Colin Ekedigwe - Student Number: 20403046 - I am aware of the Universities regards to breaches of academic integrity and plagiarism as serious. Any assistance I have gotten by using code to help me has been referenced and stated with links. I am writing this to acknowledge that a breach of the rules may result in penalties being imposed.
