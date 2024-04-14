#!/bin/bash

# Accept flavor as an argument
flavor=$1

# IF flavor is not provided, set default to prod
if [ -z "$flavor" ]; then
  echo "Flavor not provided, defaulting to prod"
  flavor="prod"
fi

# If flavor is not one of [staging, dev, prod], exit
if [ "$flavor" != "staging" ] && [ "$flavor" != "dev" ] && [ "$flavor" != "prod" ]; then
  echo "Invalid flavor"
  echo "Valid flavors: [staging, dev, prod]"
  exit 1
fi

package_base="dev.aryak.varanasi"
out_base="lib/core/firebase"

if [ "$flavor" == "prod" ]; then 
    out="$out_base/firebase_options.dart"
else 
    out="$out_base/firebase_options_$flavor.dart"
fi

if [ "$flavor" == "prod" ]; then 
    package_name="$package_base"
else
    package_name="$package_base.$flavor"
fi

flutterfire config \
  --platforms=android,ios \
  --out=$out \
  --ios-bundle-id=$package_name \
  --ios-out=ios/config/$flavor/GoogleService-Info.plist \
  --android-package-name=$package_name \
  --android-out=android/app/src/$flavor/google-services.json