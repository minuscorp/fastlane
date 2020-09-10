// SnapshotfileProtocol.swift
// Copyright (c) 2020 FastlaneTools

public protocol SnapshotfileProtocol: class {
    /// Path the workspace file
    var workspace: String? { get }

    /// Path the project file
    var project: String? { get }

    /// Pass additional arguments to xcodebuild for the test phase. Be sure to quote the setting names and values e.g. OTHER_LDFLAGS="-ObjC -lstdc++"
    var xcargs: String? { get }

    /// Use an extra XCCONFIG file to build your app
    var xcconfig: String? { get }

    /// A list of devices you want to take the screenshots from
    var devices: [String]? { get }

    /// A list of languages which should be used
    var languages: [String] { get }

    /// A list of launch arguments which should be used
    var launchArguments: [String] { get }

    /// The directory where to store the screenshots
    var outputDirectory: String { get }

    /// If the logs generated by the app (e.g. using NSLog, perror, etc.) in the Simulator should be written to the output_directory
    var outputSimulatorLogs: Bool { get }

    /// By default, the latest version should be used automatically. If you want to change it, do it here
    var iosVersion: String? { get }

    /// Don't open the HTML summary after running _snapshot_
    var skipOpenSummary: Bool { get }

    /// Do not check for most recent SnapshotHelper code
    var skipHelperVersionCheck: Bool { get }

    /// Enabling this option will automatically clear previously generated screenshots before running snapshot
    var clearPreviousScreenshots: Bool { get }

    /// Enabling this option will automatically uninstall the application before running it
    var reinstallApp: Bool { get }

    /// Enabling this option will automatically erase the simulator before running the application
    var eraseSimulator: Bool { get }

    /// Enabling this option will prevent displaying the simulator window
    var headless: Bool { get }

    /// Enabling this option wil automatically override the status bar to show 9:41 AM, full battery, and full reception
    var overrideStatusBar: Bool { get }

    /// Enabling this option will configure the Simulator's system language
    var localizeSimulator: Bool { get }

    /// Enabling this option will configure the Simulator to be in dark mode (false for light, true for dark)
    var darkMode: Bool? { get }

    /// The bundle identifier of the app to uninstall (only needed when enabling reinstall_app)
    var appIdentifier: String? { get }

    /// A list of photos that should be added to the simulator before running the application
    var addPhotos: [String]? { get }

    /// A list of videos that should be added to the simulator before running the application
    var addVideos: [String]? { get }

    /// A path to screenshots.html template
    var htmlTemplate: String? { get }

    /// The directory where to store the build log
    var buildlogPath: String { get }

    /// Should the project be cleaned before building it?
    var clean: Bool { get }

    /// Test without building, requires a derived data path
    var testWithoutBuilding: Bool? { get }

    /// The configuration to use when building the app. Defaults to 'Release'
    var configuration: String? { get }

    /// Additional xcpretty arguments
    var xcprettyArgs: String? { get }

    /// The SDK that should be used for building the application
    var sdk: String? { get }

    /// The scheme you want to use, this must be the scheme for the UI Tests
    var scheme: String? { get }

    /// The number of times a test can fail before snapshot should stop retrying
    var numberOfRetries: Int { get }

    /// Should snapshot stop immediately after the tests completely failed on one device?
    var stopAfterFirstError: Bool { get }

    /// The directory where build products and other derived data will go
    var derivedDataPath: String? { get }

    /// Should an Xcode result bundle be generated in the output directory
    var resultBundle: Bool { get }

    /// The name of the target you want to test (if you desire to override the Target Application from Xcode)
    var testTargetName: String? { get }

    /// Separate the log files per device and per language
    var namespaceLogFiles: String? { get }

    /// Take snapshots on multiple simulators concurrently. Note: This option is only applicable when running against Xcode 9
    var concurrentSimulators: Bool { get }

    /// Disable the simulator from showing the 'Slide to type' prompt
    var disableSlideToType: Bool { get }

    /// Sets a custom path for Swift Package Manager dependencies
    var clonedSourcePackagesPath: String? { get }

    /// The testplan associated with the scheme that should be used for testing
    var testplan: String? { get }

    /// Array of strings matching Test Bundle/Test Suite/Test Cases to run
    var onlyTesting: String? { get }

    /// Array of strings matching Test Bundle/Test Suite/Test Cases to skip
    var skipTesting: String? { get }

    /// Disable xcpretty formatting of build
    var disableXcpretty: Bool? { get }

    /// Suppress the output of xcodebuild to stdout. Output is still saved in buildlog_path
    var suppressXcodeOutput: Bool? { get }
}

public extension SnapshotfileProtocol {
    var workspace: String? { return nil }
    var project: String? { return nil }
    var xcargs: String? { return nil }
    var xcconfig: String? { return nil }
    var devices: [String]? { return nil }
    var languages: [String] { return ["en-US"] }
    var launchArguments: [String] { return [""] }
    var outputDirectory: String { return "screenshots" }
    var outputSimulatorLogs: Bool { return false }
    var iosVersion: String? { return nil }
    var skipOpenSummary: Bool { return false }
    var skipHelperVersionCheck: Bool { return false }
    var clearPreviousScreenshots: Bool { return false }
    var reinstallApp: Bool { return false }
    var eraseSimulator: Bool { return false }
    var headless: Bool { return true }
    var overrideStatusBar: Bool { return false }
    var localizeSimulator: Bool { return false }
    var darkMode: Bool? { return nil }
    var appIdentifier: String? { return nil }
    var addPhotos: [String]? { return nil }
    var addVideos: [String]? { return nil }
    var htmlTemplate: String? { return nil }
    var buildlogPath: String { return "~/Library/Logs/snapshot" }
    var clean: Bool { return false }
    var testWithoutBuilding: Bool? { return nil }
    var configuration: String? { return nil }
    var xcprettyArgs: String? { return nil }
    var sdk: String? { return nil }
    var scheme: String? { return nil }
    var numberOfRetries: Int { return 1 }
    var stopAfterFirstError: Bool { return false }
    var derivedDataPath: String? { return nil }
    var resultBundle: Bool { return false }
    var testTargetName: String? { return nil }
    var namespaceLogFiles: String? { return nil }
    var concurrentSimulators: Bool { return true }
    var disableSlideToType: Bool { return false }
    var clonedSourcePackagesPath: String? { return nil }
    var testplan: String? { return nil }
    var onlyTesting: String? { return nil }
    var skipTesting: String? { return nil }
    var disableXcpretty: Bool? { return nil }
    var suppressXcodeOutput: Bool? { return nil }
}

// Please don't remove the lines below
// They are used to detect outdated files
// FastlaneRunnerAPIVersion [0.9.33]
