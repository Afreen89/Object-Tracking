# Object-Tracking
Implement a Kalman filter with a software application that accepts as input the noisy coordinates and produces estimated coordinates as output. For this, using the constant velocity motion model F with constant time intervals 0.1 and Cartesian observation model H. The covariance matrices Q and R of the respective noises are: 
![n](https://user-images.githubusercontent.com/101992840/216723271-35e9b102-af34-4409-93bd-121548383bab.png)

### Task1 
Plot the estimated trajectory of coordinates [x*, y*], together with real [x,y] and the noisy coordinates [a,b] for comparison.

### Task 2 
Assess the quality of the tracking  by calculating the mean and standard deviation of the absolute error and the Root Mean Squared error (i.e. compare both noisy and estimated coordinates to the ground truth).

### Dataset
The dataset can be found [here](https://drive.google.com/drive/folders/1humHQEC1-cwTOniid7GIqwLlAExSqryU)
