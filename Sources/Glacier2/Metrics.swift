//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.7
//
// <auto-generated>
//
// Generated from file `Metrics.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

/// Traits for Slice class `MXSessionMetrics`.
public struct MXSessionMetricsTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::IceMX::Metrics", "::IceMX::SessionMetrics"]
    public static let staticId = "::IceMX::SessionMetrics"
}

/// :nodoc:
public class MXSessionMetrics_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return MXSessionMetrics.self
    }
}

public extension Ice.ClassResolver {
    @objc static func IceMX_SessionMetrics() -> Ice.ValueTypeResolver {
        return MXSessionMetrics_TypeResolver()
    }
}

/// Provides information on Glacier2 sessions.
open class MXSessionMetrics: Ice.MXMetrics {
    /// Number of client requests forwared.
    public var forwardedClient: Swift.Int32 = 0
    /// Number of server requests forwared.
    public var forwardedServer: Swift.Int32 = 0
    /// The size of the routing table.
    public var routingTableSize: Swift.Int32 = 0
    /// Number of client requests queued.
    public var queuedClient: Swift.Int32 = 0
    /// Number of server requests queued.
    public var queuedServer: Swift.Int32 = 0
    /// Number of client requests overridden.
    public var overriddenClient: Swift.Int32 = 0
    /// Number of server requests overridden.
    public var overriddenServer: Swift.Int32 = 0

    public required init() {
        super.init()
    }

    public init(id: Swift.String, total: Swift.Int64, current: Swift.Int32, totalLifetime: Swift.Int64, failures: Swift.Int32, forwardedClient: Swift.Int32, forwardedServer: Swift.Int32, routingTableSize: Swift.Int32, queuedClient: Swift.Int32, queuedServer: Swift.Int32, overriddenClient: Swift.Int32, overriddenServer: Swift.Int32) {
        self.forwardedClient = forwardedClient
        self.forwardedServer = forwardedServer
        self.routingTableSize = routingTableSize
        self.queuedClient = queuedClient
        self.queuedServer = queuedServer
        self.overriddenClient = overriddenClient
        self.overriddenServer = overriddenServer
        super.init(id: id, total: total, current: current, totalLifetime: totalLifetime, failures: failures)
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return MXSessionMetricsTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return MXSessionMetricsTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.forwardedClient = try istr.read()
        self.forwardedServer = try istr.read()
        self.routingTableSize = try istr.read()
        self.queuedClient = try istr.read()
        self.queuedServer = try istr.read()
        self.overriddenClient = try istr.read()
        self.overriddenServer = try istr.read()
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: MXSessionMetricsTraits.staticId, compactId: -1, last: false)
        ostr.write(self.forwardedClient)
        ostr.write(self.forwardedServer)
        ostr.write(self.routingTableSize)
        ostr.write(self.queuedClient)
        ostr.write(self.queuedServer)
        ostr.write(self.overriddenClient)
        ostr.write(self.overriddenServer)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }
}
