from fastapi import FastAPI

import joblib
import numpy as np

app = FastAPI()

model = joblib.load("model/model.pkl")


@app.get("/")
def home():
    return {"message": "MLOps API Running"}


@app.post("/predict")
def predict(features: list):

    prediction = model.predict(
        np.array(features).reshape(1, -1)
    )

    return {
        "prediction": int(prediction[0])
    }
