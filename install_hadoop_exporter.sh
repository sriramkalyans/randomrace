
wget https://dl.google.com/go/go1.12.1.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf go1.12.1.linux-amd64.tar.gz


export PATH=$PATH:/usr/local/go/bin


git clone https://github.com/wyukawa/hadoop_exporter


cd hadoop_exporter


go get github.com/prometheus/client_golang/prometheus
go get github.com/prometheus/log
go build namenode_exporter.go
go build resourcemanager_exporter.go
