-- Data type to represent a binary tree https://hackage.haskell.org/package/type-indexed-queues-0.2.0.0/docs/Data-BinaryTree.html
-- Null is an empty binary tree
data Tree a = 
  Null | Node (Tree a) a (Tree a)
  deriving (Read, Show)

-- Insert a value into a binary tree
-- https://stackoverflow.com/questions/21202010/implementing-binary-search-tree-insertion-in-haskell
insert :: Ord a => a -> Tree a -> Tree a 
insert x Null = Node (Null) x (Null) --if tree is empty(Null), create a binary tree with the value "x" that has two empty trees as its children
insert x (Node left n right) -- If theres a left and right child then do:
  | x == n = Node left x right --if the value "x" == value "n", then replace n with x
  | x < n = Node (insert x left) n right -- if x is less than n, recursively insert the value to the left child
  | x > n = Node left n (insert x right) -- vice-versa if x is greater than n, recursively insert the value to the right child

-- Search if a value is in a binary tree, it returns true or false depending on if value is in the tree
-- https://stackoverflow.com/questions/49681631/searching-a-value-in-binary-tree-haskell
search :: Ord a => Tree a -> a -> Bool
search Null x = False -- (Base case) if there's an empty binary search tree and you search for a value "x", return False
search (Node left n right) x --if you search a non-empty binarytree for a value "x", do:
  | n == x = True --if the current node's value "n" is equal to the value "x", return True
  | x < n = search left x -- if x is less than n, search left child
  | x > n = search right x -- if x is greater than n, search right child

-- Return binary tree preorder traversal as a list
-- https://stackoverflow.com/questions/5330679/haskell-traverse-tree-inorder-preorder-postorder
preorder :: Tree a -> [a] --Takes a binarytree and returns a list of the values in the bst
preorder Null = [] -- Base case for if there a no values in tree it will return an empty list
preorder (Node left x right) = [x] ++ preorder left ++ preorder right -- preorder goes from the root to the left child and then the rightchild

-- Return binary tree inorder traversal as a list
inorder :: Tree a -> [a] --Takes a binarytree and returns a list of the values in the bst
inorder Null = [] -- Base case for if there a no values in tree it will return an empty list
inorder (Node left x right) = inorder left ++ [x] ++ inorder right -- if tree is not empty, go through the left child using the "++" to concatenate lists, followed by the root x, followed by the right child

-- Return binary tree postorder traversal as a list
postorder :: Tree a -> [a] --Takes a binarytree and returns a list of the values in the bst
postorder Null = [] -- Base case for if there a no values in tree it will return an empty list
postorder (Node left x right) = postorder left ++ postorder right ++ [x] -- postorder goes to the left child, then the right child and lastly visit the root

-- Running program to see the test cases 
-- https://stackoverflow.com/questions/30518927/how-to-avoid-main-is-not-defined-in-module-main-when-using-syntastic
main :: IO()
main = do
    let bintree = foldr insert (Null) [20,15,5,10,25] -- binary tree values
    print (bintree)
    print (preorder bintree)
    print (inorder bintree)
    print (postorder bintree)
    print (search bintree 15)
    print (search bintree 6)
