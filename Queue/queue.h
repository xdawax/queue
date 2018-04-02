//
// Created by dawa on 2018-04-02.
//

#ifndef QUEUE_QUEUE_H
#define QUEUE_QUEUE_H

#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

typedef struct queue queue_t;
typedef struct link link_t;

struct link {
    link_t* next;
    void* element;
};

struct queue {
    link_t *first;
    link_t *last;
};

/// Creates an empty queue
/// \returns: a pointer to an empty queue
queue_t* queue_new();

/// Creates a link containing a reference to the element
/// \param element a pointer to the element of the link
/// \returns: a pointer to the created link
link_t* link_new(void *element);

/// Creates and pushes a link to the queue
/// \param queue a pointer to the queue
/// \param element a pointer to the element of the link
/// \returns: true if successful otherwise false
bool link_new_push(queue_t *queue, void *element);

/// Pushes a new link to the last slot in the queue
/// \param queue a pointer to the queue
/// \param link a pointer to the link
/// \returns: true if successfully pushed to the queue
bool queue_push(queue_t *queue, link_t *link);

/// Pops the first link in the queue and frees memory
/// \param queue the queue to pop the link from
/// \return: true if successful pop otherwise false
bool queue_pop(queue_t *queue);
/// Prints the integer values of the queue
/// \param queue a pointer to the queue to be printed
/// \returns: void
void queue_display(queue_t *queue);

/// \returns: the first link in the queue
link_t* queue_get_first(queue_t *queue);

/// \returns: the last link in the queue
link_t* queueu_get_last(queue_t *queue);

/// Calculates the length of the queue
/// \param queue a pointer to the queue to calculate
/// \returns: the ammount of links in the queue
int64_t queue_get_length(queue_t *queue);

/// Removes the entire queue and its elements from memory
/// \param queue a pointer to the queue
/// \returns: true if successfully destroyed, false otherwise
bool queue_destroy(queue_t *queue);
#endif //QUEUE_QUEUE_H

