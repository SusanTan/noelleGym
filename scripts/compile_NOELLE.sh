#!/bin/bash -e

# Download the git repository
if ! test -d NOELLE ; then
  git clone -b splendid-integration https://github.com/SusanTan/noelle.git NOELLE ;
fi

# Compile NOELLE
cd NOELLE ;
if ! test -e enable ; then
  make ;
  make clean ;
fi
