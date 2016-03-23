{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "hci_lib.h"
module Bluetooth.Raw.HciLib where
import Foreign.Ptr
#strict_import

import Bluetooth.Raw.Bluetooth
import Bluetooth.Raw.Hci
{- struct hci_request {
    uint16_t ogf;
    uint16_t ocf;
    int event;
    void * cparam;
    int clen;
    void * rparam;
    int rlen;
}; -}
#starttype struct hci_request
#field ogf , CUShort
#field ocf , CUShort
#field event , CInt
#field cparam , Ptr ()
#field clen , CInt
#field rparam , Ptr ()
#field rlen , CInt
#stoptype
{- struct hci_version {
    uint16_t manufacturer;
    uint8_t hci_ver;
    uint16_t hci_rev;
    uint8_t lmp_ver;
    uint16_t lmp_subver;
}; -}
#starttype struct hci_version
#field manufacturer , CUShort
#field hci_ver , CUChar
#field hci_rev , CUShort
#field lmp_ver , CUChar
#field lmp_subver , CUShort
#stoptype
#ccall hci_open_dev , CInt -> IO CInt
#ccall hci_close_dev , CInt -> IO CInt
#ccall hci_send_cmd , CInt -> CUShort -> CUShort -> CUChar -> Ptr () -> IO CInt
#ccall hci_send_req , CInt -> Ptr <struct hci_request> -> CInt -> IO CInt
#ccall hci_create_connection , CInt -> Ptr <bdaddr_t> -> CUShort -> CUShort -> CUChar -> Ptr CUShort -> CInt -> IO CInt
#ccall hci_disconnect , CInt -> CUShort -> CUChar -> CInt -> IO CInt
#ccall hci_inquiry , CInt -> CInt -> CInt -> Ptr CUChar -> Ptr (Ptr <inquiry_info>) -> CLong -> IO CInt
#ccall hci_devinfo , CInt -> Ptr <struct hci_dev_info> -> IO CInt
#ccall hci_devba , CInt -> Ptr <bdaddr_t> -> IO CInt
#ccall hci_devid , CString -> IO CInt
#ccall hci_read_local_name , CInt -> CInt -> CString -> CInt -> IO CInt
#ccall hci_write_local_name , CInt -> CString -> CInt -> IO CInt
#ccall hci_read_remote_name , CInt -> Ptr <bdaddr_t> -> CInt -> CString -> CInt -> IO CInt
#ccall hci_read_remote_name_with_clock_offset , CInt -> Ptr <bdaddr_t> -> CUChar -> CUShort -> CInt -> CString -> CInt -> IO CInt
#ccall hci_read_remote_name_cancel , CInt -> Ptr <bdaddr_t> -> CInt -> IO CInt
#ccall hci_read_remote_version , CInt -> CUShort -> Ptr <struct hci_version> -> CInt -> IO CInt
#ccall hci_read_remote_features , CInt -> CUShort -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_read_remote_ext_features , CInt -> CUShort -> CUChar -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_read_clock_offset , CInt -> CUShort -> Ptr CUShort -> CInt -> IO CInt
#ccall hci_read_local_version , CInt -> Ptr <struct hci_version> -> CInt -> IO CInt
#ccall hci_read_local_commands , CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_read_local_features , CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_read_local_ext_features , CInt -> CUChar -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_read_bd_addr , CInt -> Ptr <bdaddr_t> -> CInt -> IO CInt
#ccall hci_read_class_of_dev , CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_write_class_of_dev , CInt -> CUInt -> CInt -> IO CInt
#ccall hci_read_voice_setting , CInt -> Ptr CUShort -> CInt -> IO CInt
#ccall hci_write_voice_setting , CInt -> CUShort -> CInt -> IO CInt
#ccall hci_read_current_iac_lap , CInt -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_write_current_iac_lap , CInt -> CUChar -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_read_stored_link_key , CInt -> Ptr <bdaddr_t> -> CUChar -> CInt -> IO CInt
#ccall hci_write_stored_link_key , CInt -> Ptr <bdaddr_t> -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_delete_stored_link_key , CInt -> Ptr <bdaddr_t> -> CUChar -> CInt -> IO CInt
#ccall hci_authenticate_link , CInt -> CUShort -> CInt -> IO CInt
#ccall hci_encrypt_link , CInt -> CUShort -> CUChar -> CInt -> IO CInt
#ccall hci_change_link_key , CInt -> CUShort -> CInt -> IO CInt
#ccall hci_switch_role , CInt -> Ptr <bdaddr_t> -> CUChar -> CInt -> IO CInt
#ccall hci_park_mode , CInt -> CUShort -> CUShort -> CUShort -> CInt -> IO CInt
#ccall hci_exit_park_mode , CInt -> CUShort -> CInt -> IO CInt
#ccall hci_read_inquiry_scan_type , CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_write_inquiry_scan_type , CInt -> CUChar -> CInt -> IO CInt
#ccall hci_read_inquiry_mode , CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_write_inquiry_mode , CInt -> CUChar -> CInt -> IO CInt
#ccall hci_read_afh_mode , CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_write_afh_mode , CInt -> CUChar -> CInt -> IO CInt
#ccall hci_read_ext_inquiry_response , CInt -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_write_ext_inquiry_response , CInt -> CUChar -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_read_simple_pairing_mode , CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_write_simple_pairing_mode , CInt -> CUChar -> CInt -> IO CInt
#ccall hci_read_local_oob_data , CInt -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_read_inq_response_tx_power_level , CInt -> Ptr CSChar -> CInt -> IO CInt
#ccall hci_read_inquiry_transmit_power_level , CInt -> Ptr CSChar -> CInt -> IO CInt
#ccall hci_write_inquiry_transmit_power_level , CInt -> CSChar -> CInt -> IO CInt
#ccall hci_read_transmit_power_level , CInt -> CUShort -> CUChar -> Ptr CSChar -> CInt -> IO CInt
#ccall hci_read_link_policy , CInt -> CUShort -> Ptr CUShort -> CInt -> IO CInt
#ccall hci_write_link_policy , CInt -> CUShort -> CUShort -> CInt -> IO CInt
#ccall hci_read_link_supervision_timeout , CInt -> CUShort -> Ptr CUShort -> CInt -> IO CInt
#ccall hci_write_link_supervision_timeout , CInt -> CUShort -> CUShort -> CInt -> IO CInt
#ccall hci_set_afh_classification , CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_read_link_quality , CInt -> CUShort -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_read_rssi , CInt -> CUShort -> Ptr CSChar -> CInt -> IO CInt
#ccall hci_read_afh_map , CInt -> CUShort -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_read_clock , CInt -> CUShort -> CUChar -> Ptr CUInt -> Ptr CUShort -> CInt -> IO CInt
#ccall hci_le_set_scan_enable , CInt -> CUChar -> CUChar -> CInt -> IO CInt
#ccall hci_le_set_scan_parameters , CInt -> CUChar -> CUShort -> CUShort -> CUChar -> CUChar -> CInt -> IO CInt
#ccall hci_le_set_advertise_enable , CInt -> CUChar -> CInt -> IO CInt
{- #ccall hci_le_create_conn , CInt -> CUShort -> CUShort -> CUChar -> CUChar -> <bdaddr_t> -> CUChar -> CUShort -> CUShort -> CUShort -> CUShort -> CUShort -> CUShort -> Ptr CUShort -> CInt -> IO CInt -}
#ccall hci_le_conn_update , CInt -> CUShort -> CUShort -> CUShort -> CUShort -> CUShort -> CInt -> IO CInt
#ccall hci_le_add_white_list , CInt -> Ptr <bdaddr_t> -> CUChar -> CInt -> IO CInt
#ccall hci_le_rm_white_list , CInt -> Ptr <bdaddr_t> -> CUChar -> CInt -> IO CInt
#ccall hci_le_read_white_list_size , CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_le_clear_white_list , CInt -> CInt -> IO CInt
#ccall hci_le_add_resolving_list , CInt -> Ptr <bdaddr_t> -> CUChar -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_le_rm_resolving_list , CInt -> Ptr <bdaddr_t> -> CUChar -> CInt -> IO CInt
#ccall hci_le_clear_resolving_list , CInt -> CInt -> IO CInt
#ccall hci_le_read_resolving_list_size , CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_le_set_address_resolution_enable , CInt -> CUChar -> CInt -> IO CInt
#ccall hci_le_read_remote_features , CInt -> CUShort -> Ptr CUChar -> CInt -> IO CInt
#ccall hci_for_each_dev , CInt -> FunPtr (CInt -> CInt -> CLong -> CInt) -> CLong -> IO CInt
#ccall hci_get_route , Ptr <bdaddr_t> -> IO CInt
#ccall hci_bustostr , CInt -> IO CString
#ccall hci_typetostr , CInt -> IO CString
#ccall hci_dtypetostr , CInt -> IO CString
#ccall hci_dflagstostr , CUInt -> IO CString
#ccall hci_ptypetostr , CUInt -> IO CString
#ccall hci_strtoptype , CString -> Ptr CUInt -> IO CInt
#ccall hci_scoptypetostr , CUInt -> IO CString
#ccall hci_strtoscoptype , CString -> Ptr CUInt -> IO CInt
#ccall hci_lptostr , CUInt -> IO CString
#ccall hci_strtolp , CString -> Ptr CUInt -> IO CInt
#ccall hci_lmtostr , CUInt -> IO CString
#ccall hci_strtolm , CString -> Ptr CUInt -> IO CInt
#ccall hci_cmdtostr , CUInt -> IO CString
#ccall hci_commandstostr , Ptr CUChar -> CString -> CInt -> IO CString
#ccall hci_vertostr , CUInt -> IO CString
#ccall hci_strtover , CString -> Ptr CUInt -> IO CInt
#ccall lmp_vertostr , CUInt -> IO CString
#ccall lmp_strtover , CString -> Ptr CUInt -> IO CInt
#ccall pal_vertostr , CUInt -> IO CString
#ccall pal_strtover , CString -> Ptr CUInt -> IO CInt
#ccall lmp_featurestostr , Ptr CUChar -> CString -> CInt -> IO CString
#cinline hci_set_bit , CInt -> Ptr () -> IO ()
#cinline hci_clear_bit , CInt -> Ptr () -> IO ()
#cinline hci_test_bit , CInt -> Ptr () -> IO CInt
#cinline hci_filter_clear , Ptr <struct hci_filter> -> IO ()
#cinline hci_filter_set_ptype , CInt -> Ptr <struct hci_filter> -> IO ()
#cinline hci_filter_clear_ptype , CInt -> Ptr <struct hci_filter> -> IO ()
#cinline hci_filter_test_ptype , CInt -> Ptr <struct hci_filter> -> IO CInt
#cinline hci_filter_all_ptypes , Ptr <struct hci_filter> -> IO ()
#cinline hci_filter_set_event , CInt -> Ptr <struct hci_filter> -> IO ()
#cinline hci_filter_clear_event , CInt -> Ptr <struct hci_filter> -> IO ()
#cinline hci_filter_test_event , CInt -> Ptr <struct hci_filter> -> IO CInt
#cinline hci_filter_all_events , Ptr <struct hci_filter> -> IO ()
#cinline hci_filter_set_opcode , CInt -> Ptr <struct hci_filter> -> IO ()
#cinline hci_filter_clear_opcode , Ptr <struct hci_filter> -> IO ()
#cinline hci_filter_test_opcode , CInt -> Ptr <struct hci_filter> -> IO CInt
