import Foundation

final class CallStation {
    var userArray = [User]()
    var callsArray = [Call]()
}

extension CallStation: Station {
    func users() -> [User] {
        userArray
    }
    
    func add(user: User) {
        if(!userArray.contains(user)) {
            userArray.append(user)
        }
    }
    
    func remove(user: User) {
        if(userArray.contains(user)) {
            userArray.remove(at: userArray.firstIndex(of: user)!)
        }
    }
    
    func execute(action: CallAction) -> CallID? {
        nil
    }
    
    func calls() -> [Call] {
        []
    }
    
    func calls(user: User) -> [Call] {
        []
    }
    
    func call(id: CallID) -> Call? {
        nil
    }
    
    func currentCall(user: User) -> Call? {
        nil
    }
}
