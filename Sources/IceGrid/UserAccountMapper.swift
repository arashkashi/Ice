//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.7
//
// <auto-generated>
//
// Generated from file `UserAccountMapper.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice
import PromiseKit

/// :nodoc:
public class UserAccountNotFoundException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return UserAccountNotFoundException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func IceGrid_UserAccountNotFoundException() -> Ice.UserExceptionTypeResolver {
        return UserAccountNotFoundException_TypeResolver()
    }
}

/// This exception is raised if a user account for a given session
/// identifier can't be found.
open class UserAccountNotFoundException: Ice.UserException {
    public required init() {}

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::IceGrid::UserAccountNotFoundException"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: UserAccountNotFoundException.ice_staticId(), compactId: -1, last: true)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }
}

/// Traits for Slice interface `UserAccountMapper`.
public struct UserAccountMapperTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::IceGrid::UserAccountMapper"]
    public static let staticId = "::IceGrid::UserAccountMapper"
}

/// A user account mapper object is used by IceGrid nodes to map
/// session identifiers to user accounts.
///
/// UserAccountMapperPrx Methods:
///
///  - getUserAccount: Get the name of the user account for the given user.
///
///  - getUserAccountAsync: Get the name of the user account for the given user.
public protocol UserAccountMapperPrx: Ice.ObjectPrx {}

private final class UserAccountMapperPrxI: Ice.ObjectPrxI, UserAccountMapperPrx {
    public override class func ice_staticId() -> Swift.String {
        return UserAccountMapperTraits.staticId
    }
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `UserAccountMapperPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `UserAccountMapperPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: UserAccountMapperPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> UserAccountMapperPrx? {
    return try UserAccountMapperPrxI.checkedCast(prx: prx, facet: facet, context: context) as UserAccountMapperPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `UserAccountMapperPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `UserAccountMapperPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: UserAccountMapperPrx.Protocol, facet: Swift.String? = nil) -> UserAccountMapperPrx {
    return UserAccountMapperPrxI.uncheckedCast(prx: prx, facet: facet) as UserAccountMapperPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `UserAccountMapperPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: UserAccountMapperPrx.Protocol) -> Swift.String {
    return UserAccountMapperTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `UserAccountMapperPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `UserAccountMapperPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `UserAccountMapperPrx?` - The extracted proxy
    func read(_ type: UserAccountMapperPrx.Protocol) throws -> UserAccountMapperPrx? {
        return try read() as UserAccountMapperPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `UserAccountMapperPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `UserAccountMapperPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: UserAccountMapperPrx.Protocol) throws -> UserAccountMapperPrx? {
        return try read(tag: tag) as UserAccountMapperPrxI?
    }
}

/// A user account mapper object is used by IceGrid nodes to map
/// session identifiers to user accounts.
///
/// UserAccountMapperPrx Methods:
///
///  - getUserAccount: Get the name of the user account for the given user.
///
///  - getUserAccountAsync: Get the name of the user account for the given user.
public extension UserAccountMapperPrx {
    /// Get the name of the user account for the given user. This is
    /// used by IceGrid nodes to figure out the user account to use
    /// to run servers.
    ///
    /// - parameter _: `Swift.String` The value of the server descriptor's user
    /// attribute. If this attribute is not defined, and the server's
    /// activation mode is session, the default value of
    /// user is the session identifier.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.String` - The user account name.
    ///
    /// - throws:
    ///
    ///   - UserAccountNotFoundException - Raised if no user account
    ///     is found for the given user.
    func getUserAccount(_ iceP_user: Swift.String, context: Ice.Context? = nil) throws -> Swift.String {
        return try _impl._invoke(operation: "getUserAccount",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_user)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.String = try istr.read()
                                     return iceP_returnValue
                                 },
                                 userException:{ ex in
                                     do  {
                                         throw ex
                                     } catch let error as UserAccountNotFoundException {
                                         throw error
                                     } catch is Ice.UserException {}
                                 },
                                 context: context)
    }

    /// Get the name of the user account for the given user. This is
    /// used by IceGrid nodes to figure out the user account to use
    /// to run servers.
    ///
    /// - parameter _: `Swift.String` The value of the server descriptor's user
    /// attribute. If this attribute is not defined, and the server's
    /// activation mode is session, the default value of
    /// user is the session identifier.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch the sent callback.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch the sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<Swift.String>` - The result of the operation
    func getUserAccountAsync(_ iceP_user: Swift.String, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.String> {
        return _impl._invokeAsync(operation: "getUserAccount",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_user)
                                  },
                                  read: { istr in
                                      let iceP_returnValue: Swift.String = try istr.read()
                                      return iceP_returnValue
                                  },
                                  userException:{ ex in
                                      do  {
                                          throw ex
                                      } catch let error as UserAccountNotFoundException {
                                          throw error
                                      } catch is Ice.UserException {}
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}


/// Dispatcher for `UserAccountMapper` servants.
public struct UserAccountMapperDisp: Ice.Disp {
    public let servant: UserAccountMapper
    private static let defaultObject = Ice.ObjectI<UserAccountMapperTraits>()

    public init(_ servant: UserAccountMapper) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "getUserAccount":
            return try servant._iceD_getUserAccount(incoming: request, current: current)
        case "ice_id":
            return try (servant as? Object ?? UserAccountMapperDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? UserAccountMapperDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? UserAccountMapperDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? UserAccountMapperDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

/// A user account mapper object is used by IceGrid nodes to map
/// session identifiers to user accounts.
public protocol UserAccountMapper {
    /// Get the name of the user account for the given user. This is
    /// used by IceGrid nodes to figure out the user account to use
    /// to run servers.
    ///
    /// - parameter user: `Swift.String` The value of the server descriptor's user
    /// attribute. If this attribute is not defined, and the server's
    /// activation mode is session, the default value of
    /// user is the session identifier.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.String` - The user account name.
    ///
    /// - throws:
    ///
    ///   - UserAccountNotFoundException - Raised if no user account
    ///     is found for the given user.
    func getUserAccount(user: Swift.String, current: Ice.Current) throws -> Swift.String
}

/// A user account mapper object is used by IceGrid nodes to map
/// session identifiers to user accounts.
///
/// UserAccountMapper Methods:
///
///  - getUserAccount: Get the name of the user account for the given user.
public extension UserAccountMapper {
    func _iceD_getUserAccount(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_user: Swift.String = try inS.read { istr in
            let iceP_user: Swift.String = try istr.read()
            return iceP_user
        }

        let iceP_returnValue = try self.getUserAccount(user: iceP_user, current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_returnValue)
        }
    }
}
