docker build -t analysis_engine:1.0 .

docker run -it --gpus all -p 8888:8888 -p 8787:8787 -p 8786:8786 -p 8765:8765 --mount type=bind,source=$(pwd),target=/rapids/analysis-engine --name analysis_shell analysis_engine:1.0  /bin/bash