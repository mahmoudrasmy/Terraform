sudo sysctl -w vm.max_map_count=262144 
sudo docker pull sebp/elk 
sudo docker run -p 5601:5601 -p 9200:9200 -p 5044:5044 -it -d --name elk sebp/elk