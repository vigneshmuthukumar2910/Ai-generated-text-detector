import streamlit as st

from ai_detection import detect_ai_text

from grammar_correction import correct_grammar

from text_rephrasing import rephrase_text



st.title("AI-Generated Text Detection System")



user_input = st.text_area("Enter your text:")



option = st.radio("Choose an option:", ["AI Detection", "Grammar Correction", "Rephrasing"])



if st.button("Process"):

    if option == "AI Detection":

        result = detect_ai_text(user_input)

    elif option == "Grammar Correction":

        result = correct_grammar(user_input)

    else:

        result = rephrase_text(user_input)



    st.write("Result:", result)
