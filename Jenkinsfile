#!groovy

parallel firefoxStep: {
    dockerNode(image: 'maven:3.3.3-jdk-8', sideContainers: ['selenium/standalone-firefox']) {
        checkout scm
        sh 'mvn -Dbrowser=firefox clean test'
        archive 'screenshot.png'
    }
}, chromeStep: {
    dockerNode(image: 'maven:3.3.3-jdk-8', sideContainers: ['selenium/standalone-chrome']) {
        checkout scm
        sh 'mvn -Dbrowser=chrome clean test'
        archive 'screenshot.png'
    }
}
