{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "bluetooth.h"
module Bluetooth.Raw.Bluetooth where
import Foreign.Ptr
#strict_import

{- struct bt_security {
    uint8_t level; uint8_t key_size;
}; -}
#starttype struct bt_security
#field level , CUChar
#field key_size , CUChar
#stoptype
{- struct bt_power {
    uint8_t force_active;
}; -}
#starttype struct bt_power
#field force_active , CUChar
#stoptype
{- struct bt_voice {
    uint16_t setting;
}; -}
#starttype struct bt_voice
#field setting , CUShort
#stoptype
{- enum {
    BT_CONNECTED = 1,
    BT_OPEN,
    BT_BOUND,
    BT_LISTEN,
    BT_CONNECT,
    BT_CONNECT2,
    BT_CONFIG,
    BT_DISCONN,
    BT_CLOSED
}; -}
#num BT_CONNECTED
#num BT_OPEN
#num BT_BOUND
#num BT_LISTEN
#num BT_CONNECT
#num BT_CONNECT2
#num BT_CONFIG
#num BT_DISCONN
#num BT_CLOSED
#cinline bt_get_le64 , Ptr () -> IO CULong
#cinline bt_get_be64 , Ptr () -> IO CULong
#cinline bt_get_le32 , Ptr () -> IO CUInt
#cinline bt_get_be32 , Ptr () -> IO CUInt
#cinline bt_get_le16 , Ptr () -> IO CUShort
#cinline bt_get_be16 , Ptr () -> IO CUShort
#cinline bt_put_le64 , CULong -> Ptr () -> IO ()
#cinline bt_put_be64 , CULong -> Ptr () -> IO ()
#cinline bt_put_le32 , CUInt -> Ptr () -> IO ()
#cinline bt_put_be32 , CUInt -> Ptr () -> IO ()
#cinline bt_put_le16 , CUShort -> Ptr () -> IO ()
#cinline bt_put_be16 , CUShort -> Ptr () -> IO ()
{- typedef struct __attribute__((packed)) {
            uint8_t b[6];
        } bdaddr_t; -}
#starttype bdaddr_t
#array_field b , CUChar
#stoptype
#cinline bacmp , Ptr <bdaddr_t> -> Ptr <bdaddr_t> -> IO CInt
#cinline bacpy , Ptr <bdaddr_t> -> Ptr <bdaddr_t> -> IO ()
#ccall baswap , Ptr <bdaddr_t> -> Ptr <bdaddr_t> -> IO ()
#ccall strtoba , CString -> IO (Ptr <bdaddr_t>)
#ccall batostr , Ptr <bdaddr_t> -> IO CString
#ccall ba2str , Ptr <bdaddr_t> -> CString -> IO CInt
#ccall str2ba , CString -> Ptr <bdaddr_t> -> IO CInt
#ccall ba2oui , Ptr <bdaddr_t> -> CString -> IO CInt
#ccall bachk , CString -> IO CInt
#ccall baprintf , CString -> IO CInt
{- #ccall bafprintf , Ptr <struct _IO_FILE> -> CString -> IO CInt -}
#ccall basprintf , CString -> CString -> IO CInt
#ccall basnprintf , CString -> CSize -> CString -> IO CInt
#ccall bt_malloc , CSize -> IO (Ptr ())
#ccall bt_free , Ptr () -> IO ()
#ccall bt_error , CUShort -> IO CInt
#ccall bt_compidtostr , CInt -> IO CString
{- typedef struct {
            uint8_t data[16];
        } uint128_t; -}
#starttype uint128_t
#array_field data , CUChar
#stoptype
#cinline bswap_128 , Ptr () -> Ptr () -> IO ()
#cinline ntoh64 , CULong -> IO CULong
#cinline ntoh128 , Ptr <uint128_t> -> Ptr <uint128_t> -> IO ()
#cinline btoh128 , Ptr <uint128_t> -> Ptr <uint128_t> -> IO ()
