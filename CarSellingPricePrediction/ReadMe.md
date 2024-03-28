	1. CAR PRICE PREDICTION

	→ Overview of the Project: 
		○ This is a Flask Web Application that estimates the price of the car. 
	→ Motivation:  This system was developed primarily in order to predict the price of the car depending on the various features of the car.. Using this system it also helps an individual to get a rough estimation of the price of the car while buying or selling - It can be new car or a used car, or whether they are buying through a dealer or directly from the show room.Creating a predictive model for car selling prices addresses a significant need for both sellers and buyers in the automotive market by providing an informed estimation of a car's value. This model can enhance transparency, streamline negotiations, and support better decision-making by leveraging historical data, market trends, and vehicle attributes. By doing so, it aims to foster trust and efficiency in the car trading process, making it a valuable tool for individuals and businesses alike.
	→ Dataset: 
		○ Link: https://www.kaggle.com/datasets/nehalbirla/vehicle-dataset-from-cardekho
		○ Download the dataset from the above link provided.
		○ The dataset contains 301 records (rows) and 9 features (columns)
	→ Environment Creation:
		○ Create an environment with a specific version of Python
			§ conda create -n myenv python={python_version}
			§ conda create -n carPricePrediction python-3.9
			§ When conda asks you to proceed, type y:
	→ Environment Activation:
		○ Activate the newly created environment
			§ conda activate {enviroment_Name}
			§ conda activate carPricePrediction
		○ Once the environment is  activated then launch the Jupyter notebook from the working path.
			§ cmd to launch the jupyter notebook, type: jupyter notebook
	→ Categorical Features
		○ The Dataset contains some Categorical Values They are as follows:
			○ Fuel_Type: ['Petrol' 'Diesel' 'CNG']
			○ Seller_Type: ['Dealer' 'Individual']
			○ Transmission: ['Manual' 'Automatic']
			○ Owner: [0 1 3]
		○ Selling_Price is the dependent feature (Target Variable) .
		○ There are no missing / null values in the dataset
	→ Features of the Dataset:
		○ The Car_Name does not play a vital role in predicting the selling price of a car. It'd not be good to judge the price of the car based on its name.
	→ Correlation:
		○ It is a technique that is used to represent categorical variables as numerical values in a Machine Learning model.
		○ It improves the performance of the model by providing more information about the categorical features.
			w Selling_Price and Present_Price are highly positively co-related with each other. 
			w Fuel_Type_Patrol and Fuel_Type_Diesel are highly negatively co-related with each other.

				![image](https://github.com/prithvirajh98/Machine-Learning-Projects/assets/127682525/eda985c2-cc41-41d6-a111-84bf19d58860)

	
	→ Feature Importance:
		○ The ExtraTreesRegressor helps in finding out the important features to build a Machine Learning Model
		![image](https://github.com/prithvirajh98/Machine-Learning-Projects/assets/127682525/e07bc8ee-2313-4d48-9757-988d14200e3e)

	→ Building the Machine Learning Model
		○ Hyperparameter Tunning Using RandomizedSearchCV 
			w RandomizedSearchCV helps to find the best parameters out of this considering how many estimators, max_features and depth should be there.
			w In RandomizedSearchCV all the parameters should be initialised with different values. Once all the values are selected, from there RandomizedSearchCV will automatically select the best features.

Y_test is the real value. The difference betwen the Y_test and predictions (Predicted Values) should be minimal.
	
					![image](https://github.com/prithvirajh98/Machine-Learning-Projects/assets/127682525/7d769aa7-b9d8-409b-9d69-42facc792583)

					![image](https://github.com/prithvirajh98/Machine-Learning-Projects/assets/127682525/48338ca6-f163-44ca-bb92-f5f96695c762)

					
					
→ Create the Requirements.txt file:
	→ Cmd: pip freeze > requirements.txt

Note: To Install the sklearn package
	Cmd: pip install -U scikit-learn
![image](https://github.com/prithvirajh98/Machine-Learning-Projects/assets/127682525/b3693bda-5253-4262-8b9f-f3bb88fba9ab)
