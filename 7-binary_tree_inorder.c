#include "binary_trees.h"

/**
* binary_tree_inorder - traverses a binary tree using in-order traversal
* @tree: pointer to the root node of the tree to traverse
* @func: pointer to a function to call for each node's value
*
* Description: Visits nodes in the order Left → Root → Right.
*              Calls func(node->n) for each visited node.
*              If tree or func is NULL, does nothing.
*/
void binary_tree_inorder(const binary_tree_t *tree, void (*func)(int))
{
	if (tree == NULL || func == NULL)
		return;

	binary_tree_inorder(tree->left, func);   /* Traverse left subtree */
	func(tree->n);                           /* Process current node */
	binary_tree_inorder(tree->right, func);  /* Traverse right subtree */
}
