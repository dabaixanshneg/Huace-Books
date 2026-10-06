import pytest
from conftest import Sessions

@pytest.fixture(scope="module")
def logining(request):
    try:
        res_login = request.param
        login_yaml = res_login["login"]
        res = Sessions().func(url=res_login["url"] + login_yaml["path"],
                              method=login_yaml["method"],
                              data=login_yaml["data"],
                              headers=res_login["headers"]
                              )
        print("登录返回：", res.json())
        assert res.json()["code"] == '200'

        token = res.json()["data"]["token"]
        Sessions.session.cookies.set("Authorization", token)
        yield res.json()
        print("登录模块执行结束")
    except Exception as e:
        print(f"出现异常{e}")