cd ..
set SVNROOT="%CD%"

echo Running Stage 1 - Compile the correlations program

cd %SVNROOT%\Build\intel_win_64
call make_cor.bat

echo Running Stage 2 - Run the correlations program

cd %SVNROOT%\Validation
call Run_Correlation_Cases.bat

echo Running Stage 3 - Run Python validation script

cd %SVNROOT%\Utilities
python Correlation_validation_script.py


echo Running Stage 4 - Build Correlation Guide

cd %SVNROOT%\Manuals
call make_guide.bat