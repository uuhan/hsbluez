{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "rfcomm.h"
module Bluetooth.Raw.Rfcomm where
import Foreign.Ptr
#strict_import

import Bluetooth.Raw.Bluetooth
{- struct sockaddr_rc {
    sa_family_t rc_family; bdaddr_t rc_bdaddr; uint8_t rc_channel;
}; -}
#starttype struct sockaddr_rc
#field rc_family , CUShort
#field rc_bdaddr , <bdaddr_t>
#field rc_channel , CUChar
#stoptype
{- struct rfcomm_conninfo {
    uint16_t hci_handle; uint8_t dev_class[3];
}; -}
#starttype struct rfcomm_conninfo
#field hci_handle , CUShort
#array_field dev_class , CUChar
#stoptype
{- struct rfcomm_dev_req {
    int16_t dev_id;
    uint32_t flags;
    bdaddr_t src;
    bdaddr_t dst;
    uint8_t channel;
}; -}
#starttype struct rfcomm_dev_req
#field dev_id , CShort
#field flags , CUInt
#field src , <bdaddr_t>
#field dst , <bdaddr_t>
#field channel , CUChar
#stoptype
{- struct rfcomm_dev_info {
    int16_t id;
    uint32_t flags;
    uint16_t state;
    bdaddr_t src;
    bdaddr_t dst;
    uint8_t channel;
}; -}
#starttype struct rfcomm_dev_info
#field id , CShort
#field flags , CUInt
#field state , CUShort
#field src , <bdaddr_t>
#field dst , <bdaddr_t>
#field channel , CUChar
#stoptype
{- struct rfcomm_dev_list_req {
    uint16_t dev_num; struct rfcomm_dev_info dev_info[0];
}; -}
#starttype struct rfcomm_dev_list_req
#field dev_num , CUShort
#array_field dev_info , <struct rfcomm_dev_info>
#stoptype
