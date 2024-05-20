export GOPROXY=direct

sudo apt-get update
sudo apt-get install gcc-mingw-w64-i686 gcc-multilib
#CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=7 go build -ldflags "-s -w -extldflags -static -extldflags -static" ./cmd/npc/npc.go
#tar -czvf linux_arm_v7_client.tar.gz npc conf/npc.conf conf/multi_account.conf
echo 1111111111111111111111111
CGO_ENABLED=1 GOOS=linux GOARCH=arm64 go build -ldflags "-s -w -extldflags -static -extldflags -static" ./cmd/npc/npc.go
echo 22222222222222222222
tar -czvf linux_arm64_client.tar.gz npc conf/npc.conf conf/multi_account.conf
