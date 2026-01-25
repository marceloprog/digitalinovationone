import os
import streamlit as st
from utils.Config as Config
from azure.storage.blob import BlobServiceClient

def upload_blob(file, file_name):
  try:
    blob_service_client = BlobServiceClient.from_connection_string(Config.AZURE_STORAGE_CONNECTIO_STRING)
    blob_client = blob_service_client.get_blob_client(container=Config.CONTAINER_NAME, blob=file_name)
    blob_client.upload_blob(file, overwrite=True)
    return blob_client.url
  except Exception as ex:
    st.error(f"Erro ao enviar o arquivo para o Azure Blob Storage: {ex}")
    return None
