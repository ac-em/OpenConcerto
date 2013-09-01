#!/bin/sh

cd lib
mvn install:install-file -Dfile=gdata-core-1.0.jar -DgroupId=google -DartifactId=gdata-core -Dversion=1.0 -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -Dfile=gdata-base-1.0.jar -DgroupId=google -DartifactId=gdata-base -Dversion=1.0 -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -Dfile=gdata-media-1.0.jar -DgroupId=google -DartifactId=gdata-media -Dversion=1.0 -Dpackaging=jar -DgeneratePom=true

LIS_ARTIFACT="gdata-analytics|2.1|jar gdata-appsforyourdomain|1.0|jar gdata-blogger|2.0|jar gdata-books|1.0|jar gdata-calendar|2.0|jar gdata-client|1.0|jar gdata-codesearch|2.0|jar gdata-contacts|3.0|jar gdata-docs|3.0|jar gdata-finance|2.0|jar gdata-gtt|2.0|jar gdata-health|2.0|jar gdata-maps|2.0|jar gdata-photos|2.0|jar gdata-projecthosting|2.1|jar gdata-sidewiki|2.0|jar gdata-sites|2.0|jar gdata-spreadsheet|3.0|jar gdata-webmastertools|2.0|jar gdata-youtube|2.0|jar"


for artifact in $LIS_ARTIFACT; do \
	ARTIFACT_ID=`echo "$artifact" | cut -d\| -f 1` 
	ARTIFACT_VERSION=`echo "$artifact" | cut -d\| -f 2` 

	echo " installation de $ARTIFACT_ID-$ARTIFACT_VERSION.jar et $ARTIFACT_ID-meta-$ARTIFACT_VERSION.jar"
	mvn install:install-file -Dfile=$ARTIFACT_ID-$ARTIFACT_VERSION.jar -DgroupId=google -DartifactId=$ARTIFACT_ID -Dversion=$ARTIFACT_VERSION -Dpackaging=jar -DgeneratePom=true
	mvn install:install-file -Dfile=$ARTIFACT_ID-meta-$ARTIFACT_VERSION.jar -DgroupId=google -DartifactId=$ARTIFACT_ID-meta -Dversion=$ARTIFACT_VERSION -Dpackaging=jar -DgeneratePom=true

done

cd ..

