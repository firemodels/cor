#!/bin/bash

SVNROOT=`pwd`/..

echo ""
echo "Running Stage 1 - Compile the correlations program"
echo ""
cd $SVNROOT/Build/intel_linux_64
./make_cor.sh

echo ""
echo "Running Stage 2 - Run the correlations program"
echo ""
cd $SVNROOT/Validation
./Run_Correlation_Cases.sh

echo ""
echo "Running Stage 3 - Run Python validation script"
echo ""
cd $SVNROOT/Utilities
python Correlation_validation_script.py

echo ""
echo "Running Stage 4 - Build Correlation Guide"
echo ""
cd $SVNROOT/Manuals
./make_guide.sh

