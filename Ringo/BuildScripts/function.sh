#!/bin/sh

source BuildScripts/config.sh

function build() {
	for target in ${BUILD_TARGETS[@]}; do
	  for config in ${BUILD_CONFIGURATIONS[@]}; do
			xcodebuild -project $PROJECTNAME.xcodeproj -target $target -configuration $config clean build
	  done
   done
}