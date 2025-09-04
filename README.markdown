# Titanic Challenge: End-to-End Machine Learning Pipeline

## Overview
This repository contains a Jupyter notebook implementing an end-to-end (E2E) machine learning pipeline for the [Kaggle Titanic Challenge](https://www.kaggle.com/c/titanic). The objective is to predict passenger survival based on features like age, sex, class, and more. The notebook covers data loading, basic exploration, model hyperparameter tuning using Support Vector Classifier (SVC), Logitic Regression, XGBoost, and generating predictions for submission.

## Repository Contents
- **test.ipynb**: The main Jupyter notebook that includes:
  - Data loading from CSV files.
  - Basic data description and statistics.
  - Hyperparameter tuning for SVC using RandomizedSearchCV.
  - Model training, prediction on test data, and creation of a submission CSV file.

*Note*: The dataset files (`train.csv` and `test.csv`) are expected in the `../DATASET/INITIAL_DATASET` directory relative to the notebook. Download them from [Kaggle](https://www.kaggle.com/c/titanic/data).

## Key Features
- **Data Handling**: Uses Pandas for loading and concatenating train/test data, with basic statistical summaries via `describe()`.
- **Preprocessing**: Imports tools like KNNImputer, LabelEncoder, and OneHotEncoder (though usage may be in extended versions or implied).
- **Model Tuning**: Performs randomized search over hyperparameters for SVC (C, gamma, kernel) using cross-validation.
- **Prediction**: Generates survival predictions and saves them in a CSV format ready for Kaggle submission.
- Achieved a sample Kaggle score of 79.42% using the tuned XGBoost model.

## Acknowledgments
- [Kaggle Titanic Challenge](https://www.kaggle.com/c/titanic) for the dataset.
- Scikit-learn for machine learning tools.
