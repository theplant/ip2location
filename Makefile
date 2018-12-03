SHELL = /bin/bash

DB11.BIN:
	@wget "http://www.ip2location.com/download/?token=${DOWNLOAD_TOKEN}&file=DB11LITEBINIPV6" -O DB11.ZIP
	@unzip DB11.ZIP -d DB11
	@mv DB11/IP2LOCATION-LITE-DB11.IPV6.BIN DB11.BIN
	@rm -rf DB11.ZIP DB11

build: DB11.BIN
	@docker build -t ip2location-nginx .
