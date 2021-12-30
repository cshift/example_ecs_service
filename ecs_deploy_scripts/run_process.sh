#!/bin/bash

REGION="ap-northeast-2"
ACCOUNT_ID="${ACCOUNTID}"
ECR_REPOSITORY="${ACCOUNT_ID}.dkr.ecr.ap-northeast-2.amazonaws.com"
ECR_DOCKER_IMAGE="${ECR_REPOSITORY}/test"
ECR_DOCKER_TAG="2"

aws ecr get-login-password --region ${REGION} \
  | docker login --username AWS --password-stdin ${ECR_REPOSITORY};

export IMAGE=${ECR_DOCKER_IMAGE};
export TAG=${ECR_DOCKER_TAG};
docker run -d -p 80:80 --name demo-container ${ECR_DOCKER_IMAGE}:${ECR_DOCKER_TAG}
# docker-compose -f /home/ec2-user/docker-compose.yml up -d;

