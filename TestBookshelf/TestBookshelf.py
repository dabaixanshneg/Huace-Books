import pytest
from login.Login import logining
from conftest import Sessions, open_yaml


# 查看图书
@pytest.mark.Bookshelf
@pytest.mark.run(order=3)
@pytest.mark.parametrize("data_yaml", open_yaml("Book.YAML"))
@pytest.mark.parametrize("logining", open_yaml("Book.YAML"), indirect=True)
def test_bookshelf(logining, data_yaml):
    read_yaml = data_yaml["bookshelf"]
    try:
        url = data_yaml["url"] + read_yaml["path"]
        res = Sessions().func(
            url=url,
            method=read_yaml["method"],
            data=read_yaml["data"],
            headers=data_yaml["headers"]
        )
        print(res.json())
        assert res.json()['code'] == '200'
        try:
            Sessions.curn.execute("TRUNCATE TABLE mydb.mybookshelf")
            Sessions.conn.commit()
        except:
            print("数据库清除错误")
        for index in res.json()["data"]["list"]:
            book_id = index['bookId']
            preContentId = index['preContentId']
            catName = index["catName"]  # 类型
            catId = index["catId"]  # 类型id
            lastIndexName = index["lastIndexName"]  # 最新章节
            bookName = index["bookName"]  # 书本名称
            lastIndexUpdateTime = index["lastIndexUpdateTime"]  # 更新时间
            print(f"书本id:{book_id},书本编号：{preContentId},"
                  f"类型:{catName},类型id:{catId},书本名:{bookName}",
                  f"书本名称：{lastIndexName},最新更新时间：{lastIndexUpdateTime}"
                  )
            try:

                sql = f"INSERT INTO mydb.mybookshelf (book_id, pre_content_id, cat_name, cat_id, book_name, last_index_name, last_index_update_time) VALUES ({book_id}, '{preContentId}', '{catName}', {catId}, '{bookName}', '{lastIndexName}', '{lastIndexUpdateTime}')"
                Sessions.curn.execute(sql)
                Sessions.conn.commit()
            except Exception as e:
                print(f"数据库加入错误{e}")
    except Exception as e:
        print(f"出现异常{e}")
