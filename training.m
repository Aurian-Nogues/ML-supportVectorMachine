%% Initialization
clear ; close all; clc

% ======== loading and visualizing data =====

fprintf('Loading and visualizing data... \n')
load('data.mat');
plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
input('Press enter')

% ====== training SVM with RBF kernel ======

fprintf('\nTraining SVM with RBF Kernel (this may take 1 to 2 minutes) ...\n');

% SVM Parameters
C = 1; sigma = 0.1;

% We set the tolerance and max_passes lower here so that the code will run
% faster. However, in practice, you will want to run the training to
% convergence.
model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 
visualizeBoundary(X, y, model);


