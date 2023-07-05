pipeline{
	agent any
	environment {
		DOCKERHUB_PASS = 'Krishna@1303'
	}
	stages{
		stage("Building the Student Survey Image"){
			steps{
				script{
					checkout scm
					sh 'rm -rf *.war'
					sh 'jar -cvf Assignment2.war -C src/main/webapp .'
					sh 'echo ${BUILD_TIMESTAMP}'
					sh 'docker login -u krishna1303 -p ${DOCKERHUB_PASS}'
					def customImage = docker.build('krishna1303/survey:${BUILD_TIMESTAMP}')
				}
			}
		}
		stage("Pushing image to docker"){
			steps{
				script{
					sh 'docker push krishna1303/survey:${BUILD_TIMESTAMP}'
				}
			}
		}
		stage("Deploying to rancher"){
			steps{
				script{
					sh 'kubectl set image deployment/survey survey=krishna1303/survey:${BUILD_TIMESTAMP} -n 645clusternamespace'
				}
			}
		}
	}
}