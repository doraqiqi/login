username = ["jack","mery","may","sue""sandy"]
password = ["1","2","3","4","5"]
_username = input("请输入用户名:")

count = 0

f = open("black_name","r+")
d = f.read()

if _username not in username:
    print("该用户不存在")
    exit()

if _username in d:
    print("用户已经锁定")
    exit()
else:
    while count < 3:
        _password = input("请输入密码:")
        if username[username.index(_username)] == _username and password[username.index(_username)] == _password:
            print("欢迎你，{name}".format(name=_username))
            break
        else:
            count += 1

if count == 3:
    f.write(_username)
    f.close()
