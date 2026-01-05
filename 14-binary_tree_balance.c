#include "binary_trees.h"


/**
* binary_tree_height - measures the height of a binary tree
* @tree: pointer to the root node of the tree to measure
*
* Return: height of the tree, or 0 if tree is NULL
*
* Description: Height is defined as the number of edges on the longest
*              path from the node down to a leaf.
*/
size_t binary_tree_height(const binary_tree_t *tree)
{
	size_t left, right;

	if (tree == NULL)
		return (0);
	if (tree->left == NULL && tree->right == NULL)
		return (0);
	left = binary_tree_height(tree->left);
	right = binary_tree_height(tree->right);

	if (left >= right)
		return (left + 1);
	return (right + 1);
}

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
