kcptun docker image build on alpine linux.

kcptun: https://github.com/xtaci/kcptun

for amd64

docker run -it --rm hitian/kcptun kcptun-server -h

docker run -it --rm hitian/kcptun kcptun-client -h


for arm32 raspberry pi or tinker board

docker run -it --rm hitian/kcptun-arm32 kcptun-server -h

docker run -it --rm hitian/kcptun-arm32 kcptun-client -h
