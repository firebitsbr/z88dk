
// automatically generated by m4 from headers in proto subdir


#ifndef __SYSTEM_TIME_H__
#define __SYSTEM_TIME_H__

#include <arch.h>
#include <stdint.h>

extern uint32_t _system_time;
extern uint8_t  _system_time_fraction;

//
// SYSTEM TIME COMMANDS
//

// system_tick_init( void *prt0_isr) is needed for non-asci0 subtypes (basic, basic_dcio)

extern void __LIB__ __FASTCALL__ system_tick_init(void *prt0_isr) __smallc;



#endif
