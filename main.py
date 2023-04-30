import boto3
import sys
import os

zip_file = sys.argv[1]
print(zip_file)
# read the contents of the zip file
with open('function.zip', 'rb') as f:
    zip_file_contents = f.read()

client = boto3.client('lambda')

response = client.update_function_code(
    FunctionName='test56',
    ZipFile=zip_file_contents,
    Publish=True
)

print(response)