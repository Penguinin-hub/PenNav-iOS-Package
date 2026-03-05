## Overview
PenNav delivers top-tier navigation with detailed 2D/3D maps, seamless home-to-office routing, step-by-step directions, and tactile feedback. Whether integrated into existing applications or used as a standalone app, PenNav ensures a smooth setup process, allowing for easy customization to meet your specific needs.

**Turn-by-Turn Guidance**: Enjoy real-time, turn-by-turn indoor and outdoor navigation with voice commands and a precise blue-dot experience. PenNav excels in accuracy, floor-level detection, and offers multiple routing options.

**Multi-Floor Routing**: PenNav is built with indoor navigation at its core, offering robust floor-level detection and multi-floor navigation. It uniquely connects floors and buildings, providing impressive and flexible routing solutions.

**Indoor/Outdoor Transition**: PenNav supports campus-wide and home-to-office navigation by seamlessly transitioning between GPS-based outdoor navigation and AI-driven indoor detection.

**Seamless Integration**: PenNav is designed for effortless integration with a vector-based map engine, comprehensive 2D/3D maps, and a fully customizable UI/UX. Its flexible design allows you to tailor the appearance to reflect your brand, reducing integration time from weeks to hours.

## Requirements
- iOS 14.0 or later
- iPadOS 14.0 or later

## Install the SDK
Add the PenNav SDK to your project using **Swift Package Manager**:
1. Xcode, go to **File > Add Packages…**
2. Enter the repository URL: https://github.com/Penguinin-hub/PenNav-iOS-Package
3. In the version options, select **Exact Version** and enter: 5.0.0
4. Click **Add Package**
5. When prompted, add **PenNav** to your target. Optionally add **PenNavRoaming** to enable off-campus navigation.
> **Note:** Mapbox SDKs are bundled in v5.0.0+, so you do **not** need to install Mapbox separately.

## Configure Mapbox Token and Permissions
Add the following keys to your `Info.plist` file:

- `MBXAccessToken` (String) – Your Mapbox public token from [Mapbox tokens page](https://account.mapbox.com/access-tokens)  
- `Privacy - Location When In Use Usage Description` (String)  
- `Privacy - Bluetooth Always Usage Description` (String)  
- `Privacy - Motion Usage Description` (String)  

These keys provide the SDK with the permissions it needs to access location, Bluetooth, and motion data.

## Initialize the SDK
1. Import PenNav in your view controller:
```swift
import PenNavUI
```
2. Conform to the PenNavInitializationDelegate protocol and implement its methods:
```swift
extension YourViewController: PenNavInitializationDelegate {
    func onPenNavInitializationSuccess() {}
    func onPenNavInitializationError(errorType: PenNavUIError, errorDescription: String) {}
}
```
3. Assign your view controller as the initialization delegate:
```swift
PenNavUIManager.shared.initializationDelegate = self
```
4. Use the chainable API to provide your credentials, URLs, and service names, then call build():
```swift
PenNavUIManager.shared
            .setClientKey("Your Client Key")
            .setClientID("Your Client ID")
            .setBaseURL(dataURL: "Your Data URL", positionURL: "Your Position URL")
            .setServiceName(dataServiceName: "Your Data Service Name", positionServiceName: "Your Position Service Name")
            .build()
```
> Refer to the **“Configuration Methods”** section at the bottom for a full list and description of each method.

## Present the Map
After successfully initializing the PenNavUI SDK, you can present the map by calling the `PenNavUIManager.shared.present(root:view:)` method. This method requires a `UIViewController` and a `UIView` object to display the map.
```swift
extension YourViewController: PenNavInitializationDelegate {
    func onPenNavInitializationSuccess() {
        // Present the map after successful initialization
        PenNavUIManager.shared.present(root: self, view: view)
    }

    func onPenNavInitializationError(errorType: PenNavUIError, errorDescription: String) {
        // Handle initialization error
        print("Error: \(errorType) - \(errorDescription)")
    }
}
```

## Set a Custom Map Style
To customize the map's appearance using a custom style, follow these steps:
1. Obtain your custom map style URI from Mapbox. You can create or edit a map style in the Mapbox Studio and find the style URI in your Mapbox account.
2. Import `PenguinINRenderer`:
```swift
import PenguinINRenderer
```
3. Set the custom style URI by assigning it to the `PIRendererSettings.styleUri` property. Make sure to do this before presenting the map:
```swift
PIRendererSettings.styleUri = "Your_Custom_Style_URI"
```
   
## Select a Campus
You can select a specific campus to show on the map using the `setCampusID` method while initializing PenNav.
```swift
PenNavUIManager.shared
            .setClientKey("Your Client Key")
            .setClientID("Your Client ID")
            .setBaseURL(dataURL: "Your Data URL", positionURL: "Your Position URL")
            .setServiceName(dataServiceName: "Your Data Service Name", positionServiceName: "Your Position Service Name")
            .setCampusID("Campus Id")
            .build()
```

## Offline Positioning
You can control whether PenNav uses offline positioning by calling the `enableOfflinePositioning(_:)` method. This can be done while initializing the SDK:

```swift
PenNavUIManager.shared
    .setClientKey("Your Client Key")
    .setClientID("Your Client ID")
    .setBaseURL(dataURL: "Your Data URL", positionURL: "Your Position URL")
    .setServiceName(dataServiceName: "Your Data Service Name", positionServiceName: "Your Position Service Name")
    .enableOfflinePositioning(true)
    .build()
```

## Configure the Location Delegate
Take the following steps to get notified if the user location is off campus or if there are new location-based messages:
1. Import `CoreLocation`
```swift
import CoreLocation
``` 
2. Conform to the `PILocationDelegate` protocol and provide implementations for its methods:
   - `onLocationOffCampus(location: CLLocationCoordinate2D)` to inform the location delegate that the user's location is off campus.
   - `onLocationMessage(message: CampaignMessage)` to handle location-based messages triggered when a new message is available for the user's current location.
```swift
extension YourViewController: PILocationDelegate {
    func onLocationOffCampus(location: CLLocationCoordinate2D) {}
    func onLocationMessage(message: CampaignMessage) {}
}
```
3. Configure the `locationDelegate` of `PenNavUIManager`:
```swift
PenNavUIManager.shared.locationDelegate = self
```

## Configure the Events Delegate
Take the following steps to get notified when the map is dismissed or the campus is switched:
1. Conform to the `PIEventsDelegate` protocol and provide an implementation for its `onPenNavUIDismiss()` method that will be called when the map is dismissed.
```swift
extension YourViewController: PIEventsDelegate {
    func onPenNavUIDismiss() {
        // Handle map dismissal in your app
        // Add your custom logic here
    }
    func onSwitchCampus(campusId: Int) {
       // Handle campus switch in your app
    }
}
```
2. Configure the `eventsDelegate` of `PenNavUIManager` by setting it to your view controller that conforms to `PIEventsDelegate`.
```swift
PenNavUIManager.shared.eventsDelegate = self
```

## Configure the Share Location Callback
Take the following steps to get notified when the location is shared:
1. Enable/Disable share location callback by providing `true/false` while setting up the SDK using the code mentioned below. Setting `true` will trigger `onShareLocation(link: String?)` method of `PIEventsDelegate`
```swift
PenNavUIManager.shared
            .setClientKey("Your Client Key")
            .setClientID("Your Client ID")
            .setBaseURL(dataURL: "Your Data URL", positionURL: "Your Position URL")
            .setServiceName(dataServiceName: "Your Data Service Name", positionServiceName: "Your Position Service Name")
            .setUsername("Your Username")
            .setLanguage("en")
            .setSimulationModeEnabled(isEnable: true)
            .setShareLocationCallback(enabled: false)
            .build()
```
2. Conform to the `PIEventsDelegate` protocol and provide an implementation for its `onShareLocation(link: String?)` method that will be called when the share is option is tapped.
```swift
extension YourViewController: PIEventsDelegate {
    func onShareLocation(link: String?) {
        // Handle share location in your app
        // Add your custom logic here
    }
}
```
3. Configure the `eventsDelegate` of `PenNavUIManager` by setting it to your view controller that conforms to `PIEventsDelegate`.
```swift
PenNavUIManager.shared.eventsDelegate = self
```

## Off-Campus Navigation
To enable off-campus navigation using the Mapbox Navigation SDK and integrate both on-campus and off-campus navigation into your app, follow these steps:
1. Make sure that **PenNavRoaming** is added to your target during SDK installation.
2. Open your `Info.plist` file, add a key named `TextToSpeechKey`, set its type to `String`, and use the Text-to-Speech API key provided by our Delivery and Support Team as its value.

## Location-Based Messaging
Location-Based Messaging uses the user’s location and proximity to points of interest to trigger notifications or actions. By setting up a geofence—a virtual perimeter defined by latitude, longitude, and radius—PenNav can send targeted messages or alerts when a user enters or exits a specific area. For example, if a user nears a store with a geofence, they might receive a relevant promotional message. This feature relies on GPS, Wi-Fi, or cellular data to accurately track the user’s movements and deliver timely interactions.

Follow these steps to enable Location-Based Messaging in your app.
1. Add the following permission to your Info.plist file:
```
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>We use your location to provide relevant messages and offers based on your proximity to certain locations.</string>
```
2. Initialize PenNav's location services by calling `PIGeofenceManager.shared.initializeLocationManager()` in the App Delegate.

## Report Issues
You can allow users to report issues they encounter while using PenNav by following these steps:
1. Call the `setEnableReportIssue(enable: true)` method of `PenNavUIManager.shared` to enable issue reporting.
```swift
PenNavUIManager.shared.setEnableReportIssue(enable: true)
```
2. Conform to the `PIEventsDelegate` protocol and implement the `onReportIssue(_ issue: PenNavUI.IssueType)` method to handle issue reporting.
```swift
extension YourViewController: PIEventsDelegate {
    func onReportIssue(_ issue: PenNavUI.IssueType) {
        Instabug.show()
    }
}
```
3. Configure the `eventsDelegate` of `PenNavUIManager` by setting it to your view controller that conforms to `PIEventsDelegate`.
```swift
PenNavUIManager.shared.eventsDelegate = self
```

## Dismiss the SDK
When the PenNav SDK is no longer needed, you can dismiss and stop it and free up the memory resources it occupies using the `dismiss` method in `PenNavUIManager`.
```swift
PenNavUIManager.shared.dismiss()
```
Alternatively, you can enable our built-in back button using the `PenNavUIManager.shared.setBackButtonVisibility(visible: Bool)` method. By default, tapping this button will dismiss PenNav. To customize its behavior, set `PenNavUIManager.shared.eventsDelegate` to your view controller that conforms to the `PIEventsDelegate` protocol and implement its `onBackButtonPressed` method:
```swift
extension YourViewController: PIEventsDelegate {
    func onBackButtonPressed() {
        PenNavUIManager.shared.dismiss()
    }
}
```

## Navigate to Places
### Using Reference IDs
Call the `navigate(to referenceID: String, completion: @escaping(Bool, PenNavUIError?)` method to navigate to a place given its reference ID. Ensure this method is called after successful PenNav initialization within onPenNavInitializationSuccess():
```swift
extension YourViewController: PenNavInitializationDelegate {
    func onPenNavInitializationSuccess() {
        PenNavUIManager.shared.present(root: self, view: view)
        let referenceId = "exampleReferenceId"
        PenNavUIManager.shared.navigate(to: referenceId)
    }
    func onPenNavInitializationError(errorType: PenNavUIError, errorDescription: String) {}
}
```
### Using Deep Links
To enable navigation to map locations using deep links, follow these steps:
1. Create Custom URL Scheme: In Xcode, select your app target, go to the Info tab, and add a new scheme under URL Types.
2. Configure Deep Linking: Use the setDeepLinkComponents(scheme: String, host: String) method to set up deep linking for sharing locations on the map:
```swift
// Define your scheme and host
let myScheme = "yourScheme"
let myHost = "yourHost"

// Set deep link components
PenNavUIManager.shared.setDeepLinkComponents(scheme: myScheme, host: myHost)
```
3. Pass Deep Link: Use the setDeepLink(_ url: URL) method to provide deep link that displays locations on the map:
 ```swift
// Define your deep link
let myDeepLink = URL(string: "pennav://www.penguinin.com/MywyNCw4MDcuMCwxMjg2LjAsMzEuOTgyNjIwMjcxOTgyMTg1LDM1Ljg2NTYyMTc5Mjk4MTA4LGxvY2F0aW9u")

// Set deep link
PenNavUIManager.shared.setDeepLink(myDeepLink)
 ```
 
## Simulate User Location
- **Simulation Mode**: Designed for testing when not physically in the building of the deployed environment, you can set it by calling the `PenNavUIManager.shared.setSimulationModeEnabled(isEnable: Bool)` method
- **Username**: All users typically have a username associated with them. When the simulation mode is set to `true`, the simulation name will be derived from this value. Given deployment will have either this information pre-populated or configured. The demo app showcases a login workflow to obtain a username, but note that it is not a required component. As long as a username is available, it is sufficient. The process in which this is obtained is deferred to implementing development teams
```swift
PenNavUIManager.shared
            .setClientKey("Your Client Key")
            .setClientID("Your Client ID")
            .setBaseURL(dataURL: "Your Data URL", positionURL: "Your Position URL")
            .setServiceName(dataServiceName: "Your Data Service Name", positionServiceName: "Your Position Service Name")
            .setUsername("Your Username")
            .setLanguage("en")
            .setSimulationModeEnabled(isEnable: true)
            .build()
```

## PIGeofenceManager

### Overview
`PIGeofenceManager` is a Swift-based implementation for managing geofencing in the host application. It provides functionalities such as geofence configuration, starting, updating, stopping geofencing, handling authorization, and monitoring geofence regions using `CLLocationManager`.

### Features
- Configurable geofence setup
- Start, stop, and update geofencing
- Permission handling for location access
- Error handling and notifications for geofencing events
- Region monitoring with `CLCircularRegion`

### Usage
Ensure that the following dependencies are imported in your project before for using `PIGeofenceManager`:
```swift
import PenNavUI
```

### 1. Set Configuration before starting PIGeofenceManager
Configures the geofence SDK with the provided settings. Provide BaseURL, ServiceName, ClientID, ClientKey and CampusID (optional).

```swift
let config = GeofenceConfiguration(
    baseURL: "https://example.com", 
    serviceName: "PenNavService", 
    clientId: "your-client-id", 
    clientKey: "your-client-key", 
    campusId: 12345)
PIGeofenceManager.shared.setGeofenceSDKConfigurations(config)
```

### 2. Starts the Geofencing process.
This will start the geofence by requesting location permissions and after that it loads all of the geofences and start monitoring them. If the geofence monitoring is started successfully then this `geofenceStarted()` delegate function is called. If some error happens `geofenceFailedToStart(_ error: String?)` is called.

```swift
PIGeofenceManager.shared.startGeofencing(delegate: self)
```

### 3. Stop Geofencing Process
Stops geofencing and removes all monitored regions.
```swift
PIGeofenceManager.shared.stopGeofencing()
```
If monitoring is stopped properly then this method is called `geofenceStopped()`

### 4. Update Geofencing Process
Update geofences will fetch the updates and enable monitoring on the regions
```swift
PIGeofenceManager.shared.updateGeofencing()
```
This function needs to be called after geofence is started. If geofence is not started it will throw an error message. So you can only use this function if you need to update geofences after starting the Geofence SDK.

## Error Messages
The `GeofenceError` enum defines various error cases:

- **`permissionDenied`**: Location permission denied.
- **`errorInConfiguration`**: Invalid base URL or missing configuration.
- **`authenticationFailed`**: Authentication error.
- **`indoorDeloymentOnly`**: Geofencing is only supported indoors.
- **`geofenceConfigurationsMissing`**: Missing geofence configurations.
- **`geofenceSDKNotStarted`**: The geofence SDK is not started.
- **`geofenceSDKAlreadyStarted`**: The geofence SDK is already running.
- **`sdkError(String)`**: General SDK error with a custom message.

### Example Error Handling:
```swift
func geofenceFailedToStart(_ error: String?) {
    print("Geofence failed to start: \(error ?? "Unknown error")")
}
```

## Delegates
Implement `PIGeofenceManagerDelegate` to handle geofencing events:
```swift
extension YourViewController: PIGeofenceManagerDelegate {
    func geofenceStarted() {
        print("Geofence started successfully")
    }
    
    func geofenceFailedToStart(_ error: String?) {
        print("Geofence failed to start: \(error ?? "Unknown error")")
    }
    
    func geofenceStopped() {
        print("Geofence stopped successfully")
    }
    
    func geofenceUpdated() {
        print("Geofence updated successfully")
    }
}
```

## Location Permission Handling
The manager automatically requests permission when required. It follows the below flow:
- Requests `When In Use` permission
- If granted, requests `Always` permission. This permission is required if you need geofence notifications in background mode as well. If this permission is not granted it will not work in background.

## Configuration Methods
The following chainable methods can be used before calling `.build()` to configure the PenNav SDK.

| Method | Type | Description | Optional |
|--------|------|-------------|----------|
| `.setClientKey(_:)` | String | Your PenNav client key provided by Customer Success | Required |
| `.setClientID(_:)` | String | Your PenNav client ID | Required |
| `.setBaseURL(dataURL:positionURL:)` | String, String | URLs for data and position services | Required |
| `.setServiceName(dataServiceName:positionServiceName:)` | String, String | Names of the data and position services | Required |
| `.setUsername(_:)` | String | Optional username associated with the user, used for simulation and reporting | Optional |
| `.setLanguage(_:)` | String | Language code for SDK localization (e.g., "en") | Optional |
| `.setSimulationModeEnabled(isEnable:)` | Bool | Enables or disables simulation mode for testing locations | Optional |
| `.setShareLocationCallback(enabled:)` | Bool | Enables or disables the share location callback | Optional |
| `.enableOfflinePositioning(_:)` | Bool | Enables or disables offline positioning support | Optional |
| `.setCampusID(_:)` | String | Sets the campus to display on the map | Optional |
| `.setDeepLinkComponents(scheme:host:)` | String, String | Configures custom URL scheme and host for deep links | Optional |
| `.setDeepLink(_:)` | URL | Provides a deep link to a location on the map | Optional |
| `.setBackButtonVisibility(visible:)` | Bool | Shows or hides the SDK’s built-in back button | Optional |
| `.setEnableReportIssue(enable:)` | Bool | Enables issue reporting in the app | Optional |

> **Note:** All chainable methods can be called in any order **before** `.build()`.

## Migration to v5.0.0
When upgrading to v5.0.0 or later from older versions, follow these steps:
1.    Remove old frameworks and dependencies
   - Delete the manually added PenNav frameworks from your project.
   - Remove Mapbox SDKs from your Podfile, then run pod install to clean up.
2.    Add the new PenNav package
   - Install the `PenNav-iOS-Package` package using Swift Package Manager https://github.com/Penguinin-hub/PenNav-iOS-Package
3.    Mapbox SDKs are bundled
   - Unlike older versions, you no longer need to install Mapbox SDKs separately. PenNav packages already includes them.

## Deprecated Methods
- ~~setOutdoorEnable(isEnable:)~~
- ~~setStepDetectionEnable(isEnable:)~~
- ~~setTransitionEnable(isEnable:)~~

## Initializing Errors
|Error|Description|
|-|-| 
|Missing Base URL|Base URL is not provided. Please specify a valid base URL.|
|Missing Data Service Name|Missing data service name. Please provide the required data service name.|
|Missing Position Service Name|Missing position service name. Please provide the required position service name.|
|Missing Client ID|No client ID provided. Please ensure that a valid client ID is provided.|
|Missing Client Name|No client name provided. Please provide a valid client name.|
|Invalid Client Key|Invalid client key. The provided client key is not valid. Please check and provide a valid client key.|
|Missing Root Controller|No root controller provided. Please ensure that a valid root controller is provided.|
|Missing View Container|No view container provided. Please provide a valid view container.|
|Unauthorized|Unauthorized access. You are not authorized to perform the requested action.|
|Loading Data Error|An error occurred while loading the data. Please try again later.|
|OS Not Supported|Operating system not supported. The current operating system is not supported by this application.|
|No Internet Connection|No internet connectivity. Please check your internet connection and try again.|
|Sensors Initialization Error|An error occurred while initializing the sensors. Please check the sensor settings and try again.|
|Permissions Not Granted|Required permissions not granted. Please grant all necessary permissions to continue.|
|Location Permission Not Granted|Location permission not granted. Please grant the location permission to continue.|
|Bluetooth Permission Not Granted|Bluetooth permission not granted. Please grant Bluetooth permission to continue.|
|Location Services Turned Off|Location services are turned off. Please ensure that location services are turned on to continue.|
|Bluetooth Turned Off|Bluetooth is turned off. Please ensure that Bluetooth is turned on to continue.|

## User Guide for the Demo App
Before installing and running the Demo App, open the `PenNavConfigurations.plist` file located at the root of the project and fill it out with values provided to you by our Customer Success Team.
|Key|Value|
|-|-| 
|ClientKey|Provided by the Customer Success Team|
|ClientId|Provided by the Customer Success Team|
|DataUrl|Provided by the Customer Success Team|
|PositionUrl|Provided by the Customer Success Team|
|DataServiceName|Provided by the Customer Success Team|
|PositionServiceName|Provided by the Customer Success Team|

## Included Third-Party Dependencies
PenNav SDK includes the following third-party dependencies.

| Library | Version |
|--------|---------|
| Mapbox Maps | 11.18.0 |
| Mapbox Navigation | 3.18.0 |
