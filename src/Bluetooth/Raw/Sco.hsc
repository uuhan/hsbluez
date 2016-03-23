{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "sco.h"
module Bluetooth.Raw.Sco where
import Foreign.Ptr
#strict_import

import Bluetooth.Raw.Bluetooth
{- struct sockaddr_sco {
    sa_family_t sco_family; bdaddr_t sco_bdaddr;
}; -}
#starttype struct sockaddr_sco
#field sco_family , CUShort
#field sco_bdaddr , <bdaddr_t>
#stoptype
{- struct sco_options {
    uint16_t mtu;
}; -}
#starttype struct sco_options
#field mtu , CUShort
#stoptype
{- struct sco_conninfo {
    uint16_t hci_handle; uint8_t dev_class[3];
}; -}
#starttype struct sco_conninfo
#field hci_handle , CUShort
#array_field dev_class , CUChar
#stoptype
