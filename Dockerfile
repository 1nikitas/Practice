FROM python:bullseye
COPY requirements.txt ./
COPY Untitled.ipynb ./
RUN pip install -r requirements.txt
RUN jupiter-nbconvert --execute Untitled.ipynb --to html
