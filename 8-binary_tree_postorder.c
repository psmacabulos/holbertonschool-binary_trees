#include "binary_trees.h"

/**
* binary_tree_postorder - traverses a binary tree using post-order traversal
* @tree: pointer to the root node of the tree to traverse
* @func: pointer to a function to call for each node's value
*
* Description: Visits nodes in the order Left → Right → Root.
*              Calls func(node->n) for each visited node.
*              If tree or func is NULL, does nothing.
*/
void binary_tree_postorder(const binary_tree_t *tree, void (*func)(int))
{
	if (tree == NULL || func == NULL)
		return;

	binary_tree_postorder(tree->left, func);   /* Traverse left subtree */
	binary_tree_postorder(tree->right, func);  /* Traverse right subtree */
	func(tree->n);                             /* Process current node */
}
