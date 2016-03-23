{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "sdp_lib.h"
module Bluetooth.Raw.SdpLib where
import Foreign.Ptr
#strict_import

import Bluetooth.Raw.Sdp
import Bluetooth.Raw.Bluetooth
import Bluetooth.Raw.Hci
#callback sdp_list_func_t , Ptr () -> Ptr () -> IO ()
#callback sdp_free_func_t , Ptr () -> IO ()
#callback sdp_comp_func_t , Ptr () -> Ptr () -> IO CInt
#ccall sdp_list_append , Ptr <struct _sdp_list> -> Ptr () -> IO (Ptr <struct _sdp_list>)
#ccall sdp_list_remove , Ptr <struct _sdp_list> -> Ptr () -> IO (Ptr <struct _sdp_list>)
#ccall sdp_list_insert_sorted , Ptr <struct _sdp_list> -> Ptr () -> <sdp_comp_func_t> -> IO (Ptr <struct _sdp_list>)
#ccall sdp_list_free , Ptr <struct _sdp_list> -> <sdp_free_func_t> -> IO ()
#cinline sdp_list_len , Ptr <struct _sdp_list> -> IO CInt
#cinline sdp_list_find , Ptr <struct _sdp_list> -> Ptr () -> <sdp_comp_func_t> -> IO (Ptr <struct _sdp_list>)
#cinline sdp_list_foreach , Ptr <struct _sdp_list> -> <sdp_list_func_t> -> Ptr () -> IO ()
{- typedef struct {
            int sock;
            int state;
            int local;
            int flags;
            uint16_t tid;
            void * priv;
        } sdp_session_t; -}
#starttype sdp_session_t
#field sock , CInt
#field state , CInt
#field local , CInt
#field flags , CInt
#field tid , CUShort
#field priv , Ptr ()
#stoptype
{- typedef enum {
            SDP_ATTR_REQ_INDIVIDUAL = 1, SDP_ATTR_REQ_RANGE
        } sdp_attrreq_type_t; -}
#integral_t sdp_attrreq_type_t
#num SDP_ATTR_REQ_INDIVIDUAL
#num SDP_ATTR_REQ_RANGE
#callback sdp_callback_t , CUChar -> CUShort -> Ptr CUChar -> CSize -> Ptr () -> IO ()
#ccall sdp_connect , Ptr <bdaddr_t> -> Ptr <bdaddr_t> -> CUInt -> IO (Ptr <sdp_session_t>)
#ccall sdp_close , Ptr <sdp_session_t> -> IO CInt
#ccall sdp_get_socket , Ptr <sdp_session_t> -> IO CInt
#ccall sdp_create , CInt -> CUInt -> IO (Ptr <sdp_session_t>)
#ccall sdp_get_error , Ptr <sdp_session_t> -> IO CInt
#ccall sdp_process , Ptr <sdp_session_t> -> IO CInt
#ccall sdp_set_notify , Ptr <sdp_session_t> -> Ptr <sdp_callback_t> -> Ptr () -> IO CInt
#ccall sdp_service_search_async , Ptr <sdp_session_t> -> Ptr <struct _sdp_list> -> CUShort -> IO CInt
#ccall sdp_service_attr_async , Ptr <sdp_session_t> -> CUInt -> <sdp_attrreq_type_t> -> Ptr <struct _sdp_list> -> IO CInt
#ccall sdp_service_search_attr_async , Ptr <sdp_session_t> -> Ptr <struct _sdp_list> -> <sdp_attrreq_type_t> -> Ptr <struct _sdp_list> -> IO CInt
#ccall sdp_gen_tid , Ptr <sdp_session_t> -> IO CUShort
#ccall sdp_general_inquiry , Ptr <inquiry_info> -> CInt -> CInt -> Ptr CUChar -> IO CInt
#ccall sdp_get_int_attr , Ptr <sdp_record_t> -> CUShort -> Ptr CInt -> IO CInt
#ccall sdp_get_string_attr , Ptr <sdp_record_t> -> CUShort -> CString -> CInt -> IO CInt
#ccall sdp_data_alloc , CUChar -> Ptr () -> IO (Ptr <struct sdp_data_struct>)
#ccall sdp_data_alloc_with_length , CUChar -> Ptr () -> CUInt -> IO (Ptr <struct sdp_data_struct>)
#ccall sdp_data_free , Ptr <struct sdp_data_struct> -> IO ()
#ccall sdp_data_get , Ptr <sdp_record_t> -> CUShort -> IO (Ptr <struct sdp_data_struct>)
#ccall sdp_seq_alloc , Ptr (Ptr ()) -> Ptr (Ptr ()) -> CInt -> IO (Ptr <struct sdp_data_struct>)
#ccall sdp_seq_alloc_with_length , Ptr (Ptr ()) -> Ptr (Ptr ()) -> Ptr CInt -> CInt -> IO (Ptr <struct sdp_data_struct>)
#ccall sdp_seq_append , Ptr <struct sdp_data_struct> -> Ptr <struct sdp_data_struct> -> IO (Ptr <struct sdp_data_struct>)
#ccall sdp_attr_add , Ptr <sdp_record_t> -> CUShort -> Ptr <struct sdp_data_struct> -> IO CInt
#ccall sdp_attr_remove , Ptr <sdp_record_t> -> CUShort -> IO ()
#ccall sdp_attr_replace , Ptr <sdp_record_t> -> CUShort -> Ptr <struct sdp_data_struct> -> IO ()
#ccall sdp_set_uuidseq_attr , Ptr <sdp_record_t> -> CUShort -> Ptr <struct _sdp_list> -> IO CInt
#ccall sdp_get_uuidseq_attr , Ptr <sdp_record_t> -> CUShort -> Ptr (Ptr <struct _sdp_list>) -> IO CInt
#ccall sdp_attr_add_new , Ptr <sdp_record_t> -> CUShort -> CUChar -> Ptr () -> IO CInt
#ccall sdp_set_info_attr , Ptr <sdp_record_t> -> CString -> CString -> CString -> IO ()
#cinline sdp_set_service_classes , Ptr <sdp_record_t> -> Ptr <struct _sdp_list> -> IO CInt
#cinline sdp_get_service_classes , Ptr <sdp_record_t> -> Ptr (Ptr <struct _sdp_list>) -> IO CInt
#cinline sdp_set_browse_groups , Ptr <sdp_record_t> -> Ptr <struct _sdp_list> -> IO CInt
#ccall sdp_set_access_protos , Ptr <sdp_record_t> -> Ptr <struct _sdp_list> -> IO CInt
#ccall sdp_set_add_access_protos , Ptr <sdp_record_t> -> Ptr <struct _sdp_list> -> IO CInt
#ccall sdp_get_proto_port , Ptr <struct _sdp_list> -> CInt -> IO CInt
#ccall sdp_get_proto_desc , Ptr <struct _sdp_list> -> CInt -> IO (Ptr <struct sdp_data_struct>)
#ccall sdp_set_lang_attr , Ptr <sdp_record_t> -> Ptr <struct _sdp_list> -> IO CInt
#cinline sdp_set_service_ttl , Ptr <sdp_record_t> -> CUInt -> IO CInt
#cinline sdp_set_record_state , Ptr <sdp_record_t> -> CUInt -> IO CInt
{- #ccall sdp_set_service_id , Ptr <sdp_record_t> -> <uuid_t> -> IO () -}
{- #ccall sdp_set_group_id , Ptr <sdp_record_t> -> <uuid_t> -> IO () -}
#cinline sdp_set_service_avail , Ptr <sdp_record_t> -> CUChar -> IO CInt
#ccall sdp_set_profile_descs , Ptr <sdp_record_t> -> Ptr <struct _sdp_list> -> IO CInt
#ccall sdp_set_url_attr , Ptr <sdp_record_t> -> CString -> CString -> CString -> IO ()
#ccall sdp_service_search_req , Ptr <sdp_session_t> -> Ptr <struct _sdp_list> -> CUShort -> Ptr (Ptr <struct _sdp_list>) -> IO CInt
#ccall sdp_service_attr_req , Ptr <sdp_session_t> -> CUInt -> <sdp_attrreq_type_t> -> Ptr <struct _sdp_list> -> IO (Ptr <sdp_record_t>)
#ccall sdp_service_search_attr_req , Ptr <sdp_session_t> -> Ptr <struct _sdp_list> -> <sdp_attrreq_type_t> -> Ptr <struct _sdp_list> -> Ptr (Ptr <struct _sdp_list>) -> IO CInt
#ccall sdp_record_alloc , IO (Ptr <sdp_record_t>)
#ccall sdp_record_free , Ptr <sdp_record_t> -> IO ()
#ccall sdp_device_record_register_binary , Ptr <sdp_session_t> -> Ptr <bdaddr_t> -> Ptr CUChar -> CUInt -> CUChar -> Ptr CUInt -> IO CInt
#ccall sdp_device_record_register , Ptr <sdp_session_t> -> Ptr <bdaddr_t> -> Ptr <sdp_record_t> -> CUChar -> IO CInt
#ccall sdp_record_register , Ptr <sdp_session_t> -> Ptr <sdp_record_t> -> CUChar -> IO CInt
#ccall sdp_device_record_unregister_binary , Ptr <sdp_session_t> -> Ptr <bdaddr_t> -> CUInt -> IO CInt
#ccall sdp_device_record_unregister , Ptr <sdp_session_t> -> Ptr <bdaddr_t> -> Ptr <sdp_record_t> -> IO CInt
#ccall sdp_record_unregister , Ptr <sdp_session_t> -> Ptr <sdp_record_t> -> IO CInt
#ccall sdp_device_record_update_binary , Ptr <sdp_session_t> -> Ptr <bdaddr_t> -> CUInt -> Ptr CUChar -> CUInt -> IO CInt
#ccall sdp_device_record_update , Ptr <sdp_session_t> -> Ptr <bdaddr_t> -> Ptr <sdp_record_t> -> IO CInt
#ccall sdp_record_update , Ptr <sdp_session_t> -> Ptr <sdp_record_t> -> IO CInt
#ccall sdp_record_print , Ptr <sdp_record_t> -> IO ()
#ccall sdp_uuid16_create , Ptr <uuid_t> -> CUShort -> IO (Ptr <uuid_t>)
#ccall sdp_uuid32_create , Ptr <uuid_t> -> CUInt -> IO (Ptr <uuid_t>)
#ccall sdp_uuid128_create , Ptr <uuid_t> -> Ptr () -> IO (Ptr <uuid_t>)
#ccall sdp_uuid16_cmp , Ptr () -> Ptr () -> IO CInt
#ccall sdp_uuid128_cmp , Ptr () -> Ptr () -> IO CInt
#ccall sdp_uuid_cmp , Ptr () -> Ptr () -> IO CInt
#ccall sdp_uuid_to_uuid128 , Ptr <uuid_t> -> IO (Ptr <uuid_t>)
#ccall sdp_uuid16_to_uuid128 , Ptr <uuid_t> -> Ptr <uuid_t> -> IO ()
#ccall sdp_uuid32_to_uuid128 , Ptr <uuid_t> -> Ptr <uuid_t> -> IO ()
#ccall sdp_uuid128_to_uuid , Ptr <uuid_t> -> IO CInt
#ccall sdp_uuid_to_proto , Ptr <uuid_t> -> IO CInt
#ccall sdp_uuid_extract , Ptr CUChar -> CInt -> Ptr <uuid_t> -> Ptr CInt -> IO CInt
#ccall sdp_uuid_print , Ptr <uuid_t> -> IO ()
#ccall sdp_uuid2strn , Ptr <uuid_t> -> CString -> CSize -> IO CInt
#ccall sdp_proto_uuid2strn , Ptr <uuid_t> -> CString -> CSize -> IO CInt
#ccall sdp_svclass_uuid2strn , Ptr <uuid_t> -> CString -> CSize -> IO CInt
#ccall sdp_profile_uuid2strn , Ptr <uuid_t> -> CString -> CSize -> IO CInt
#ccall sdp_get_access_protos , Ptr <sdp_record_t> -> Ptr (Ptr <struct _sdp_list>) -> IO CInt
#ccall sdp_get_add_access_protos , Ptr <sdp_record_t> -> Ptr (Ptr <struct _sdp_list>) -> IO CInt
#cinline sdp_get_browse_groups , Ptr <sdp_record_t> -> Ptr (Ptr <struct _sdp_list>) -> IO CInt
#ccall sdp_get_lang_attr , Ptr <sdp_record_t> -> Ptr (Ptr <struct _sdp_list>) -> IO CInt
#ccall sdp_get_profile_descs , Ptr <sdp_record_t> -> Ptr (Ptr <struct _sdp_list>) -> IO CInt
#ccall sdp_get_server_ver , Ptr <sdp_record_t> -> Ptr (Ptr <struct _sdp_list>) -> IO CInt
#ccall sdp_get_service_id , Ptr <sdp_record_t> -> Ptr <uuid_t> -> IO CInt
#ccall sdp_get_group_id , Ptr <sdp_record_t> -> Ptr <uuid_t> -> IO CInt
#ccall sdp_get_record_state , Ptr <sdp_record_t> -> Ptr CUInt -> IO CInt
#ccall sdp_get_service_avail , Ptr <sdp_record_t> -> Ptr CUChar -> IO CInt
#ccall sdp_get_service_ttl , Ptr <sdp_record_t> -> Ptr CUInt -> IO CInt
#ccall sdp_get_database_state , Ptr <sdp_record_t> -> Ptr CUInt -> IO CInt
#cinline sdp_get_service_name , Ptr <sdp_record_t> -> CString -> CInt -> IO CInt
#cinline sdp_get_service_desc , Ptr <sdp_record_t> -> CString -> CInt -> IO CInt
#cinline sdp_get_provider_name , Ptr <sdp_record_t> -> CString -> CInt -> IO CInt
#cinline sdp_get_doc_url , Ptr <sdp_record_t> -> CString -> CInt -> IO CInt
#cinline sdp_get_clnt_exec_url , Ptr <sdp_record_t> -> CString -> CInt -> IO CInt
#cinline sdp_get_icon_url , Ptr <sdp_record_t> -> CString -> CInt -> IO CInt
#ccall sdp_set_supp_feat , Ptr <sdp_record_t> -> Ptr <struct _sdp_list> -> IO CInt
#ccall sdp_get_supp_feat , Ptr <sdp_record_t> -> Ptr (Ptr <struct _sdp_list>) -> IO CInt
#ccall sdp_extract_pdu , Ptr CUChar -> CInt -> Ptr CInt -> IO (Ptr <sdp_record_t>)
#ccall sdp_copy_record , Ptr <sdp_record_t> -> IO (Ptr <sdp_record_t>)
#ccall sdp_data_print , Ptr <struct sdp_data_struct> -> IO ()
#ccall sdp_print_service_attr , Ptr <struct _sdp_list> -> IO ()
#ccall sdp_attrid_comp_func , Ptr () -> Ptr () -> IO CInt
#ccall sdp_set_seq_len , Ptr CUChar -> CUInt -> IO ()
#ccall sdp_set_attrid , Ptr <sdp_buf_t> -> CUShort -> IO ()
#ccall sdp_append_to_pdu , Ptr <sdp_buf_t> -> Ptr <struct sdp_data_struct> -> IO ()
#ccall sdp_append_to_buf , Ptr <sdp_buf_t> -> Ptr CUChar -> CUInt -> IO ()
#ccall sdp_gen_pdu , Ptr <sdp_buf_t> -> Ptr <struct sdp_data_struct> -> IO CInt
#ccall sdp_gen_record_pdu , Ptr <sdp_record_t> -> Ptr <sdp_buf_t> -> IO CInt
#ccall sdp_extract_seqtype , Ptr CUChar -> CInt -> Ptr CUChar -> Ptr CInt -> IO CInt
#ccall sdp_extract_attr , Ptr CUChar -> CInt -> Ptr CInt -> Ptr <sdp_record_t> -> IO (Ptr <struct sdp_data_struct>)
#ccall sdp_pattern_add_uuid , Ptr <sdp_record_t> -> Ptr <uuid_t> -> IO ()
#ccall sdp_pattern_add_uuidseq , Ptr <sdp_record_t> -> Ptr <struct _sdp_list> -> IO ()
#ccall sdp_send_req_w4_rsp , Ptr <sdp_session_t> -> Ptr CUChar -> Ptr CUChar -> CUInt -> Ptr CUInt -> IO CInt
#ccall sdp_add_lang_attr , Ptr <sdp_record_t> -> IO ()
