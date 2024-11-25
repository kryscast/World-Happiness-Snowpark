from utils import read_creds_from_json, create_snowpark_connection
from refine import refine_data
from curate import cleaned_data

#Main Execution
if __name__ == "__main__":
    read_creds_from_json()
    create_snowpark_connection()
    session = create_snowpark_connection()
    refine_data(session)
    cleaned_data(session)