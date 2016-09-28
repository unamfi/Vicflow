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

#ifndef H_Work_deco_behavioral_H
#define H_Work_deco_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_deco_behavioral: public HSim__s6 {
public:

    HSim__s1 SE[3];

  char t0;
  char t1;
HSimConstraints *c2;
  char t3;
  char t4;
HSimConstraints *c5;
  char t6;
  char t7;
HSimConstraints *c8;
  char t9;
  char t10;
HSimConstraints *c11;
  char t12;
  char t13;
HSimConstraints *c14;
  char t15;
  char t16;
HSimConstraints *c17;
  char t18;
  char t19;
HSimConstraints *c20;
  char t21;
  char t22;
HSimConstraints *c23;
  char t24;
  char t25;
HSimConstraints *c26;
  char t27;
  char t28;
HSimConstraints *c29;
  char t30;
  char t31;
HSimConstraints *c32;
  char t33;
  char t34;
HSimConstraints *c35;
  char t36;
  char t37;
HSimConstraints *c38;
  char t39;
  char t40;
HSimConstraints *c41;
  char t42;
  char t43;
HSimConstraints *c44;
  char t45;
  char t46;
HSimConstraints *c47;
  char t48;
  char t49;
HSimConstraints *c50;
  char t51;
  char t52;
HSimConstraints *c53;
  char t54;
  char t55;
HSimConstraints *c56;
  char t57;
  char t58;
HSimConstraints *c59;
    Work_deco_behavioral(const char * name);
    ~Work_deco_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_deco_behavioral(const char *name);

#endif
