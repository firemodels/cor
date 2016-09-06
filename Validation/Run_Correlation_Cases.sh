#!/bin/bash -f

# This script runs all of the Correlation cases

export SVNROOT=`pwd`/..
export correlations=$SVNROOT/Source/correlations
export VERIFICATION_DIR=$SVNROOT/Verification
export VALIDATION_DIR=$SVNROOT/Validation

# First, compile latest version of correlations.f90

source $IFORT_COMPILER/bin/compilervars.sh intel64

cd $SVNROOT/Source
ifort correlations.f90 -o correlations

# Run all Correlation verification cases

cd $VERIFICATION_DIR
$correlations Verification.txt

# Run all Correlation validation cases

cd $VALIDATION_DIR/ATF_Corridors
$correlations ATF_Corridors_Correlation_Inputs.txt

cd $VALIDATION_DIR/CAROLFIRE
$correlations CAROLFIRE_Correlation_Inputs.txt

cd $VALIDATION_DIR/Fleury_Heat_Flux
$correlations Fleury_Heat_Flux_Correlation_Inputs.txt

cd $VALIDATION_DIR/FM_SNL
$correlations FM_SNL_Correlation_Inputs.txt

cd $VALIDATION_DIR/LLNL_Enclosure
$correlations LLNL_Correlation_Inputs.txt

cd $VALIDATION_DIR/NBS_Multi-Room
$correlations NBS_Multi-Room_Correlation_Inputs.txt

cd $VALIDATION_DIR/NIST_NRC
$correlations NIST_NRC_Correlation_Inputs.txt

cd $VALIDATION_DIR/NIST_Smoke_Alarms
$correlations NIST_Smoke_Alarms_Correlation_Inputs.txt

cd $VALIDATION_DIR/SP_AST
$correlations SP_AST_Correlation_Inputs.txt

cd $VALIDATION_DIR/Steckler_Compartment
$correlations Steckler_Correlation_Inputs.txt

cd $VALIDATION_DIR/UL_NFPRF
$correlations UL_NFPRF_Correlation_Inputs.txt

cd $VALIDATION_DIR/USN_Hangars
$correlations USN_Hangars_Correlation_Inputs.txt

cd $VALIDATION_DIR/Vettori_Flat_Ceiling
$correlations Vettori_Correlation_Inputs.txt

cd $VALIDATION_DIR/VTT
$correlations VTT_Correlation_Inputs.txt

cd $VALIDATION_DIR/WTC
$correlations WTC_Correlation_Inputs.txt

echo Correlation cases complete
