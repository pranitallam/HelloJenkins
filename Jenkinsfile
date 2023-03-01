pipeline {
    agent any
    tools {
        maven "Maven"
	jdk "jdk"
       
    }
    stages {
        stage('Initialize'){
            steps{
                echo "PATH = ${M2_HOME}/bin:${PATH}"
                echo "M2_HOME = /opt/maven"
            }
        }
        stage('Build') {
            steps {
//                 dir('HelloJenkins'){
                sh 'mvn -B -DskipTests clean package'
//                 }
            }
       }
        stage('Test') {
            steps {
                
                sh 'mvn test'
                
            }
       }
        stage('Install') {
            steps {
                
                sh 'mvn -B -DskipTests clean install'
                
            }
       }
//         stage('Sonar Scan'){
// 		    steps{
// 			    dir('HelloJenkins'){
// 			    withSonarQubeEnv('sonarqube'){
// 		        sh 'mvn sonar:sonar'
// 		 }
// 	    }
// 	 }
// 	 }
    }
}
