FROM public.ecr.aws/lambda/python:3.7

RUN pip install joblib xgboost==1.1.1 pandas sklearn

COPY ./train-code/bc_xgboost_train.py ./
RUN python bc_xgboost_train.py

COPY ./app/app.py   ./

CMD ["app.handler"]
