{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "l2cap.h"
module Bluetooth.Raw.L2cap where
import Foreign.Ptr
#strict_import

import Bluetooth.Raw.Bluetooth
{- struct sockaddr_l2 {
    sa_family_t l2_family;
    unsigned short l2_psm;
    bdaddr_t l2_bdaddr;
    unsigned short l2_cid;
    uint8_t l2_bdaddr_type;
}; -}
#starttype struct sockaddr_l2
#field l2_family , CUShort
#field l2_psm , CUShort
#field l2_bdaddr , <bdaddr_t>
#field l2_cid , CUShort
#field l2_bdaddr_type , CUChar
#stoptype
{- struct l2cap_options {
    uint16_t omtu;
    uint16_t imtu;
    uint16_t flush_to;
    uint8_t mode;
    uint8_t fcs;
    uint8_t max_tx;
    uint16_t txwin_size;
}; -}
#starttype struct l2cap_options
#field omtu , CUShort
#field imtu , CUShort
#field flush_to , CUShort
#field mode , CUChar
#field fcs , CUChar
#field max_tx , CUChar
#field txwin_size , CUShort
#stoptype
{- struct l2cap_conninfo {
    uint16_t hci_handle; uint8_t dev_class[3];
}; -}
#starttype struct l2cap_conninfo
#field hci_handle , CUShort
#array_field dev_class , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t len; uint16_t cid;
        } l2cap_hdr; -}
#starttype l2cap_hdr
#field len , CUShort
#field cid , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t code; uint8_t ident; uint16_t len;
        } l2cap_cmd_hdr; -}
#starttype l2cap_cmd_hdr
#field code , CUChar
#field ident , CUChar
#field len , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t reason;
        } l2cap_cmd_rej; -}
#starttype l2cap_cmd_rej
#field reason , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t psm; uint16_t scid;
        } l2cap_conn_req; -}
#starttype l2cap_conn_req
#field psm , CUShort
#field scid , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t dcid; uint16_t scid; uint16_t result; uint16_t status;
        } l2cap_conn_rsp; -}
#starttype l2cap_conn_rsp
#field dcid , CUShort
#field scid , CUShort
#field result , CUShort
#field status , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t dcid; uint16_t flags; uint8_t data[0];
        } l2cap_conf_req; -}
#starttype l2cap_conf_req
#field dcid , CUShort
#field flags , CUShort
#array_field data , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t scid; uint16_t flags; uint16_t result; uint8_t data[0];
        } l2cap_conf_rsp; -}
#starttype l2cap_conf_rsp
#field scid , CUShort
#field flags , CUShort
#field result , CUShort
#array_field data , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t type; uint8_t len; uint8_t val[0];
        } l2cap_conf_opt; -}
#starttype l2cap_conf_opt
#field type , CUChar
#field len , CUChar
#array_field val , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t dcid; uint16_t scid;
        } l2cap_disconn_req; -}
#starttype l2cap_disconn_req
#field dcid , CUShort
#field scid , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t dcid; uint16_t scid;
        } l2cap_disconn_rsp; -}
#starttype l2cap_disconn_rsp
#field dcid , CUShort
#field scid , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t type;
        } l2cap_info_req; -}
#starttype l2cap_info_req
#field type , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t type; uint16_t result; uint8_t data[0];
        } l2cap_info_rsp; -}
#starttype l2cap_info_rsp
#field type , CUShort
#field result , CUShort
#array_field data , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t psm; uint16_t scid; uint8_t id;
        } l2cap_create_req; -}
#starttype l2cap_create_req
#field psm , CUShort
#field scid , CUShort
#field id , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t dcid; uint16_t scid; uint16_t result; uint16_t status;
        } l2cap_create_rsp; -}
#starttype l2cap_create_rsp
#field dcid , CUShort
#field scid , CUShort
#field result , CUShort
#field status , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t icid; uint8_t id;
        } l2cap_move_req; -}
#starttype l2cap_move_req
#field icid , CUShort
#field id , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t icid; uint16_t result;
        } l2cap_move_rsp; -}
#starttype l2cap_move_rsp
#field icid , CUShort
#field result , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t icid; uint16_t result;
        } l2cap_move_cfm; -}
#starttype l2cap_move_cfm
#field icid , CUShort
#field result , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t icid;
        } l2cap_move_cfm_rsp; -}
#starttype l2cap_move_cfm_rsp
#field icid , CUShort
#stoptype
