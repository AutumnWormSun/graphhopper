# do the following
# git clone https://code.google.com/p/mapsforge/
# cd mapsforge; and fix http://code.google.com/p/mapsforge/issues/detail?id=461
# mvn clean install
# cp mapsforge-map/target/mapsforge-map-0.3.1-SNAPSHOT-jar-with-dependencies.jar graphhopper/android/libs/mapsforge-0.3.1-SNAPSHOT.jar

# if we would do it via normal maven dependency management we run into strange things which I was not able to fix
# http://stackoverflow.com/a/8315600/194609

MAPSFORGE=`ls ./libs/mapsforge*.jar`
echo "installing file: $MAPSFORGE"
$MAVEN_HOME/bin/mvn install:install-file -DgroupId=org.mapsforge \
 -DartifactId=mapsforge-gh \
 -Dversion=0.3.1-SNAPSHOT \
 -Dpackaging=jar \
 -Dfile=$MAPSFORGE