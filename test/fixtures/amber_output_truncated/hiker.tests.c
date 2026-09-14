#include "hiker.h"
#include <assert.h>
#include <stdio.h>

static void life_the_universe_and_everything(void)
{
    /* The learner put a print inside a loop to see what was happening. It
       goes to stderr, where a failing assert() writes too, and prints far
       more than the 50K the runner keeps, so the line naming the failed
       assertion is cut off the end. */
    const int the_answer = answer();
    for (int i = 0; i != 2500; i++)
    {
        fprintf(stderr, "debug: answer is %d, i is %d\n", the_answer, i);
    }
    assert(answer() == 42);
}

int main(void)
{
    life_the_universe_and_everything();
    puts("All tests passed");
}
