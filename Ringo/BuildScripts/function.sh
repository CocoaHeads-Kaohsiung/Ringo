#!/bin/sh

source BuildScripts/config.sh

function build() {
	for cfg in ${BUILD_CFGS[@]}; do
	  for target in ${BUILD_TARGETS[@]}; do
			xcodebuild -project $PROJECTNAME.xcodeproj -target $target -configuration $cfg clean build
	  done
   done
}