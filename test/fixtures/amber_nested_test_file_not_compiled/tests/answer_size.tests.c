#include "tests/answer_size.tests.h"
#include "hiker.h"
#include <assert.h>

/* The makefile gathers its files with a shallow *.c wildcard, so a test put
   in a sub-directory is never compiled. The header beside it still resolves,
   which is what lets main name this test and the link then fail on it. */
void the_answer_is_two_digits_long(void)
{
    assert(answer() > 9 && answer() < 100);
}
