#!/bin/bash

git pull
mvn clean install
java -jar -Dserver.port=80 target/voter-1.0-SNAPSHOT.jar

