#!/bin/sh

source BuildScripts/config.sh

function build() {
	for target in ${BUILD_TARGETS[@]}; do
	  #for s in ${BUILDSDKS[@]}; do
		xcodebuild -project $PROJECTNAME.xcodeproj -target $target -configuration Debug clean build
	  #done
   done
}