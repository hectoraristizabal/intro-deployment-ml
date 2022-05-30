from pydantic import BaseModel

class PredictionRequest(BaseModel):
    #Feature
    opening_gross: float
    screens: float
    production_budget: float
    title_year: int
    spect_ratio: float
    duration: int
    cast_total_facebook_likes: float
    budget: float
    imdb_score: float

class PredictionResponse(BaseModel):
    #Prediccion
    worldwide_gross: float