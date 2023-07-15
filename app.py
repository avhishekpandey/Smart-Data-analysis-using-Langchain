import streamlit as st
from streamlit_chat import message

st.title("Smart Business assistant")

def get_text():
    input_text = st.text_input("You: ", "Hello, how are you?", key="input")
    return input_text


user_input = get_text()

