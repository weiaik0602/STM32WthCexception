#include "unity.h"
#include "DummyTest.h"
#include "Error.h"
#include "Exception.h"
#include "CException.h"
void setUp(void)
{
}

void tearDown(void)
{
}

void test_throwException(void) {
	CEXCEPTION_T ex = NULL;
	int value=40;
  Try {
    throwException(ERR_INVALID_OPERAND, (void *)value,                     \
                   "Invalid value, expecting a '56', but received '%d'\n", \
                    value);
  } Catch(ex) {
    dumpException(ex);
	TEST_ASSERT_EQUAL((int)ex->data,40);
  }
  freeException(ex);
}
