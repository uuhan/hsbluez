{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "hidp.h"
module Bluetooth.Raw.Hidp where
import Foreign.Ptr
#strict_import

import Bluetooth.Raw.Bluetooth
{- struct hidp_connadd_req {
    int ctrl_sock;
    int intr_sock;
    uint16_t parser;
    uint16_t rd_size;
    uint8_t * rd_data;
    uint8_t country;
    uint8_t subclass;
    uint16_t vendor;
    uint16_t product;
    uint16_t version;
    uint32_t flags;
    uint32_t idle_to;
    char name[128];
}; -}
#starttype struct hidp_connadd_req
#field ctrl_sock , CInt
#field intr_sock , CInt
#field parser , CUShort
#field rd_size , CUShort
#field rd_data , Ptr CUChar
#field country , CUChar
#field subclass , CUChar
#field vendor , CUShort
#field product , CUShort
#field version , CUShort
#field flags , CUInt
#field idle_to , CUInt
#array_field name , CChar
#stoptype
{- struct hidp_conndel_req {
    bdaddr_t bdaddr; uint32_t flags;
}; -}
#starttype struct hidp_conndel_req
#field bdaddr , <bdaddr_t>
#field flags , CUInt
#stoptype
{- struct hidp_conninfo {
    bdaddr_t bdaddr;
    uint32_t flags;
    uint16_t state;
    uint16_t vendor;
    uint16_t product;
    uint16_t version;
    char name[128];
}; -}
#starttype struct hidp_conninfo
#field bdaddr , <bdaddr_t>
#field flags , CUInt
#field state , CUShort
#field vendor , CUShort
#field product , CUShort
#field version , CUShort
#array_field name , CChar
#stoptype
{- struct hidp_connlist_req {
    uint32_t cnum; struct hidp_conninfo * ci;
}; -}
#starttype struct hidp_connlist_req
#field cnum , CUInt
#field ci , Ptr <struct hidp_conninfo>
#stoptype
