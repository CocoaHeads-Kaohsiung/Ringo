#!/bin/sh

source config.sh

function build() {
	for target in ${BUILD_TARGETS[@]}; do
	  for s in ${BUILDSDKS[@]}; do
		  xcodebuild -project $PROJECTNAME.xcodeproj -sdk $s -target $target -configuration $BUILD_TYPE clean build
	  done
   done
}