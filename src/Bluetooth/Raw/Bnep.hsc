{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "bnep.h"
module Bluetooth.Raw.Bnep where
import Foreign.Ptr
#strict_import

{- struct __attribute__((packed)) bnep_setup_conn_req {
    uint8_t type; uint8_t ctrl; uint8_t uuid_size; uint8_t service[0];
}; -}
#starttype struct bnep_setup_conn_req
#field type , CUChar
#field ctrl , CUChar
#field uuid_size , CUChar
#array_field service , CUChar
#stoptype
{- struct __attribute__((packed)) bnep_set_filter_req {
    uint8_t type; uint8_t ctrl; uint16_t len; uint8_t list[0];
}; -}
#starttype struct bnep_set_filter_req
#field type , CUChar
#field ctrl , CUChar
#field len , CUShort
#array_field list , CUChar
#stoptype
{- struct __attribute__((packed)) bnep_ctrl_cmd_not_understood_cmd {
    uint8_t type; uint8_t ctrl; uint8_t unkn_ctrl;
}; -}
#starttype struct bnep_ctrl_cmd_not_understood_cmd
#field type , CUChar
#field ctrl , CUChar
#field unkn_ctrl , CUChar
#stoptype
{- struct __attribute__((packed)) bnep_control_rsp {
    uint8_t type; uint8_t ctrl; uint16_t resp;
}; -}
#starttype struct bnep_control_rsp
#field type , CUChar
#field ctrl , CUChar
#field resp , CUShort
#stoptype
{- struct __attribute__((packed)) bnep_ext_hdr {
    uint8_t type; uint8_t len; uint8_t data[0];
}; -}
#starttype struct bnep_ext_hdr
#field type , CUChar
#field len , CUChar
#array_field data , CUChar
#stoptype
{- struct bnep_connadd_req {
    int sock; uint32_t flags; uint16_t role; char device[16];
}; -}
#starttype struct bnep_connadd_req
#field sock , CInt
#field flags , CUInt
#field role , CUShort
#array_field device , CChar
#stoptype
{- struct bnep_conndel_req {
    uint32_t flags; uint8_t dst[6];
}; -}
#starttype struct bnep_conndel_req
#field flags , CUInt
#array_field dst , CUChar
#stoptype
{- struct bnep_conninfo {
    uint32_t flags;
    uint16_t role;
    uint16_t state;
    uint8_t dst[6];
    char device[16];
}; -}
#starttype struct bnep_conninfo
#field flags , CUInt
#field role , CUShort
#field state , CUShort
#array_field dst , CUChar
#array_field device , CChar
#stoptype
{- struct bnep_connlist_req {
    uint32_t cnum; struct bnep_conninfo * ci;
}; -}
#starttype struct bnep_connlist_req
#field cnum , CUInt
#field ci , Ptr <struct bnep_conninfo>
#stoptype
