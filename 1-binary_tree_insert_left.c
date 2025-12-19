#include "binary_trees.h"

/**
* binary_tree_insert_left - Insert a node as the left-child of another
* @parent: Pointer to the node to insert the left-child in
* @value: Value to store in the new node
*
* Return: Pointer to the created node, or NULL on failure or if parent is NULL
*/
binary_tree_t *binary_tree_insert_left(binary_tree_t *parent, int value)
{

	/* TODO: Implement insertion with reassignment if left exists */
	binary_tree_t *left, *temp;

	if (parent == NULL)
		return (NULL);

	left = malloc(sizeof(binary_tree_t));
	if (left == NULL)
		return (NULL);

	left->n = value;
	left->left = NULL;
	left->right = NULL;

	if (parent->left)
	{
		parent->left = temp;
		parent->left = left;
		left->left = temp;
	}
	parent->left = left;

	return (NULL);
}
