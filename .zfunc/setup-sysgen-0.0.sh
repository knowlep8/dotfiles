# vim: syntax=sh

# file   setup-sysgen-4.1.sh
# brief  
# author Paul Gotch
# 
# Copyright ARM Limited 2008 All Rights Reserved.
  
# RCS $Revision: 1.1 $
# Checkin $Date: 2006-09-13 11:12:25 $
# Revising $Author: pgotch $
# Original $URL: $

QUERY_C=ESL
QUERY_N=SystemGenerator
QUERY_V=0.0
QUERY_R=`/arm/devsys-tools/abs/qrt $QUERY_C $QUERY_N $QUERY_V validated`
QUERY_W=`/arm/devsys-tools/abs/read_build_global --only-values tool_warehouse`
# tool_warehouse is list, we need to search the list to find which one has got
# the component we are interested in in it.

QUERY_RESULT=$QUERY_W/$QUERY_C/$QUERY_N/$QUERY_V/$QUERY_R

export MAXCORE_HOME=$QUERY_RESULT/Linux
export PATH=$QUERY_RESULT/Linux/bin:$PATH

unset QUERY_C
unset QUERY_N
unset QUERY_V
unset QUERY_R
unset QUERY_W
unset QUERY_RESULT

# eof setup-sysgen-4.1.sh
