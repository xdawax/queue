/*
 *  Simple example of a CUnit unit test.
 *
 *  This program (crudely) demonstrates a very simple "black box"
 *  test of the standard library functions fprintf() and fread().
 *  It uses suite initialization and cleanup functions to open
 *  and close a common temporary file used by the test functions.
 *  The test functions then write to and read from the temporary
 *  file in the course of testing the library functions.
 *
 *  The 2 test functions are added to a single CUnit suite, and
 *  then run using the CUnit Basic interface.  The output of the
 *  program (on CUnit version 2.0-2) is:
 *
 *           CUnit : A Unit testing framework for C.
 *           http://cunit.sourceforge.net/
 *
 *       Suite: Suite_1
 *         Test: test of fprintf() ... passed
 *         Test: test of fread() ... passed
 *
 *       --Run Summary: Type      Total     Ran  Passed  Failed
 *                      suites        1       1     n/a       0
 *                      tests         2       2       2       0
 *                      asserts       5       5       5       0
 */

#include "CUnit/Basic.h"
#include "queue.h"


void queue_new_test(void)
{
    queue_t *queue = queue_new();

    CU_ASSERT_PTR_NOT_NULL(queue);

    free(queue);
}

void link_new_test(void)
{
    int a = 20;

    link_t *link1 = link_new(&a);
    link_t *link_null = link_new(NULL);

    CU_ASSERT_EQUAL(*(int*)link1->element, a);
    CU_ASSERT_PTR_NULL(link_null->element);

    free(link1);
    free(link_null);

}

void queue_get_first_test(void)
{
    int a = 20;

    queue_t *queue = queue_new();

    link_t *first = link_new(&a);

    CU_ASSERT_PTR_NULL(queue_get_first(queue));

    queue->first = first;
    queue->last = first;

    CU_ASSERT_PTR_NOT_NULL(queue_get_first(queue));
    CU_ASSERT_EQUAL(*(int*)queue_get_first(queue)->element, a);

    queue_pop(queue);

    CU_ASSERT_PTR_NULL(queue_get_first(queue));

    queue_destroy(queue);

    queue = NULL;

    CU_ASSERT_PTR_NULL(queue_get_first(queue));
}

void queueu_get_last_test(queue_t *queue)
{

}

void link_new_push_test(queue_t *queue, void *element)
{

}

void queue_push_test(queue_t *queue, link_t *link)
{

}

void queue_pop_test(queue_t *queue)
{

}

void queue_display_test(queue_t *queue)
{

}



void queue_get_length_test(queue_t *queue)
{

}

void queue_destroy_test(queue_t *queue)
{

}


/* The main() function for setting up and running the tests.
 * Returns a CUE_SUCCESS on successful running, another
 * CUnit error code on failure.
 */
int main()
{
    CU_pSuite pSuite = NULL;

    /* initialize the CUnit test registry */
    if (CUE_SUCCESS != CU_initialize_registry())
        return CU_get_error();

    /* add a suite to the registry */
    pSuite = CU_add_suite("QUEUE", NULL, NULL);
    if (NULL == pSuite) {
        CU_cleanup_registry();
        return CU_get_error();
    }

    /* add the tests to the suite */
    /* NOTE - ORDER IS IMPORTANT - MUST TEST fread() AFTER fprintf() */
    if ((NULL == CU_add_test(pSuite, "test of queue_new_test()", queue_new_test)) ||
        (NULL == CU_add_test(pSuite, "test of link_new_test()", link_new_test)) ||
        (NULL == CU_add_test(pSuite, "test of queue_get_first()", queue_get_first_test)))
    {
        CU_cleanup_registry();
        return CU_get_error();
    }

    /* Run all tests using the CUnit Basic interface */
    CU_basic_set_mode(CU_BRM_VERBOSE);
    CU_basic_run_tests();
    CU_cleanup_registry();
    return CU_get_error();
}