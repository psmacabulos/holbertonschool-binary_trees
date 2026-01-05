#include "binary_trees.h"

/**
* binary_tree_balance - Measure the balance factor of a binary tree
* @tree: Pointer to the root node
*
* Return: Balance factor (left height - right height) as int
*/
int binary_tree_balance(const binary_tree_t *tree)
{
	if (tree == NULL)
		return (0);
	return (binary_tree_height(tree->left) - binary_tree_height(tree->right));

}
