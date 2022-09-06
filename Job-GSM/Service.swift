import Moya
import Foundation

enum API {
    case signIn(param: SigninResponse)
}


extension API:TargetType{
    var baseURL: URL {
        return URL(string: "http://10.53.68.236:8081/")!
    }
    
    var path: String {
        switch self{
        case .signIn:
            return "signin"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .signIn:
            return .post
        }
    }
    
    var task: Task {
        switch self {
        case .signIn(let param):
            return .requestJSONEncodable(param)
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    
}
