#!/bin/bash
# start.sh — Scaffold Holberton/ALX Binary Trees project
# Usage:
#   chmod +x start.sh
#   ./start.sh
# This script:
#   - Creates binary_trees/ directory
#   - Writes README.md and binary_trees.h
#   - Generates 0–18 .c exercise files with correct prototypes/stubs
#   - Adds a simple main.c for smoke testing

set -e  # Exit on first error for safety


# 2) README.md
cat > README.md << 'EOF'
# Binary Trees (Holberton/ALX)

Scaffold for the Binary Trees project: header, function prototypes, and 19 exercise stubs (0–18).
Implementations are left as TODOs to be completed per task requirements.
EOF

# 3) Header file with struct and all prototypes
cat > binary_trees.h << 'EOF'
#ifndef BINARY_TREES_H
#define BINARY_TREES_H

#include <stdio.h>
#include <stdlib.h>

/**
 * struct binary_tree_s - Binary tree node
 * @n: Integer stored in the node
 * @parent: Pointer to the parent
 * @left: Pointer to the left child
 * @right: Pointer to the right child
 */
struct binary_tree_s
{
    int n;
    struct binary_tree_s *parent;
    struct binary_tree_s *left;
    struct binary_tree_s *right;
};

typedef struct binary_tree_s binary_tree_t;

/* Prototypes for tasks 0–18 */
binary_tree_t *binary_tree_node(binary_tree_t *parent, int value);
binary_tree_t *binary_tree_insert_left(binary_tree_t *parent, int value);
binary_tree_t *binary_tree_insert_right(binary_tree_t *parent, int value);
void binary_tree_delete(binary_tree_t *tree);
int binary_tree_is_leaf(const binary_tree_t *node);
int binary_tree_is_root(const binary_tree_t *node);
void binary_tree_preorder(const binary_tree_t *tree, void (*func)(int));
void binary_tree_inorder(const binary_tree_t *tree, void (*func)(int));
void binary_tree_postorder(const binary_tree_t *tree, void (*func)(int));
size_t binary_tree_height(const binary_tree_t *tree);
size_t binary_tree_depth(const binary_tree_t *tree);
size_t binary_tree_size(const binary_tree_t *tree);
size_t binary_tree_leaves(const binary_tree_t *tree);
size_t binary_tree_nodes(const binary_tree_t *tree);
int binary_tree_balance(const binary_tree_t *tree);
int binary_tree_is_full(const binary_tree_t *tree);
int binary_tree_is_perfect(const binary_tree_t *tree);
binary_tree_t *binary_tree_sibling(binary_tree_t *node);
binary_tree_t *binary_tree_uncle(binary_tree_t *node);

#endif /* BINARY_TREES_H */
EOF

# Helper to write a stub file with a doc comment and correct signature
make_file() {
  local filename="$1"
  local signature="$2"
  local brief="$3"
  cat > "$filename" << EOF
#include "binary_trees.h"

/**
 * $signature
 * $brief
 *
 * Return: See task specification.
 */
$signature
{
    /* TODO: Implement per task requirements */
    return (0); /* Placeholder; adjust to correct return type/value */
}
EOF
}

# 4) Exact exercise files (0–18) with correct names and signatures
# Note: We tailor stubs per return type (pointer/int/size_t/void).

# 0 - Create node
cat > 0-binary_tree_node.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_node - Create a binary tree node
 * @parent: Pointer to the parent node
 * @value: Integer value to store in the node
 *
 * Return: Pointer to the new node, or NULL on failure
 */
binary_tree_t *binary_tree_node(binary_tree_t *parent, int value)
{
    /* TODO: Implement allocation + initialization */
    return (NULL);
}
EOF

# 1 - Insert left
cat > 1-binary_tree_insert_left.c << 'EOF'
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
    return (NULL);
}
EOF

# 2 - Insert right
cat > 2-binary_tree_insert_right.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_insert_right - Insert a node as the right-child of another
 * @parent: Pointer to the node to insert the right-child in
 * @value: Value to store in the new node
 *
 * Return: Pointer to the created node, or NULL on failure or if parent is NULL
 */
binary_tree_t *binary_tree_insert_right(binary_tree_t *parent, int value)
{
    /* TODO: Implement insertion with reassignment if right exists */
    return (NULL);
}
EOF

# 3 - Delete tree
cat > 3-binary_tree_delete.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_delete - Delete an entire binary tree
 * @tree: Pointer to the root node of the tree
 *
 * Return: Nothing
 */
void binary_tree_delete(binary_tree_t *tree)
{
    /* TODO: Post-order free */
    (void)tree;
}
EOF

# 4 - Is leaf
cat > 4-binary_tree_is_leaf.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_is_leaf - Check if a node is a leaf
 * @node: Pointer to the node to check
 *
 * Return: 1 if leaf, 0 otherwise
 */
int binary_tree_is_leaf(const binary_tree_t *node)
{
    /* TODO: Implement leaf check */
    return (0);
}
EOF

# 5 - Is root
cat > 5-binary_tree_is_root.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_is_root - Check if a node is a root
 * @node: Pointer to the node to check
 *
 * Return: 1 if root, 0 otherwise
 */
int binary_tree_is_root(const binary_tree_t *node)
{
    /* TODO: Implement root check */
    return (0);
}
EOF

# 6 - Preorder traversal
cat > 6-binary_tree_preorder.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_preorder - Traverse a binary tree using pre-order
 * @tree: Pointer to the root node
 * @func: Pointer to a function to call for each node's value
 *
 * Return: Nothing
 */
void binary_tree_preorder(const binary_tree_t *tree, void (*func)(int))
{
    /* TODO: Root, Left, Right traversal; call func(node->n) */
    (void)tree;
    (void)func;
}
EOF

# 7 - Inorder traversal
cat > 7-binary_tree_inorder.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_inorder - Traverse a binary tree using in-order
 * @tree: Pointer to the root node
 * @func: Pointer to a function to call for each node's value
 *
 * Return: Nothing
 */
void binary_tree_inorder(const binary_tree_t *tree, void (*func)(int))
{
    /* TODO: Left, Root, Right traversal; call func(node->n) */
    (void)tree;
    (void)func;
}
EOF

# 8 - Postorder traversal
cat > 8-binary_tree_postorder.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_postorder - Traverse a binary tree using post-order
 * @tree: Pointer to the root node
 * @func: Pointer to a function to call for each node's value
 *
 * Return: Nothing
 */
void binary_tree_postorder(const binary_tree_t *tree, void (*func)(int))
{
    /* TODO: Left, Right, Root traversal; call func(node->n) */
    (void)tree;
    (void)func;
}
EOF

# 9 - Height
cat > 9-binary_tree_height.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_height - Measure the height of a binary tree
 * @tree: Pointer to the root node
 *
 * Return: Height as size_t; 0 if tree is NULL
 */
size_t binary_tree_height(const binary_tree_t *tree)
{
    /* TODO: Compute height recursively */
    (void)tree;
    return (0);
}
EOF

# 10 - Depth
cat > 10-binary_tree_depth.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_depth - Measure the depth of a node in a binary tree
 * @tree: Pointer to the node
 *
 * Return: Depth as size_t; 0 if tree is NULL
 */
size_t binary_tree_depth(const binary_tree_t *tree)
{
    /* TODO: Walk up via parent pointers */
    (void)tree;
    return (0);
}
EOF

# 11 - Size
cat > 11-binary_tree_size.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_size - Measure the size of a binary tree
 * @tree: Pointer to the root node
 *
 * Return: Number of nodes as size_t; 0 if tree is NULL
 */
size_t binary_tree_size(const binary_tree_t *tree)
{
    /* TODO: Sum of sizes: 1 + left + right */
    (void)tree;
    return (0);
}
EOF

# 12 - Leaves
cat > 12-binary_tree_leaves.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_leaves - Count the leaves in a binary tree
 * @tree: Pointer to the root node
 *
 * Return: Number of leaves as size_t
 */
size_t binary_tree_leaves(const binary_tree_t *tree)
{
    /* TODO: Count nodes with no children */
    (void)tree;
    return (0);
}
EOF

# 13 - Nodes with children
cat > 13-binary_tree_nodes.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_nodes - Count nodes with at least one child
 * @tree: Pointer to the root node
 *
 * Return: Count as size_t
 */
size_t binary_tree_nodes(const binary_tree_t *tree)
{
    /* TODO: Count nodes where left or right is non-NULL */
    (void)tree;
    return (0);
}
EOF

# 14 - Balance
cat > 14-binary_tree_balance.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_balance - Measure the balance factor of a binary tree
 * @tree: Pointer to the root node
 *
 * Return: Balance factor (left height - right height) as int
 */
int binary_tree_balance(const binary_tree_t *tree)
{
    /* TODO: Use heights of subtrees */
    (void)tree;
    return (0);
}
EOF

# 15 - Is full
cat > 15-binary_tree_is_full.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_is_full - Check if a binary tree is full
 * @tree: Pointer to the root node
 *
 * Return: 1 if full, 0 otherwise
 */
int binary_tree_is_full(const binary_tree_t *tree)
{
    /* TODO: Every node has 0 or 2 children */
    (void)tree;
    return (0);
}
EOF

# 16 - Is perfect
cat > 16-binary_tree_is_perfect.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_is_perfect - Check if a binary tree is perfect
 * @tree: Pointer to the root node
 *
 * Return: 1 if perfect, 0 otherwise
 */
int binary_tree_is_perfect(const binary_tree_t *tree)
{
    /* TODO: All leaves at same depth and full nodes */
    (void)tree;
    return (0);
}
EOF

# 17 - Sibling
cat > 17-binary_tree_sibling.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_sibling - Find the sibling of a node
 * @node: Pointer to the node
 *
 * Return: Pointer to sibling node, or NULL
 */
binary_tree_t *binary_tree_sibling(binary_tree_t *node)
{
    /* TODO: Use node->parent logic */
    (void)node;
    return (NULL);
}
EOF

# 18 - Uncle
cat > 18-binary_tree_uncle.c << 'EOF'
#include "binary_trees.h"

/**
 * binary_tree_uncle - Find the uncle of a node
 * @node: Pointer to the node
 *
 * Return: Pointer to uncle node, or NULL
 */
binary_tree_t *binary_tree_uncle(binary_tree_t *node)
{
    /* TODO: Sibling of parent */
    (void)node;
    return (NULL);
}
EOF

# 5) Minimal smoke-test main (optional)
cat > main.c << 'EOF'
#include "binary_trees.h"

int main(void)
{
    binary_tree_t *root = binary_tree_node(NULL, 98);
    if (!root)
        return (1);
    printf("Root: %d\n", root->n);
    binary_tree_delete(root);
    return (0);
}
EOF

echo "✅ Scaffold complete: binary_trees/ with 0–18 .c files, header, README, and main.c"
