# example_ecs_service
## Introduction

[ECS-CI-CD-PIPELINE](https://github.com/cshift/ecs-ci-cd-pipeline) 테라폼 프로비저닝을 위한 샘플 컨테이너 입니다.

## Usage:

1. [buildspec.yml](https://github.com/cshift/example_ecs_service/blob/main/buildspec.yml) : AWS CodeBuild 작업 파일

   * Option #1 (CodePipeline 자체 배포) 

   ![image](https://user-images.githubusercontent.com/77256060/147802682-5fb428a3-1bb5-4c74-bb6c-50f5a4417d5f.png)

   * Option #2 (CodeDeploy 배포)

   ![image](https://user-images.githubusercontent.com/77256060/147802860-5d709ed4-89ed-4364-9cb6-4c56e907eae3.png)

2. 모든 Artifacts 파일 AWS Account ID 환경 변수 수정
