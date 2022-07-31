# github-workflow-sample2

## About source code
we have sample java code generated from https://start.spring.io/ at repository.
In pom.xml, I have added finalName for genartion of jar

## About GitHub Workflow
We have workflow defined in repository at .github/workflows/maven.yml
Condition to trgger workflow is commit to main branch.
Below are 3 jobs get triggered when there is new commit in git hub repository.
- build
- release-project
- build-container
All of those get executed in sequece as defined above as there are dependecy in beween them.
![jobs](https://prnt.sc/Cfjm4_mkbCvW)
## build:
This is first job get executed after commit to main branch. This job have task to checkout, install java 11, run maven build and upload artificats.

## release-project:
This job is depended on build job as we mentioned it with needs as "build". This job bump the version of release and use it while creating relase. In bump we have added bump for "patch" default will be "minor". release version example like as 0.0.0(major.minor.patch). To set major as bump update DEFAULT_BUMP env variable with major.

## build-container:
This job is dependent on release-prject job as we mentioned it with needs as "releas-project". This job is responsible for creating and docker image and upload image to docker repository. docker credential are defined in github repository secreats action tokens.


**Author: Ravikumar Wagh**
