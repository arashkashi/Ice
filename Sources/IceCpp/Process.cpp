//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.7
//
// <auto-generated>
//
// Generated from file `Process.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef ICE_API_EXPORTS
#   define ICE_API_EXPORTS
#endif
#include <Ice/Process.h>
#include <IceUtil/PushDisableWarnings.h>
#include <Ice/LocalException.h>
#include <Ice/ValueFactory.h>
#include <Ice/OutgoingAsync.h>
#include <Ice/InputStream.h>
#include <Ice/OutputStream.h>
#include <IceUtil/PopDisableWarnings.h>

#if defined(_MSC_VER)
#   pragma warning(disable:4458) // declaration of ... hides class member
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION / 100 != 307
#       error Ice version mismatch!
#   endif
#   if ICE_INT_VERSION % 100 >= 50
#       error Beta header file detected
#   endif
#   if ICE_INT_VERSION % 100 < 7
#       error Ice patch level mismatch!
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace
{

const ::std::string iceC_Ice_Process_ids[2] =
{
    "::Ice::Object",
    "::Ice::Process"
};
const ::std::string iceC_Ice_Process_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown",
    "writeMessage"
};
const ::std::string iceC_Ice_Process_shutdown_name = "shutdown";
const ::std::string iceC_Ice_Process_writeMessage_name = "writeMessage";

}

bool
Ice::Process::ice_isA(::std::string s, const Current&) const
{
    return ::std::binary_search(iceC_Ice_Process_ids, iceC_Ice_Process_ids + 2, s);
}

::std::vector<::std::string>
Ice::Process::ice_ids(const Current&) const
{
    return ::std::vector<::std::string>(&iceC_Ice_Process_ids[0], &iceC_Ice_Process_ids[2]);
}

::std::string
Ice::Process::ice_id(const Current&) const
{
    return ice_staticId();
}

const ::std::string&
Ice::Process::ice_staticId()
{
    static const ::std::string typeId = "::Ice::Process";
    return typeId;
}

/// \cond INTERNAL
bool
Ice::Process::_iceD_shutdown(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    this->shutdown(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::Process::_iceD_writeMessage(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::string iceP_message;
    int iceP_fd;
    istr->readAll(iceP_message, iceP_fd);
    inS.endReadParams();
    this->writeMessage(::std::move(iceP_message), iceP_fd, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::Process::_iceDispatch(::IceInternal::Incoming& in, const Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Ice_Process_ops, iceC_Ice_Process_ops + 6, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Ice_Process_ops)
    {
        case 0:
        {
            return _iceD_ice_id(in, current);
        }
        case 1:
        {
            return _iceD_ice_ids(in, current);
        }
        case 2:
        {
            return _iceD_ice_isA(in, current);
        }
        case 3:
        {
            return _iceD_ice_ping(in, current);
        }
        case 4:
        {
            return _iceD_shutdown(in, current);
        }
        case 5:
        {
            return _iceD_writeMessage(in, current);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond INTERNAL
void
Ice::ProcessPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const Context& context)
{
    outAsync->invoke(iceC_Ice_Process_shutdown_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Ice::ProcessPrx::_iceI_writeMessage(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::string& iceP_message, int iceP_fd, const Context& context)
{
    outAsync->invoke(iceC_Ice_Process_writeMessage_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](OutputStream* ostr)
        {
            ostr->writeAll(iceP_message, iceP_fd);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Ice::ProcessPrx::_newInstance() const
{
    return ::IceInternal::createProxy<ProcessPrx>();
}
/// \endcond

const ::std::string&
Ice::ProcessPrx::ice_staticId()
{
    return Process::ice_staticId();
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Ice_Process_shutdown_name = "shutdown";

const ::std::string iceC_Ice_Process_writeMessage_name = "writeMessage";

}

/// \cond INTERNAL
ICE_API ::IceProxy::Ice::Object* ::IceProxy::Ice::upCast(Process* p) { return p; }

void
::IceProxy::Ice::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< Process>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new Process;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Ice::Process::_iceI_begin_shutdown(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Ice_Process_shutdown_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Ice_Process_shutdown_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Ice_Process_shutdown_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Ice::Process::end_shutdown(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Ice_Process_shutdown_name);
}

::Ice::AsyncResultPtr
IceProxy::Ice::Process::_iceI_begin_writeMessage(const ::std::string& iceP_message, ::Ice::Int iceP_fd, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Ice_Process_writeMessage_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Ice_Process_writeMessage_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_message);
        ostr->write(iceP_fd);
        result->endWriteParams();
        result->invoke(iceC_Ice_Process_writeMessage_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Ice::Process::end_writeMessage(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Ice_Process_writeMessage_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Ice::Process::_newInstance() const
{
    return new Process;
}
/// \endcond

const ::std::string&
IceProxy::Ice::Process::ice_staticId()
{
    return ::Ice::Process::ice_staticId();
}

Ice::Process::~Process()
{
}

/// \cond INTERNAL
ICE_API ::Ice::Object* Ice::upCast(Process* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Ice_Process_ids[2] =
{
    "::Ice::Object",
    "::Ice::Process"
};

}

bool
Ice::Process::ice_isA(const ::std::string& s, const Current&) const
{
    return ::std::binary_search(iceC_Ice_Process_ids, iceC_Ice_Process_ids + 2, s);
}

::std::vector< ::std::string>
Ice::Process::ice_ids(const Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Ice_Process_ids[0], &iceC_Ice_Process_ids[2]);
}

const ::std::string&
Ice::Process::ice_id(const Current&) const
{
    return ice_staticId();
}

const ::std::string&
Ice::Process::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Ice::Process";
    return typeId;
#else
    return iceC_Ice_Process_ids[1];
#endif
}

/// \cond INTERNAL
bool
Ice::Process::_iceD_shutdown(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    this->shutdown(current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::Process::_iceD_writeMessage(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    InputStream* istr = inS.startReadParams();
    ::std::string iceP_message;
    Int iceP_fd;
    istr->read(iceP_message);
    istr->read(iceP_fd);
    inS.endReadParams();
    this->writeMessage(iceP_message, iceP_fd, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Ice_Process_all[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "shutdown",
    "writeMessage"
};

}

/// \cond INTERNAL
bool
Ice::Process::_iceDispatch(::IceInternal::Incoming& in, const Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Ice_Process_all, iceC_Ice_Process_all + 6, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Ice_Process_all)
    {
        case 0:
        {
            return _iceD_ice_id(in, current);
        }
        case 1:
        {
            return _iceD_ice_ids(in, current);
        }
        case 2:
        {
            return _iceD_ice_isA(in, current);
        }
        case 3:
        {
            return _iceD_ice_ping(in, current);
        }
        case 4:
        {
            return _iceD_shutdown(in, current);
        }
        case 5:
        {
            return _iceD_writeMessage(in, current);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond STREAM
void
Ice::Process::_iceWriteImpl(OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    StreamWriter< Process, OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Ice::Process::_iceReadImpl(InputStream* istr)
{
    istr->startSlice();
    StreamReader< Process, InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Ice::_icePatchObjectPtr(ProcessPtr& handle, const ObjectPtr& v)
{
    handle = ProcessPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(Process::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
