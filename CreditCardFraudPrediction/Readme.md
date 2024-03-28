CREDIT CARD FRAUD DETECTION USING MACHING LEARNING

Overview of the Project:
•	This is a Web based application which detects a particular transaction is legitimate or Fraudulent. One of the biggest concerns for financial institutions and concerns alike is credit card fraud. 
•	Financial losses and harm to financial institution reputation can result from fraudulent transactions. The detection of fraudulent transactions has made extensive use of Machine Learning techniques. 
•	In this project the transaction will be classified into either fraudulent or legitimate based on their feature using Logistic Regression.

Motivation:
•	Credit Card fraud is very serious problem, and it is very important to detect such fraudulent transactions at the earliest is more essential.

About the Dataset:
•	Link: https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud
•	The dataset contains the transactions of European Credit Card holders in the month of September 2013.
•	The dataset presents the transactions that occurred in 2 days where there are 492 frauds out of 284,807 transactions.
•	The dataset is highly imbalanced, the positive class (Frauds) accounts to 0.172% of all transactions.
•	Features V1, V2, … V28 are the principal components obtained with PCA, the only features which have not been transformed with PCA are 'Time' and 'Amount'.
•	Feature 'Time' contains the seconds elapsed between each transaction and the first transaction in the dataset.
•	The feature 'Amount' is the transaction Amount, this feature can be used for example-dependant cost-sensitive learning. 
•	Feature 'Class' is the response variable, and it takes value 1 in case of fraud and 0 otherwise.

Workflow:

Credit Card Data --------> Exploratory Data Analysis (EDA) --------> Data Pre-processing (Data Cleaning/Data Wrangling)  --------> Train and Test Split --------> Logistic Regression Model --------> Evaluation

Exploratory Data Analysis:
•	None of the records were missing.
•	The data contains 284807 records and 31 features.
•	Observations:
1.	The 'Class' Feature is classified into 2 categories:
1.	➡️ 0: Legitimate Transactions
2.	➡️ 1: Fraudulent Transactions
2.	The dataset it highly imbalanced.
3.	The dataset contains 99.83% of legitimate transactions whereas only 0.17% is fraudulent transactions.
4.	More than 90% of the transactions have been classified as Legitimate due which the data is highly imbalanced.
5.	This dataset cannot be fed to the Predictive model. If fed, then if any fraudulent transaction comes as input, the model will classify it as legitimate.
Data Pre-processing:
•	All the transactions which are legitimate will be stored in variable called "legitimate_Transactions".
•	All the transactions which are fraudulent will be stored in variable called *"Fradulent_Transactions".


•	Once the Class is separated
	➡️ the Legitimate transactions have 284315 records and 3 Features.
	➡️ the Fraudulent transactions have 492 records and 31 Features.
•	From the observations it can be seen that there is a huge difference the average of Amount feature of both classes of Transaction.
o	Avg Amount of Legitimate Transactions: 88.291022
o	Avg Amount of Fraudulent Transactions: 122.211321
•	Under-Sampling 
o	Since the data contains more than 90% of the legit transactions, it is necessary to build a sample dataset that contains similar distribution of Legit transactions and Fraudulent Transactions.
o	Extract 492 random legit transactions and append it to the fraudulent transactions.
o	This makes the distribution uniform and the makes it a better dataset for the predictive model.
•	After normalising the data:
o	Number of Legitimate Transactions: 492
o	Number of Fraudulent Transactions: 492

BUILDING THE MODEL:
•	Segregate the data into dependent and independent features.
•	Split the data into Train and Testing sets.
•	The Machine Learning Model: The Logistics regression

•	 
o	It is a machine learning model that comes under Supervised Learning Technique.
o	It is used to predict the categorical dependent variables using a given set of independent variables
Model Evaluation:
•	Accuracy Score --> Training Data: 94.54%.
•	Accuracy Score --> Testing Data: 92.39%. 

Output:

<img width="1512" alt="Output" src="https://github.com/prithvirajh98/Machine-Learning-Projects/assets/127682525/1283492e-e856-4716-bfe8-dd6c5659bba2">

