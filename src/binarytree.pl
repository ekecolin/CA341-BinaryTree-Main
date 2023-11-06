/*Name: Colin Ekedigwe, Student number: 20403046 & Name: Gideon Amaechi, Student number: 20364806*/

/*https://everything2.com/title/Binary+search+trees+in+Prolog*/
/*A tree takes a value X, a left tree and a right tree */
tree(X, Leftside, Rightside).

/*https://stackoverflow.com/questions/17948840/binary-tree-in-prolog*/
/*http://www.cs.utoronto.ca/~ajuma/326f08/19Prolog4.pdf*/
/*Entering a value into the tree, insert the value X into the tree to get a value for tree "R" */
insert(X, empty, tree(X, empty, empty)).
insert(X, tree(Root, Leftside, Rightside), tree(Root, NewLeftside, Rightside)) :- X =< Root, insert(X, Leftside, NewLeftside).
insert(X, tree(Root, Leftside, Rightside), tree(Root, Leftside, NewRightside)) :- X > Root, insert(X, Leftside, NewRightside).
/*user inserts a value, it takes a value X and a tree and returns a tree with that value in it
If X is < the Root, insert into the left child
Otherwise, insert into the right child
example: insert(10, empty, R)
R = tree(10, empty, empty)*/

/*https://www.metalevel.at/prolog/sorting*/
/*Search check if the value X is contained the tree and returns true or false*/
search(X, tree(X, Leftside, Rightside)).
search(X, tree(Root, Leftside, Rightside)):- X =< Root, search(X, Leftside).
search(X, tree(Root, Leftside, Rightside)):- search(X, Rightside).
/*example: search(10,tree(10,tree(5,empty,empty),tree(15,empty, tree(20,empty, empty)))).
true .*/

/*https://www.freecodecamp.org/news/binary-search-tree-traversal-inorder-preorder-post-order-for-bst*/
/*if tree is empty, it returns an empty list*/
preorder(empty, []).
preorder(tree(X, Leftside, Rightside), List) :- preorder(Leftside,LeftSideList), append([X], LeftSideList, LeftSideResult), preorder(Rightside,RightSideList), append(LeftSideResult, RightSideList, List).
/*preorder behaves the same as inorder except the the root node(X) is the first value in the list*/
/*run code in prolog terminal:
example: preorder(tree(10,tree(5,empty,empty),tree(15,empty,tree(20,empty,empty))),X).
X = [10, 5, 15, 20].*/

inorder(empty, []). /*if the tree is empty then it returns an empty list*/
inorder(tree(X, Leftside, Rightside), List) :- inorder(Leftside,LeftList), append(LeftList, [X], LeftResult), inorder(Rightside,RightList), append(LeftResult, RightList, List).
/*run code in prolog terminal:
example: inorder(tree(10,tree(5,empty,empty),tree(15,empty,tree(20,empty,empty))),X).
X = [5, 10, 15, 20]*/

/*https://www.javatpoint.com/postorder-traversal#:~:text=The%20post%20order%20traversal%20technique,would%20be%20traversed%20at%20last.*/
/*if the tree is empty then it returns an empty list*/
postorder(empty, []).
postorder(tree(X, Leftside, Rightside), List) :- postorder(Leftside,LeftSideList), postorder(Rightside,RightSideList), append(LeftSideList, RightSideList, NewList), append(NewList,[X],List).
/*postorder behaves the same as inorder and preorder except root node(X) is the last value in the list*/
/*run code in prolog terminal:
example: postorder(tree(10,tree(5,empty,empty),tree(15,empty,tree(20,empty, empty))),X).
X = [5, 20, 15, 10].*/

"""Colin Ekedigwe - Student Number: 20403046 - I am aware of the Universities regards to breaches of academicintegrity and plagiarism as serious. Any assistance I have gotten by using code to help me has been referenced and stated with links. I am writing this to acknowledge that a breach of the rules may result in penalties being imposed.
"""
