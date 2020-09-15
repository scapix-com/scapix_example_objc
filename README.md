# [Scapix](https://github.com/scapix-com/scapix) example for ObjC/Swift

### Install

```bash
$ git clone https://github.com/scapix-com/scapix_example_objc
$ cd scapix_example_objc/cpplib
$ ./cmake_generate.sh
```

Open in XCode: `scapix_example.xcworkspace`

### Description

- Manually created:
  - XCode workspace `scapix_example`
  - XCode project `objcapp` (ObjC/Swift)
- Automatically generated from CMake:
  - XCode project `cpplib` (C++)

### Steps to integrate generated `cpplib` project to `scapix_example` workspace and `objcapp` project

- Add Files to `scapix_example`: add `cpplib/build/cpplib.xcodeproj`
- Add Files to `objcapp`: add `cpplib/build/scapix.xcconfig`
- Project/Info/Configurations/Based on Configuration File: select `scapix` for each configuration
- Project/Build Settings/Header Search Paths: add `$(inherited)`, `../cpplib/generated/bridge/objc`
- Targets/Build Phases/Link Binary with Libraries: add `libcpplib.a`, `libscapix.a`, `libc++.tbd`
