plugins {
    id 'java'
    id "org.gradle.test-retry" version "1.5.3"
}

group = 'org.example'
version = '1.0-SNAPSHOT'

repositories {
    mavenCentral()
}

dependencies {
    testImplementation platform('org.junit:junit-bom:5.9.1')
    testImplementation 'org.junit.jupiter:junit-jupiter'
}

test {
    retry {
        maxRetries = 2
    }
    testLogging {
        events "passed", "skipped", "failed", "standardOut", "standardError"
        exceptionFormat "full"
    }
    useJUnitPlatform()
}
