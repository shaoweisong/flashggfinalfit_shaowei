
import os
import pickle
import json
import argparse
# Parse command line arguments
parser = argparse.ArgumentParser(description="Convert a pickle file to JSON format.")
parser.add_argument("--exts", type=str, required=True, help="Base name (without extension) of the input pickle file.")
args = parser.parse_args()
# Load the pickle file

weights = "./pkl/" + args.exts

with open(weights + ".pkl", "rb") as f:
    data = pickle.load(f)

try:
    records = data.to_dict(orient="records")

    def simplify_key(key):
        parts = key.split('_')
        return parts[-2] + '_' + parts[-1]

    json_data = {
        simplify_key(entry["cat"]): {k: v for k, v in entry.items() if k != "cat"}
        for entry in records
    }
except AttributeError:
    json_data = data  # fallback

with open(weights + ".json", "w") as f:
    json.dump(json_data, f, indent=2)
