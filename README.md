# car-price-prediction

## Project Description

This is a project developed using [this Kaggle dataset](https://www.kaggle.com/hellbuoy/car-price-prediction) that is based on [UCI Automobile Data Set](https://archive.ics.uci.edu/ml/datasets/Automobile).

The dataset contains attribute information, from the number of doors to the engine type, of 205 cars from the 90s.

The goal of the project is to develop a machine learning model capable of predicting the prices of cars based on the attributes collected. In addition, it will be necessary to measure how well the chosen variables explain the price of the car.

## Repository Description

- `workspace/car-price-prediction.ipynb`: Jupyter notebook containing exploratory data analysis and the construction of the machine learning model.
- `workspace/data.csv`: Dataset used in the project.
- `Dockerfile, jupyter_lab_config.py and requirements.txt`: Files to allow run the project anywhere.

## Results
*** These results are based on the final model only ***

- Mean Squared Error: 2638877.198
- Root Mean Squared Error: 1624.462
- Mean Absolute Error: 1242.202
- How well the independents variables explains the target variable (R²): 94,48%
- How well the independents variables, that really affect the model, explains the target variable (Adjusted R²): 93,78%

## Running the jupyter notebook
*** Docker installed is required (Version used 20.10.5)***

#### 1 - Clone or download de project

#### 2 - In the directory where the Dockerfile file is

##### 2.1 - First build the docker image
```sh
docker build -t data-science-project .
```

##### 2.2 - Then run the container
```sh
docker run --rm -p 8888:8888 -v ${PWD}:/project --name car-price-prediction data-science-project
# Running in background
docker run --rm -d -p 8888:8888 -v ${PWD}:/project --name car-price-prediction feliperpv/data-science-project
```

#### 3 - Accessing jupyter
- Copy and paste this URL into your favorite browser
```
http://localhost:8888
```


