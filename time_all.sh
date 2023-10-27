#!/bin/bash
CLANGXX=$(which clang++)
CXX=$(which g++)
CLANG=$(which clang)
CC=$(which gcc)
JAVA=$(which java)
NODE=$(which node)
PYTHON=$(which python3)
BASH=$(which bash)
SH=$(which sh)
STATICSH="$(which busybox) sh"

echo $(eval uname -mprsv)

if [ -f "fizzbuzz.clang++" ]
then
  echo -e "\nTiming ${CLANGXX}"
  echo $(eval ${CLANGXX} --version)
  time ./fizzbuzz.clang++ > /dev/null
fi

if [ -f "fizzbuzz.g++" ]
then
  echo -e "\nTiming ${CXX}"
  echo $(eval ${CXX} --version)
  time ./fizzbuzz.g++ > /dev/null
fi

if [ -f "fizzbuzz.clang" ]
then
  echo -e "\nTiming ${CLANG}"
  echo $(eval ${CLANG} --version)
  time ./fizzbuzz.clang > /dev/null
fi

if [ -f "fizzbuzz.gcc" ]
then
  echo -e "\nTiming ${CC}"
  echo $(eval ${CC} --version)
  time ./fizzbuzz.gcc > /dev/null
fi

if [ -n "$JAVA" ]
then
  echo -e "\nTiming ${JAVA}"
  echo $(eval ${JAVA} --version)
  time ${JAVA} fizzbuzz.java > /dev/null
fi

if [ -n "$NODE" ]
then
  echo -e "\nTiming ${NODE}"
  echo $(eval ${NODE} --version)
  time ${NODE} fizzbuzz.js > /dev/null
fi

if [ -n "$PYTHON" ]
then
  echo -e "\nTiming ${PYTHON}"
  echo $(eval ${PYTHON} --version)
  time ${PYTHON} fizzbuzz.py > /dev/null
fi

if [ -n "$BASH" ]
then
  echo -e "\nTiming ${BASH}"
  echo $(eval ${BASH} --version)
  time ${BASH} fizzbuzz.sh > /dev/null
fi

echo -e "\nTiming ${SH}"
time ${SH} fizzbuzz.sh > /dev/null

if [ -n "$STATICSH" ]
then
  echo -e "\nTiming ${STATICSH}"
  time ${STATICSH} fizzbuzz.sh > /dev/null
fi

