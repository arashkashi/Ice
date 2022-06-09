//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.7
//
// <auto-generated>
//
// Generated from file `ValueFactory.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation

/// A factory for values. Value factories are used in several
/// places, such as when Ice receives a class instance and
/// when Freeze restores a persistent value. Value factories
/// must be implemented by the application writer and registered
/// with the communicator.
///
/// Create a new value for a given value type. The type is the
/// absolute Slice type id, i.e., the id relative to the
/// unnamed top-level Slice module. For example, the absolute
/// Slice type id for an interface Bar in the module
/// Foo is "::Foo::Bar".
///
/// Note that the leading "::" is required.
///
/// - parameter _: `Swift.String` The value type.
///
/// - returns: `Value?` - The value created for the given type, or nil if the
/// factory is unable to create the value.
public typealias ValueFactory = (Swift.String) -> Value?

/// A value factory manager maintains a collection of value factories.
/// An application can supply a custom implementation during communicator
/// initialization, otherwise Ice provides a default implementation.
public protocol ValueFactoryManager:  Swift.AnyObject {
    /// Add a value factory. Attempting to add a factory with an id for
    /// which a factory is already registered throws AlreadyRegisteredException.
    ///
    /// When unmarshaling an Ice value, the Ice run time reads the
    /// most-derived type id off the wire and attempts to create an
    /// instance of the type using a factory. If no instance is created,
    /// either because no factory was found, or because all factories
    /// returned nil, the behavior of the Ice run time depends on the
    /// format with which the value was marshaled:
    ///
    /// If the value uses the "sliced" format, Ice ascends the class
    /// hierarchy until it finds a type that is recognized by a factory,
    /// or it reaches the least-derived type. If no factory is found that
    /// can create an instance, the run time throws NoValueFactoryException.
    ///
    /// If the value uses the "compact" format, Ice immediately raises
    /// NoValueFactoryException.
    ///
    /// The following order is used to locate a factory for a type:
    ///
    ///
    ///
    /// The Ice run-time looks for a factory registered
    /// specifically for the type.
    ///
    /// If no instance has been created, the Ice run-time looks
    /// for the default factory, which is registered with an empty type id.
    ///
    ///
    /// If no instance has been created by any of the preceding
    /// steps, the Ice run-time looks for a factory that may have been
    /// statically generated by the language mapping for non-abstract classes.
    ///
    /// - parameter factory: `@escaping ValueFactory` The factory to add.
    ///
    /// - parameter id: `Swift.String` The type id for which the factory can create instances, or
    /// an empty string for the default factory.
    func add(factory: @escaping ValueFactory, id: Swift.String) throws

    /// Find an value factory registered with this communicator.
    ///
    /// - parameter _: `Swift.String` The type id for which the factory can create instances,
    /// or an empty string for the default factory.
    ///
    /// - returns: `ValueFactory?` - The value factory, or null if no value factory was
    /// found for the given id.
    func find(_ id: Swift.String) -> ValueFactory?
}