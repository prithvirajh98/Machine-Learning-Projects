import numpy as np
import pandas as pd

from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score

import streamlit as st

# Load Data
creditCard_df = pd.read_csv("Dataset/creditcard.csv")

# Segregate the Legitimate and Fraudulent Transactions
legitimate_Transactions = creditCard_df[creditCard_df.Class == 0]
Fraudulent_Transactions = creditCard_df[creditCard_df.Class == 1]

# Under Sampling the Legitimate Transactions to balance the Class Feature
legitSamples = legitimate_Transactions.sample(n=492)
creditCardData = pd.concat([legitSamples, Fraudulent_Transactions], axis = 0)

# Split the data into Training and Testing Set
X = creditCardData.drop(columns = 'Class', axis = 1)
y = creditCardData['Class']
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.2, stratify = y, random_state = 2)

# Building the Model
model = LogisticRegression()
model.fit(X_train, y_train)


# Evaluation of the Model
trainAcc = round((accuracy_score(model.predict(X_train), y_train) * 100), 2)
testAcc = round((accuracy_score(model.predict(X_test), y_test) * 100), 2)

# ------------------------------------------------------------------------------------------------

# Front End
# ---------

st.title("Credit Card Fraud Detection System")
input_df = st.text_input("Enter all the required feature values:")
input_df_split = input_df.split(',')


submit = st.button("Submit")

if submit:
    inputFeatures = np.asarray(input_df_split, dtype = np.float64)
    prediction = model.predict(inputFeatures.reshape(1,-1))

    if prediction[0] == 0:
        st.write("Legitimate Transaction")

    else:
        st.write("Fraudulent Transaction")