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
- Generated from CMake:
  - XCode project `cpplib` (C++)
  - XCode config file `scapix_cpplib.xcconfig`

### XCode Integration

Steps to integrate with your own project:

- Add generated XCode (C++) project to your XCode workspace.
- Add generated `scapix_XXX.xcconfig` file to your XCode (ObjC/Swift) project.

For example, these steps were used to integrate generated `cpplib` project to `scapix_example` workspace and `objcapp` project:

- Add Files to `scapix_example`: add `cpplib/build/cpplib.xcodeproj`
- Add Files to `objcapp`: add `cpplib/build/scapix_cpplib.xcconfig`
- `objcapp` Project/Info/Configurations/Based on Configuration File: select `scapix_cpplib`
