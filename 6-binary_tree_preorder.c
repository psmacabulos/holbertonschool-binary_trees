#include "binary_trees.h"

/**
* binary_tree_preorder - traverses a binary tree using pre-order traversal
* @tree: pointer to the root node of the tree to traverse
* @func: pointer to a function to call for each node's value
*
* Description: Visits nodes in the order Root → Left → Right.
*              Calls func(node->n) for each visited node.
*              If tree or func is NULL, does nothing.
*/
void binary_tree_preorder(const binary_tree_t *tree, void (*func)(int))
{
	if (tree == NULL || func == NULL)
		return;

	func(tree->n);  /* Process current node */
	binary_tree_preorder(tree->left, func);
	binary_tree_preorder(tree->right, func);
}
