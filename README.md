# Demo of Flask API and Docker using NBDev
> Summary description here.


NBDev is a powerfull tools to make maintain clean code from Jupyter Notebooks.

Flask and Flair code based on https://shekhargulati.com/2019/01/04/building-a-sentiment-analysis-python-microservice-with-flair-and-flask/

## Install

NBDev allow you to easily publish on PiPy to be able to install your lib with pip :

`pip install one_ai_to_rule_them_all`

## How to use

Fill me in please! Don't forget code examples:

```python
res = get_sentiment("I love you !")
print(res)
assert res['result'] == 'POSITIVE'
```

    2020-08-24 15:19:44,939 loading file /home/ben/.flair/models/sentiment-en-mix-distillbert.pt
    {'result': 'POSITIVE', 'polarity': 0.9958167672157288}


`curl --request POST \
  --url http://localhost:5000/api/v1/analyzeSentiment \
  --header 'content-type: application/json' \
  --data '{
    "message":"I could watch The Marriage over and over again. At 90 minutes, it'\''s just so delightfully heartbreaking."
}'`

```python
#slow
!curl --request POST --url http://localhost:5000/api/v1/analyzeSentiment  --header 'content-type: application/json' --data '{"message":"I could watch The Marriage over and over again. At 90 minutes, it s just so delightfully heartbreaking."}'
```

    {"polarity":0.9971720576286316,"result":"POSITIVE"}

