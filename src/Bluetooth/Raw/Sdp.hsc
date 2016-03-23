{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "sdp.h"
module Bluetooth.Raw.Sdp where
import Foreign.Ptr
#strict_import

{- typedef struct __attribute__((packed)) {
            uint8_t pdu_id; uint16_t tid; uint16_t plen;
        } sdp_pdu_hdr_t; -}
#starttype sdp_pdu_hdr_t
#field pdu_id , CUChar
#field tid , CUShort
#field plen , CUShort
#stoptype
{- typedef struct {
            uint8_t type;
            union {
                uint16_t uuid16; uint32_t uuid32; uint128_t uuid128;
            } value;
        } uuid_t; -}
#opaque_t struct uuid_t
{- #starttype uuid_t -}
{- #field type , CUChar -}
{- #field value ,  -}
{- #stoptype -}
{- typedef struct _sdp_list sdp_list_t; -}
{- #opaque_t struct _sdp_list -}
#synonym_t sdp_list_t , <struct _sdp_list>
{- struct _sdp_list {
    sdp_list_t * next; void * data;
}; -}
#starttype struct _sdp_list
#field next , Ptr <struct _sdp_list>
#field data , Ptr ()
#stoptype
{- typedef struct {
            uint16_t code_ISO639; uint16_t encoding; uint16_t base_offset;
        } sdp_lang_attr_t; -}
#starttype sdp_lang_attr_t
#field code_ISO639 , CUShort
#field encoding , CUShort
#field base_offset , CUShort
#stoptype
{- typedef struct {
            uuid_t uuid; uint16_t version;
        } sdp_profile_desc_t; -}
{- #starttype sdp_profile_desc_t -}
{- #field uuid , <uuid_t> -}
{- #field version , CUShort -}
{- #stoptype -}
{- typedef struct {
            uint8_t major; uint8_t minor;
        } sdp_version_t; -}
#starttype sdp_version_t
#field major , CUChar
#field minor , CUChar
#stoptype
{- typedef struct {
            uint8_t * data; uint32_t data_size; uint32_t buf_size;
        } sdp_buf_t; -}
#starttype sdp_buf_t
#field data , Ptr CUChar
#field data_size , CUInt
#field buf_size , CUInt
#stoptype
{- typedef struct {
            uint32_t handle;
            sdp_list_t * pattern;
            sdp_list_t * attrlist;
            uuid_t svclass;
        } sdp_record_t; -}
#opaque_t struct sdp_record_t
{- #starttype sdp_record_t -}
{- #field handle , CUInt -}
{- #field pattern , Ptr <struct _sdp_list> -}
{- #field attrlist , Ptr <struct _sdp_list> -}
{- #field svclass , <uuid_t> -}
{- #stoptype -}
{- typedef struct sdp_data_struct sdp_data_t; -}
#opaque_t struct sdp_data_struct
#synonym_t sdp_data_t , <struct sdp_data_struct>
{- struct sdp_data_struct {
    uint8_t dtd;
    uint16_t attrId;
    union {
        int8_t int8;
        int16_t int16;
        int32_t int32;
        int64_t int64;
        uint128_t int128;
        uint8_t uint8;
        uint16_t uint16;
        uint32_t uint32;
        uint64_t uint64;
        uint128_t uint128;
        uuid_t uuid;
        char * str;
        sdp_data_t * dataseq;
    } val;
    sdp_data_t * next;
    int unitSize;
}; -}
{- #starttype struct sdp_data_struct -}
{- #field dtd , CUChar -}
{- #field attrId , CUShort -}
{- #field val ,  -}
{- #field next , Ptr <struct sdp_data_struct> -}
{- #field unitSize , CInt -}
{- #stoptype -}
