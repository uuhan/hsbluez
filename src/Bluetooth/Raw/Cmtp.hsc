{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "cmtp.h"
module Bluetooth.Raw.Cmtp where
import Foreign.Ptr
#strict_import

import Bluetooth.Raw.Bluetooth
{- struct cmtp_connadd_req {
    int sock; uint32_t flags;
}; -}
#starttype struct cmtp_connadd_req
#field sock , CInt
#field flags , CUInt
#stoptype
{- struct cmtp_conndel_req {
    bdaddr_t bdaddr; uint32_t flags;
}; -}
#starttype struct cmtp_conndel_req
#field bdaddr , <bdaddr_t>
#field flags , CUInt
#stoptype
{- struct cmtp_conninfo {
    bdaddr_t bdaddr; uint32_t flags; uint16_t state; int num;
}; -}
#starttype struct cmtp_conninfo
#field bdaddr , <bdaddr_t>
#field flags , CUInt
#field state , CUShort
#field num , CInt
#stoptype
{- struct cmtp_connlist_req {
    uint32_t cnum; struct cmtp_conninfo * ci;
}; -}
#starttype struct cmtp_connlist_req
#field cnum , CUInt
#field ci , Ptr <struct cmtp_conninfo>
#stoptype
