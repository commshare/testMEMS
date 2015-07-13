
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile
	$(MAKE) -f objs/Makefile manpage

install:
	$(MAKE) -f objs/Makefile install

upgrade:
	/home/zhangbin/zbhome/SRS/http/ngxvod/ngxout/nginx -t

	kill -USR2 `cat /home/zhangbin/zbhome/SRS/http/ngxvod/ngxout/nginx.pid`
	sleep 1
	test -f /home/zhangbin/zbhome/SRS/http/ngxvod/ngxout/nginx.pid.oldbin

	kill -QUIT `cat /home/zhangbin/zbhome/SRS/http/ngxvod/ngxout/nginx.pid.oldbin`
