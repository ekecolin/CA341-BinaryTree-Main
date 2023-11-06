"""/*Name: Colin Ekedigwe, Student number: 20403046*/
   https://www.tutorialspoint.com/python_data_structure/python_binary_tree.htm"""

import sys

class Node:
  """https://www.tutorialspoint.com/python/python_nodes.htm"""
  """left and right default values are None"""
  def __init__(self,item,left=None,right=None):
    self.item = item
    self.left = left
    self.right = right
    
class BST:

  def __init__(self):
    self.root = None

  """Created root"""  
  def insert(self,item):
    """if tree empty, place as root"""
    if self.root == None:
      self.root = Node(item,None,None)
    else:
        ptr = self.root
        while ptr != None:
          parent = ptr
          if item < ptr.item:
            ptr = ptr.left
          else:
            ptr = ptr.right
            
        if item < parent.item:
          parent.left = Node(item, None, None)
        else:
          parent.right = Node(item, None, None)

  """https://www.geeksforgeeks.org/binary-search-tree-set-1-search-and-insertion/
     when the user types 'search' we check if pointer is empty if so we return to 
     our menu area where the user can type an option. If the pointer contains a 
     number entered that is present in the tree we will print it out"""
  def search(self, ptr, item):
    if ptr == None:
      return
    if ptr.item == item:
      print(ptr.item,end=' \n')
    else:
      return self.search(ptr.left,item) or self.search(ptr.right,item)

  """we visit the left child or left subtree of the current node and we visit the 
     right child or right subtree of the current node."""
  """https://medium.com/codex/in-order-pre-order-post-order-traversal-in-binary-trees-explained-in-python-1fc0c77f007f"""
  def inorder(self,ptr):
    """once the search has stopped, return nothing to exit the valuetion"""
    if ptr == None:
      return
    if ptr.left != None:
      self.inorder(ptr.left) 
    print(ptr.item,end=' ') 
    if ptr.right != None:
      self.inorder(ptr.right)
  
  """Depth-first tree traversal algorithm, we visit the current node, and then we 
     visit the left child or left subtree of the current node, and then we visit 
     the right child or right subtree of the current node."""
  """https://www.pythonforbeginners.com/data-structures/preorder-tree-traversal-algorithm-in-python"""
  def preorder(self,ptr):
    if ptr == None:
      return
    print(ptr.item,end=' ')  
    if ptr.left != None:
      self.preorder(ptr.left)   
    if ptr.right != None:
      self.preorder(ptr.right) 

  """we visit the left child or left subtree of the current node and then we visit the 
     right child or right subtree of the current node. At last, we visit the current node."""         
  def postorder(self,ptr):
    if ptr == None:
      return
    if ptr.left != None:
      self.postorder(ptr.left)   
    if ptr.right != None:
      self.postorder(ptr.right)     
    print(ptr.item,end=' ')  

def main():
    """Collect the user integer input when they enter their chosen values"""
    tree = BST()
    print('\nPlease enter the node values for a tree: ')
    nodes = input()
    nodes = nodes.strip().split()
    
    for node in nodes:
        tree.insert(int(node))

    """The menu section where the user has options and depending on which they pick
       the function will be triggered of that option picked""" 
    value = input("\n ---------------------------MENU----------------------------- \n1. Add a new value -> enter 'insert'\n2. Check for an existing element in the tree -> enter 'search'\n3. View the elements in preorder -> enter 'preorder' \n4. View the elements in order -> enter 'inorder' \n5. View the elements in postorder -> enter 'postorder'\n6. Instruction manual -> enter 'readme'\n7. Exit the program -> enter 'exit'\n")
    while value.strip() != "exit":
      if value.strip() ==  "preorder": 
        print("The elements in pre order are...")
        tree.preorder(tree.root)
        print('\n',end='')
      if value.strip() == 'readme':
        """https://www.youtube.com/shorts/knH_woIJ6-o helped me display file contents"""
        file = open("readmefunc.md", "r")
        print(file.read())
        file.close()
        print('\n', end='')
      if value.strip() ==  "inorder": 
        print("The elements in order are...")
        tree.inorder(tree.root)
        print('\n',end='')
      if value.strip() ==  "postorder":
        print("The elements in post order are...")
        tree.postorder(tree.root)
        print('\n',end='')
      if value.strip() ==  "insert":
        item =int(input("Enter the element you want to add: ")) 
        tree.insert(item)
      if value.strip() == "search":
        item =int(input("Enter the element you want to search: ")) 
        tree.search(tree.root,item)
      value = input() 

if __name__ == "__main__":
    main()

"""Author: Colin Ekedigwe - Student Number: 20403046 - I am aware of the Universities regards to breaches of academic
integrity and plagiarism as serious. Any assistance I have gotten by using code to help me has been referenced and
stated with links. I am writing this to acknowledge that a breach of the rules may result in penalties being imposed.
"""
