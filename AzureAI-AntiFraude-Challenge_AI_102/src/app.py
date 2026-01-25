Import streamlit as st
from services.blob_service import upload_blob
from services.credit_card_service import analize_credit_card

def configure_interface():
  st.title("Upload de arquivo DIO- Desafio 1 – Azure_AI102 – Fake Docs ")
  uploaded_file = st.file_uploader("Escolha um arquivo", type=["png","jpg","jpeg"])
  
  if uploaded_file is not None:
    filename = uploaded_file.name
    blob_url = upload_blob(uploaded_file, filename)
    if blob_url:
      st.write(f"Arquivo {filename} enviado com sucesso para Azure Blob Storate") 
      credit_card_info = analize_credit_card(blob_url)
      show_image_and_validation(blob_url, credit_card_info)
    else:
      st.write(f"Erro ao enviar arquivo {filename} para o Azure Blob Storage")

if _name_ == "_main_":
  configure_interface()
