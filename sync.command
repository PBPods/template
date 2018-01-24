#!/bin/sh

SyncPod () {
  rsync -avh --delete-after  "$HOME/.cocoapods/repos/master/Specs/$1" "$HOME/.cocoapods/repos/PBWechatOpenSDK/Specs"
}

SyncPod "TODO"
