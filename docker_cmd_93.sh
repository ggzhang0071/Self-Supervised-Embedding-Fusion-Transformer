#docker_cmd_93.sh
img="nvcr.io/nvidia/pytorch:21.03-py3"

#img="padim:0.1"


docker run --gpus all  --privileged=true   --workdir /git --name "ssl_ser"  -e DISPLAY --ipc=host -d --rm  -p 6606:4452  \
-v /raid/git/Self-Supervised-Embedding-Fusion-Transformer:/git/Self-Supervised-Embedding-Fusion-Transformer \
 -v /raid/git/datasets:/git/datasets \
 $img sleep infinity

docker exec -it ssl_ser /bin/bash

pip list  |grep "pytorch"