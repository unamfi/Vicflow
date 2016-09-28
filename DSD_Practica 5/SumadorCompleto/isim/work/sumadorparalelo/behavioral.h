////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Work_sumadorparalelo_behavioral_H
#define H_Work_sumadorparalelo_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_sumadorparalelo_behavioral: public HSim__s6 {
public:

    HSim__s1 SE[4];

  char t0;
  char t1;
  char t2;
  char t3;
    Work_sumadorparalelo_behavioral(const char * name);
    ~Work_sumadorparalelo_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_sumadorparalelo_behavioral(const char *name);

#endif
