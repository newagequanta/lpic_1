#!/bin/bash

clear

echo "Usage -> test-if.sh <ELEMENT_1> <ELEMENT_2>"
echo ""
echo ""

#testing if quotes are needed or not for integer comparison

if [[ $1 == 0 ]]; then
    echo First argument is a 0
else
    echo First argument is not a 0
fi

if [ $1 = $2 ]; then
    echo "---------------------------"
    echo "---------------------------"
    echo " [ \$1 = \$2 ] "
    echo "This is sh compliant where = is for comparison"
    echo "Works for STRINGS and INTEGERS"
    echo "---------------------------"
    echo "---------------------------"
fi
echo ""
echo ""

if [[ $1 == $2 ]]; then
    echo "---------------------------"
    echo "---------------------------"
    echo " [ \$1 == \$2 ] "
    echo "This is only Bash compliant where == is for comparison"
    echo "BUT for sh compatibility, the expression must exist inside [[]]"
    echo "Works for STRINGS and INTEGERS"
    echo "---------------------------"
    echo "---------------------------"
fi

echo ""
echo ""

if [ $1 -eq $2 ]; then
    echo "---------------------------"
    echo "---------------------------"
    echo " [ \$1 -eq \$2 ] "
    echo "This is also Bash compliant only where -eq is for comparison"
    echo "BUT for sh compatibility, the expression must exist inside [[]]"
    echo "Works for INTGERS ONLY. A string should have thrown an error"
    echo "---------------------------"
    echo "---------------------------"
else
    echo "---------------------------"
    echo "---------------------------"
    echo "Works for INTGERS ONLY. A string should have thrown an error"
    echo "---------------------------"
    echo "---------------------------"
fi
