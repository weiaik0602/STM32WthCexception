#include "build/temp/_test_DummyTest.c"
#include "CException.h"
#include "Exception.h"
#include "Error.h"
#include "DummyTest.h"
#include "unity.h"
void setUp(void)

{

}



void tearDown(void)

{

}



void test_throwException(void) {

 ExceptionPtr ex = 

                  ((void *)0)

                      ;

 int value=40;

  { jmp_buf *PrevFrame, NewFrame; unsigned int MY_ID = (0); PrevFrame = CExceptionFrames[MY_ID].pFrame; CExceptionFrames[MY_ID].pFrame = (jmp_buf*)(&NewFrame); CExceptionFrames[MY_ID].Exception = ((ExceptionPtr)0x5A5A5A5A); ; if (

 _setjmp((

 NewFrame

 ), __builtin_frame_address (0)) 

 == 0) { if (1) {

    throwException(21, (void *)value,

                   "Invalid value, expecting a '56', but received '%d'\n",

                    value);

  } else { } CExceptionFrames[MY_ID].Exception = ((ExceptionPtr)0x5A5A5A5A); ; } else { ex = CExceptionFrames[MY_ID].Exception; (void)ex; ; } CExceptionFrames[MY_ID].pFrame = PrevFrame; ; } if (CExceptionFrames[(0)].Exception != ((ExceptionPtr)0x5A5A5A5A)) {

    dumpException(ex);

 UnityAssertEqualNumber((UNITY_INT)(((int)ex->data)), (UNITY_INT)((40)), (

((void *)0)

), (UNITY_UINT)(23), UNITY_DISPLAY_STYLE_INT);

  }

  freeException(ex);

}
