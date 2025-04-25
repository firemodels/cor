% McGrattan
% March 21, 2011
% Correlation_validation_script.m
%
% This script creates the plots that are included in the Correlation Guide.
% It consists of calls to other scripts contained within the
% subfolder called "scripts". 
%
% The most important script is called dataplot. It reads the file called
% Correlation_validation_dataplot_inputs.csv and generates 1000+ plots. If you
% want to process only some of these plots, comment out the other 
% scripts and change the data plot line as follows:
%
% [saved_data,drange] = dataplot(Dataplot_Inputs_File,Validation_Dir,Manuals_Dir,[a:b]);
%
% where a and b are the lines in the .csv file you want to process.
% Alternatively, you can specify the "Dataname" you want:
%
% [saved_data,drange] = dataplot(Dataplot_Inputs_File,Validation_Dir,Manuals_Dir,'WTC');
%
% In this case, all the WTC results will be plotted.
%
% Dataplot creates most of the plots for the Validation Guide.
% It must be run before scatplot, which makes the scatter plots.

close all
clear all

script_dir = [pwd, '/../../fds/Utilities/Matlab/scripts/'];
addpath(script_dir)

% Dataplot and scatplot options

Dataplot_Inputs_File = [pwd, '/Correlation_validation_dataplot_inputs.csv'];
EXP_Dir = [pwd, '/../../exp/'];
OUT_Dir = [pwd, '/../Validation/'];
Manuals_Dir = [pwd, '/../Manuals/'];
Scatterplot_Inputs_File = [pwd, '/Correlation_validation_scatterplot_inputs.csv'];
Scatterplot_Dir = [pwd, '/../../Manuals/SCRIPT_FIGURES/ScatterPlots/'];

% Statistics output options

Stats_Output = 'Validation';
Output_File = [pwd, '/Correlation_validation_scatterplot_output.csv'];
Statistics_Tex_Output = [pwd, '/../Manuals/SCRIPT_FIGURES/Scatterplots/validation_statistics.tex'];
Histogram_Tex_Output = [pwd, '/../Manuals/SCRIPT_FIGURES/Scatterplots/validation_histograms.tex'];

% Run dataplot and scatplot scripts
[saved_data,drange] = dataplot(Dataplot_Inputs_File, EXP_Dir, OUT_Dir, Manuals_Dir);
scatplot(saved_data, drange, ...
         'Manuals_Dir', Manuals_Dir, ...
         'Scatterplot_Inputs_File', Scatterplot_Inputs_File, ...
         'Stats_Output', Stats_Output, ...
         'Scatterplot_Dir', Scatterplot_Dir, ...
         'Output_File', Output_File, ...
         'Statistics_Tex_Output', Statistics_Tex_Output, ...
         'Histogram_Tex_Output', Histogram_Tex_Output)
 
display('validation scripts completed successfully!')
