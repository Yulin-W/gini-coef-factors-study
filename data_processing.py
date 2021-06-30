# Processes raw data csv files into a single processed csv file, removing all incomplete entries

# Import required modules
import numpy as np
import pandas as pd
import os

# Define constants
dir_path = os.path.dirname(os.path.realpath(__file__))
raw_data_path = os.path.join(dir_path, "raw_data")

# Import csv files
filename_list = os.listdir(raw_data_path)
file_list = [os.path.join(raw_data_path, filename) for filename in filename_list]
df_dict = {}
for file, filename in zip(file_list, filename_list):
  df_dict[filename] = pd.read_csv(
    file,
    skiprows=4, # Skip the preamble 4 lines of the World Bank Indicator csv files
  )

print(df_dict)