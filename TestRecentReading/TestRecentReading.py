import pytest
from login.Login import logining
from conftest import Sessions, open_yaml


# 最近阅读
@pytest.mark.RecentReading
@pytest.mark.run(order=4)
@pytest.mark.parametrize("readYaml", open_yaml("Book.YAML"))
@pytest.mark.parametrize("logining", open_yaml("Book.YAML"), indirect=True)
def testRecentReading(logining, readYaml):
    try:
        recentRead = readYaml["recentReading"]
        url = readYaml["url"] + recentRead["path"]
        recent = Sessions().func(url=url, method=recentRead["method"],
                                 data=recentRead["data"], headers=readYaml["headers"]
                                 )
        print(recent.json())
        assert recent.json()['code'] == '200'
        try:
            Sessions.curn.execute("TRUNCATE TABLE mydb.bookshelf")
            Sessions.conn.commit()
        except:
            print("数据库清除异常")
        for index in recent.json()['data']['list']:
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

                sql = f"INSERT INTO mydb.bookshelf (book_id, pre_content_id, cat_name, cat_id, book_name, last_index_name, last_index_update_time) VALUES ({book_id}, '{preContentId}', '{catName}', {catId}, '{bookName}', '{lastIndexName}', '{lastIndexUpdateTime}')"
                Sessions.curn.execute(sql)
                Sessions.conn.commit()
            except Exception as e:
                print(f"数据库加入错误{e}")
    except Exception as e:
        print(f"出现异常{e}")
