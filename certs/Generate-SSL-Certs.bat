@echo off
set OPENSSL_CONF="C:\Program Files\OpenSSL-Win64\bin\openssl.cfg"
set OPENSSL_BIN="C:\Program Files\OpenSSL-Win64\bin\openssl.exe"
set C="TH"
set ST="Bangkok"
set L="Bangkok"
set O="Localhost-Certificates"
set CN="localhost.local"
set VALIDITY=365

%OPENSSL_BIN% req -new -nodes -newkey rsa:2048 -keyout localhost.key -out localhost.crt -subj "/C=%C%/ST=%ST%/L=%L%/O=%O%/CN=%CN%" -config %OPENSSL_CONF%
%OPENSSL_BIN% x509 -req -sha256 -days %VALIDITY% -in localhost.crt -CA RootCA.pem -CAkey RootCA.key -CAcreateserial -extfile domains.ext -out localhost.crt -config %OPENSSL_CONF%