import pytest
from login.Login import logining
from conftest import Sessions, open_yaml


# 评价图书
@pytest.mark.Space
@pytest.mark.run(order=2)
@pytest.mark.parametrize("data_yaml", open_yaml("Book.YAML"))
@pytest.mark.parametrize("logining", open_yaml("Book.YAML"), indirect=True)
def testSpace(logining, data_yaml):
    try:
        add_yaml = data_yaml["speac"]
        url = data_yaml["url"] + add_yaml["path"]
        res = Sessions().func(
            url=url,
            method=add_yaml["method"],
            data=add_yaml["data"],
            headers=data_yaml["headers"]
        )
        print(res.json())
        assert res.json()['code'] == '200'#网站只允许评价一次
    except Exception as e:
        print(f"数据异常{e}")
if __name__ == '__main__':

    pytest.main()