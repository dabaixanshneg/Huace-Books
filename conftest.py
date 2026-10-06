import os

import yaml
import requests
import pymysql


# 获取 conftest.py 所在目录（项目根目录）
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
def open_yaml(path):
    if not os.path.isabs(path):
        path = os.path.join(BASE_DIR, path)
    try:
        with open(path, mode="r", encoding="utf-8") as f:
            return yaml.load(stream=f, Loader=yaml.FullLoader)
    except FileNotFoundError:
        print(f"文件不存在: {path}")
        return []

class Sessions:
    session=requests.session()
    def func(self,**kwargs):
        try:
            res = Sessions.session.request(**kwargs)
            return res
        except Exception as e:
            print(f"出现异常{e}")

    conn = pymysql.Connect(
        host='localhost',
        port=3306,
        user='root',
        password='123456',
        charset="utf8",
    )
    curn = conn.cursor()
