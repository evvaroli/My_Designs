#---------------------------------------------------------------------------- 
#  PLI Programing Language Interface - (C) Copyright 2001 by Aldec, Inc.		
#  Project : PLI Wizard  v.1.0											
#  File    : build_pli.mak 												
#  NMAKE makefile to make verisuser_aldec.dll for Active-HDL,			
#  using MS Visual C++ on Windows										
#																				
#  Date:  May 24 2002															
#----------------------------------------------------------------------------


		#This file is automatically maintained and may be overwritten


ALDEC_DIR="C:\Program Files\Aldec\Active-HDL 8.3"


SOURCES= oscil_c_pli.c \
	veriuser_aldec.c

OBJS = $(SOURCES:.c=.obj)
CFLAGS = -DMSC -DWIN32 -I$(ALDEC_DIR)\pli\include -MD

.c.obj:
	$(CC) $(CFLAGS) -c $<

oscil_c_pli.dll: $(OBJS)
	link -dll /out:$@ $(OBJS) -EXPORT:veriusertfs $(ALDEC_DIR)\pli\lib\aldecpli.lib


#end of file
