#include "binary_trees.h"

/**
* binary_tree_size - measures the size of a binary tree
* @tree: pointer to the root node of the tree to measure
*
* Return: size of the tree, or 0 if tree is NULL
*
* Description: Size is defined as the total number of nodes
*              in the binary tree.
*/
size_t binary_tree_size(const binary_tree_t *tree)
{
	if (tree == NULL)
		return (0);

	return (binary_tree_size(tree->left) +
			binary_tree_size(tree->right) + 1);
}
