QUERY_C=RVCT
QUERY_NP=Programs
QUERY_ND=Data
QUERY_V=4.1
QUERY_R=`/arm/devsys-tools/abs/qrt $QUERY_C $QUERY_ND $QUERY_V :oban41`
QUERY_W=`/arm/devsys-tools/abs/read_build_global --only-values tool_warehouse`

QUERY_PRESULT=$QUERY_W/$QUERY_C/$QUERY_NP/$QUERY_V/$QUERY_R
QUERY_DRESULT=$QUERY_W/$QUERY_C/$QUERY_ND/$QUERY_V/$QUERY_R

PATH=$QUERY_PRESULT/linux-pentium:$PATH

RVCT41INC=$QUERY_DRESULT/include/unix
RVCT41LIB=$QUERY_DRESULT/lib

unset QUERY_C
unset QUERY_N
unset QUERY_V
unset QUERY_R
unset QUERY_W
unset QUERY_RESULT

export PATH
export RVCT41INC
export RVCT41LIB
