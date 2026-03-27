# cor
Empirical Fire Correlations

This repository contains the materials needed to compile NIST Special Publication 1169, _Verification and Validation of Commonly Used Empirical Correlations for Fire Scenarios_. To make use of these materials, you need a Fortran compiler (preferably Intel `ifx`), Python (with the `fds_python_env` which is used to process the FDS manuals), LaTeX (using `biblatex` and `biber`), and a linux bash shell. The `bash` shell is not absolutely necessary, but all of the scripts in this repository use `bash`. It is also assumed that you have the git repositories `firemodels/fds` and `firemodels/exp` cloned in the same directory as `firemodels/cor`.

The process to compile the document is basically as follows:
  * Compile the Fortran program `Source/correlations.f90` by executing the script `Build/intel_linux_64/make_cor.sh`. If you want to use another compiler, add an entry to the `Build/makefile` or just compile the single Fortran file directly. The program does not make use of OpenMP or MPI.
  * Run the bash shell script `Validation/Run_Correlation_Cases.sh`. This script computes the various measured quantities from the experiments listed in the `Validation` sub-directories.
  * Run the Python script `Utilities/Correlation_validation_script.py` that creates the plots for the guide.
  * Compile the LaTeX document `Manuals/Correlation_Guide.tex` by running the bash shell script `Manuals/make_guide.sh`

There is a single bash shell script called `Utilities/correlation_bot.sh` that automatically runs these various scripts. If, however, this script cannot be run, you can still use it as a template to make the necessary adjustments. 

