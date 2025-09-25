## mHealth dbt Project

This repo demonstrates a simple dbt project on mobile health (mHealth) app data, and includes
- SQL models and semantic layer creation with dbt
- Seed data for endpoint (app activity) descriptions that were provided in a PDF with the original dataset
- Python notebook that generates random samples (to make the dataset smaller for playing with it in BigQuery)


### Key Features

- **dbt Models**  
  - `user_event_desc` – joins API request logs (`mHealth_req`) with human-readable activity descriptions.
  - `user_event_summary` – aggregates activity by user

- **Seeds**  
  - `endpoint_descriptions.csv` – maps HTTP methods and endpoints to human-readable descriptions for easier analysis.

- **Python Notebook**  
  - `mHealth_Sample_Jup.ipynb` – generates random sample datasets for testing or portfolio demonstrations.
 
### Tech Stack
- dbt: Data modeling and transformation
- BigQuery: Cloud data warehouse
- Python: Data sampling & reproducible dataset generation
- VS Code: Code editor
