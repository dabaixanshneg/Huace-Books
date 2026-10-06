import pytest
from login.Login import logining
from conftest import Sessions, open_yaml


# 添加到书架
@pytest.mark.AddBook
@pytest.mark.run(order=1)
@pytest.mark.parametrize("data_yaml", open_yaml("Book.YAML"))
@pytest.mark.parametrize("logining", open_yaml("Book.YAML"), indirect=True)
def testAddBook(logining, data_yaml):
    try:
        add_yaml = data_yaml["add"]
        url = data_yaml["url"] + add_yaml["path"]

        res = Sessions().func(
            url=url,
            method=add_yaml["method"],
            data=add_yaml["data"],
            headers=data_yaml["headers"]
        )
        print(res.json())
        assert res.json()["code"] == '200'
    except Exception as e:
        print(f"出现异常{e}")