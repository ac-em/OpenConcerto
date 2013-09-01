#!/bin/sh

mvn install:install-file -Dfile=soap-ovh-1.24.jar -DgroupId=com.ovh -DartifactId=soap-ovh -Dversion=1.24 -Dpackaging=jar -DgeneratePom=true
