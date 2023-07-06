pipeline{
	agent any
	environment {
		DOCKERHUB_PASS = 'Kubernetes@1100'
	}
	stages{
		stage("Building the Student Survey Image"){
			steps{
				script{
					checkout scm
					sh 'rm -rf *.war'
					sh 'jar -cvf Assignment2.war -C src/main/webapp .'
					sh 'echo ${BUILD_TIMESTAMP}'
					sh 'docker login -u kubernetes1100 -p ${DOCKERHUB_PASS}'
					sh 'docker build -t kubernetes1100/student-survey .'
				}
			}
		}
		stage("Pushing image to docker"){
			steps{
				script{
					sh 'docker push kubernetes1100/student-survey'
				}
			}
		}
		stage("Deploying to rancher"){
			steps{
				script{
					// sh 'kubectl set image deployment/survey container-0=krishna1303/survey -n 645clusternamespace'
					sh 'kubectl rollout restart deploy kubernetes-deployment -n kubernetes-namespace'
				}
			}
		}
	}
}