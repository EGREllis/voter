#!/bin/bash

git pull
mvn clean install
java -jar target/voter-1.0-SNAPSHOT.jar

