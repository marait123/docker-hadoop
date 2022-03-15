# runnning hadoop with docker

## run docker containers

- make sure you're inside the main folder containing `docker-compose.yml`
- run the command `docker-compose up -d`

## runining the lab

- in powershell or wsl run the command `docker exec -it namenode bash`
- now you're inside the name node and you can access the lab2 folder
- steps to run the code (on every time you change your input or code )
  - run `source /lab2/setup_lab.sh`
  - run `source /lab2/run_lab.sh`
- output will be in console

## running the requirement

- in powershell or wsl run the command `docker exec -it namenode bash`
- now you're inside the name node and you can access the lab2 folder
- steps to run (on every time you change your input or code )
  - run `source /lab2/setup_req.sh`
  - run `source /lab2/run_req.sh`
- output will be in console

- to get the output file `hadoop dfs -cat /req/Output/* > /lab2/out.txt`

# note

- the **in.csv** place it in this folder before running the requirements ( it is advised to run on a sample in.csv before running on the big 500MB in.csv file as this takes some time
