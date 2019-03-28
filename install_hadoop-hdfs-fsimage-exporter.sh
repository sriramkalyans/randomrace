echo "Getting Maven"

wget https://archive.apache.org/dist/maven/maven-3/3.0.4/binaries/apache-maven-3.0.5-bin.tar.gz

sudo tar xzvf apache-maven-3.0.5-bin.tar.gz

sudo chown -R hadoopuser:hadoopuser apache-maven-3.0.5

export PATH=$PATH::/home/hadoopuser/apache-maven-3.0.5/bin


sudo yum install java-devel


git clone https://github.com/marcelmay/hadoop-hdfs-fsimage-exporter


cd hadoop-hdfs-fsimage-exporter

mvn clean install

./run_example.sh &


%

dd to prometheus

- job_name: 'fsimage'
    scrape_interval: 180m # Depends on how often the name node writes a fsimage file.
    scrape_timeout:  200s # Depends on size
    static_configs:
      - targets: ['<hostname>:<port>']
        labels:
          ...
