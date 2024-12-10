import streamlit as st

st.title('streamlit Tutorial')
st.header('This is a header')
st.subheader('This is a subheader')
st.text('Hello World!')
import pandas as pd

# st.write()はMarkdown表記対応
st.write('# headline1')
# 以下のように明示的に書くことも可能
st.markdown('# headline2')

st.write(['apple', 'orange', 'banana'])

# ダミーデータの作成
df = pd.DataFrame({
    'name': ['Alice', 'Bob'],
    'age': [25, 30],
    'gender': ['female', 'male']
})

# DataFrameを表示
st.write(df)
# st.dataframe()でも表示可能
st.dataframe(df)

uploaded_file = st.file_uploader("Choose a file")
if uploaded_file is not None:
    st.write(uploaded_file)

if st.button('Say hello'):
    st.write('Hello World!')

if st.checkbox('Show/Hide'):
    st.write('Some text')

option = st.radio(
    'Which number do you like best?', 
    ['1', '2', '3']
)

input_num = st.number_input('Input a number', value=0)

result = input_num ** 2
st.write('Result: ', result)