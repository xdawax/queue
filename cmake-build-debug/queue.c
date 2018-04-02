//
// Created by dawa on 2018-04-02.
//

#include <assert.h>
#include "../queue.h"
// git wont add my changes trying with comment!
queue_t* queue_new()
{
    queue_t *queue = calloc(sizeof(queue_t), 1);

    return queue;
}

link_t* queue_get_first(queue_t *queue)
{
    if (queue == NULL) {
        return NULL;
    }
    return queue->first;
}

link_t* queueu_get_last(queue_t *queue)
{
    if (queue == NULL) {
        return NULL;
    }
    return queue->last;
}

link_t* link_new(void *elem)
{
    link_t *link = calloc(sizeof(link_t), 1);
    link->element = elem;
    link->next = NULL;
    return link;
}

bool queue_pop(queue_t *queue)
{
    if (queue->first == NULL || queue->last == NULL) {
        return false;
    }
    else {
        link_t *link_pop = queue->first;
        if (link_pop->next == NULL) {
            queue->first = NULL;
            queue->last = NULL;
            free(link_pop);
            return true;
        }
        else {
            queue->first = link_pop->next;
            free(link_pop);
            return true;
        }
    }
}

// TODO skapa en iter som tar kö och funktionspekare DRY!
int64_t queue_get_length(queue_t *queue)
{
    link_t *current = queue->first;
    int count = 0;

    if (current == NULL) {
        return 0;
    }
    else {
        do {
            count++;
            current = current->next;
        } while (current != NULL);
    }
    return count;
}

bool link_new_push(queue_t *queue, void *elem)
{
    if (queue == NULL || elem == NULL) {
        return false;
    }

    link_t *link = link_new(elem);

    if (queue_push(queue, link)) {
        return true;
    }
    else return false;
}

bool queue_push(queue_t *queue, link_t *link)
{
    if (queue == NULL || link == NULL) {
        return false;
    }

    if (queue->first == NULL && queue->last == NULL) {
        queue->first = link;
        queue->last = link;
        return true;
    }
    else {
        queue->last->next = link;
        queue->last = link;
        return true;
    }

    assert(false);
}

// TODO skapa en iter som tar kö och funktionspekare DRY!
void queue_display(queue_t *queue)
{
    link_t *current = queue->first;
    int pos = 1;

    if (current == NULL) {
        printf("Queue is empty!\n");
    }
    else {
        do {
            printf("Pos: %d, Val: %d\n", pos, *(int*)current->element);
            pos++;
            current = current->next;
        } while (current != NULL);
    }
}
// TODO skapa en iter som tar kö och funktionspekare DRY!
bool queue_destroy(queue_t *queue)
{
    if (queue == NULL) {
        return false;
    }

    int length = queue_get_length(queue);

    for (int i = 0; i < length; ++i) {
        queue_pop(queue);
    }

    free(queue);

    return true;
}
