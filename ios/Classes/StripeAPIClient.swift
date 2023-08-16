import Foundation
import StripeTerminalx

class StripeAPIClient: ConnectionTokenProvider {
    let methodChannel: FlutterMethodChannel
    
    init(methodChannel: FlutterMethodChannel){
        self.methodChannel = methodChannel
    }
    
    func fetchConnectionToken(_ completion: @escaping ConnectionTokenCompletionBlock) {
        methodChannel.invokeMethod("requestConnectionToken", arguments: nil) { secret in
            do{
                 let token = try secret as? String
                completion(token, nil)
            } catch {
                completion(nil, StripeTerminalxError.unableToFetchToken)
            }
        }
    }
}

enum StripeTerminalxError: Error {
    // Throw when an invalid password is entered
    case unableToFetchToken

    // Throw in all other cases
    case unexpected(code: Int)
}
