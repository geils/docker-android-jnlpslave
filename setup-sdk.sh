#!/bin/sh

mkdir -p /opt/sdk
wget --progress=bar:force https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip -O /tmp/sdk-tools.zip && \
    unzip -d /opt/sdk /tmp/sdk-tools.zip && \
    cd /opt/sdk && \
    mkdir ~/.android && \
    touch ~/.android/repositories.cfg && \
    yes | /opt/sdk/tools/bin/sdkmanager --licenses && /opt/sdk/tools/bin/sdkmanager "platforms;android-27" "build-tools;27.0.3" platform-tools ndk-bundle
