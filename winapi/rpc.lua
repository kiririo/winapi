--proc/rpc: RPC types
setfenv(1, require'winapi')

rpc = ffi.load'Rpcrt4'

ffi.cdef[[
typedef long RPC_STATUS;
typedef unsigned short* RPC_WSTR;

RPC_STATUS RpcStringFreeW(RPC_WSTR* String);
]]
