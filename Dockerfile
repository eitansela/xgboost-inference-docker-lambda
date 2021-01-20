FROM public.ecr.aws/lambda/python:3.7

RUN pip install joblib xgboost==1.1.1 pandas sklearn

COPY ./model/bc-xgboost-model   ./
COPY ./code/app.py   ./

CMD ["app.handler"]
