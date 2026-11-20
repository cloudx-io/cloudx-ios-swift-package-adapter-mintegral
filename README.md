# CloudX Mintegral adapter Swift package

This repository distributes the Mintegral adapter for the CloudX iOS SDK.

## Requirements

- iOS 13 or later
- Xcode 15 or later
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-mintegral.git
```

Select an exact package version from the compatibility table. Add the
`CloudXMintegralAdapter` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the adapter registration code.

| Package version | CloudX adapter | Mintegral Ad SDK |
| --- | --- | --- |
| `8010701.0.0` | `8.1.7.1` | `8.1.7` |
| `8010700.0.0` | `8.1.7.0` | `8.1.7` |
| `8010601.0.0` | `8.1.6.1` | `8.1.6` |
| `8010600.0.0` | `8.1.6.0` | `8.1.6` |
| `8010500.0.0` | `8.1.5.0` | `8.1.5` |

> **Do not use `8010600.0.0` and `8010500.0.0`.** Their framework version fails App Store validation at upload. Package versions never change, so pin `8010601.0.0` or later.

The package installs CloudX Core and Mintegral Ad SDK as dependencies. Import
`CloudXCore` in the application. The adapter registers when the application
loads.

## Versioning

CloudX adapter versions have four components. Swift package versions use three.
The package tag joins the adapter components into the major number. For example,
adapter `8.1.5.0` uses package version `8010500.0.0`.

## License

The CloudX adapter uses the Business Source License 1.1. See [LICENSE](LICENSE).
