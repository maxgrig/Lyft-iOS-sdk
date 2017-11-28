import Foundation

@objc(DeveloperInfo)
public class DeveloperInfo : NSObject {
    
    @objc public init(token: String, clientId: String) {
        self.token = token
        self.clientId = clientId
    }
    
    @objc public let token: String
    @objc public let clientId: String
    
}

/// Lyft SDK configuration
@objc(LyftConfiguration)
public class LyftConfiguration : NSObject {
    
    /// Represents the current developer using the LyftSDK. Must be set before any API calls can be made
    @objc public static var developer: DeveloperInfo = DeveloperInfo(token: "", clientId: "")
    /// Customizable for specific partners. Do not modify unless explicitly instructed to do so.
    @objc public static var signUpIdentifier: String = "SDKSIGNUP"
    
}
