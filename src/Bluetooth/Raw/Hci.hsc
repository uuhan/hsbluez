{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "hci.h"
module Bluetooth.Raw.Hci where
import Foreign.Ptr
#strict_import

import Bluetooth.Raw.Bluetooth
{- enum {
    HCI_UP,
    HCI_INIT,
    HCI_RUNNING,
    HCI_PSCAN,
    HCI_ISCAN,
    HCI_AUTH,
    HCI_ENCRYPT,
    HCI_INQUIRY,
    HCI_RAW
}; -}
#num HCI_UP
#num HCI_INIT
#num HCI_RUNNING
#num HCI_PSCAN
#num HCI_ISCAN
#num HCI_AUTH
#num HCI_ENCRYPT
#num HCI_INQUIRY
#num HCI_RAW
{- enum {
    LE_PUBLIC_ADDRESS = 0x0, LE_RANDOM_ADDRESS = 0x1
}; -}
#num LE_PUBLIC_ADDRESS
#num LE_RANDOM_ADDRESS
{- typedef struct __attribute__((packed)) {
            uint8_t lap[3]; uint8_t length; uint8_t num_rsp;
        } inquiry_cp; -}
#starttype inquiry_cp
#array_field lap , CUChar
#field length , CUChar
#field num_rsp , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; bdaddr_t bdaddr;
        } status_bdaddr_rp; -}
#starttype status_bdaddr_rp
#field status , CUChar
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t max_period;
            uint16_t min_period;
            uint8_t lap[3];
            uint8_t length;
            uint8_t num_rsp;
        } periodic_inquiry_cp; -}
#starttype periodic_inquiry_cp
#field max_period , CUShort
#field min_period , CUShort
#array_field lap , CUChar
#field length , CUChar
#field num_rsp , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint16_t pkt_type;
            uint8_t pscan_rep_mode;
            uint8_t pscan_mode;
            uint16_t clock_offset;
            uint8_t role_switch;
        } create_conn_cp; -}
#starttype create_conn_cp
#field bdaddr , <bdaddr_t>
#field pkt_type , CUShort
#field pscan_rep_mode , CUChar
#field pscan_mode , CUChar
#field clock_offset , CUShort
#field role_switch , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t reason;
        } disconnect_cp; -}
#starttype disconnect_cp
#field handle , CUShort
#field reason , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t pkt_type;
        } add_sco_cp; -}
#starttype add_sco_cp
#field handle , CUShort
#field pkt_type , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } create_conn_cancel_cp; -}
#starttype create_conn_cancel_cp
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t role;
        } accept_conn_req_cp; -}
#starttype accept_conn_req_cp
#field bdaddr , <bdaddr_t>
#field role , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t reason;
        } reject_conn_req_cp; -}
#starttype reject_conn_req_cp
#field bdaddr , <bdaddr_t>
#field reason , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t link_key[16];
        } link_key_reply_cp; -}
#starttype link_key_reply_cp
#field bdaddr , <bdaddr_t>
#array_field link_key , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t pin_len; uint8_t pin_code[16];
        } pin_code_reply_cp; -}
#starttype pin_code_reply_cp
#field bdaddr , <bdaddr_t>
#field pin_len , CUChar
#array_field pin_code , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t pkt_type;
        } set_conn_ptype_cp; -}
#starttype set_conn_ptype_cp
#field handle , CUShort
#field pkt_type , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } auth_requested_cp; -}
#starttype auth_requested_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t encrypt;
        } set_conn_encrypt_cp; -}
#starttype set_conn_encrypt_cp
#field handle , CUShort
#field encrypt , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } change_conn_link_key_cp; -}
#starttype change_conn_link_key_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t key_flag;
        } master_link_key_cp; -}
#starttype master_link_key_cp
#field key_flag , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t pscan_rep_mode;
            uint8_t pscan_mode;
            uint16_t clock_offset;
        } remote_name_req_cp; -}
#starttype remote_name_req_cp
#field bdaddr , <bdaddr_t>
#field pscan_rep_mode , CUChar
#field pscan_mode , CUChar
#field clock_offset , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } remote_name_req_cancel_cp; -}
#starttype remote_name_req_cancel_cp
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } read_remote_features_cp; -}
#starttype read_remote_features_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t page_num;
        } read_remote_ext_features_cp; -}
#starttype read_remote_ext_features_cp
#field handle , CUShort
#field page_num , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } read_remote_version_cp; -}
#starttype read_remote_version_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } read_clock_offset_cp; -}
#starttype read_clock_offset_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
            uint32_t tx_bandwith;
            uint32_t rx_bandwith;
            uint16_t max_latency;
            uint16_t voice_setting;
            uint8_t retrans_effort;
            uint16_t pkt_type;
        } setup_sync_conn_cp; -}
#starttype setup_sync_conn_cp
#field handle , CUShort
#field tx_bandwith , CUInt
#field rx_bandwith , CUInt
#field max_latency , CUShort
#field voice_setting , CUShort
#field retrans_effort , CUChar
#field pkt_type , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint32_t tx_bandwith;
            uint32_t rx_bandwith;
            uint16_t max_latency;
            uint16_t voice_setting;
            uint8_t retrans_effort;
            uint16_t pkt_type;
        } accept_sync_conn_req_cp; -}
#starttype accept_sync_conn_req_cp
#field bdaddr , <bdaddr_t>
#field tx_bandwith , CUInt
#field rx_bandwith , CUInt
#field max_latency , CUShort
#field voice_setting , CUShort
#field retrans_effort , CUChar
#field pkt_type , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t reason;
        } reject_sync_conn_req_cp; -}
#starttype reject_sync_conn_req_cp
#field bdaddr , <bdaddr_t>
#field reason , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t capability;
            uint8_t oob_data;
            uint8_t authentication;
        } io_capability_reply_cp; -}
#starttype io_capability_reply_cp
#field bdaddr , <bdaddr_t>
#field capability , CUChar
#field oob_data , CUChar
#field authentication , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } user_confirm_reply_cp; -}
#starttype user_confirm_reply_cp
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint32_t passkey;
        } user_passkey_reply_cp; -}
#starttype user_passkey_reply_cp
#field bdaddr , <bdaddr_t>
#field passkey , CUInt
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t hash[16]; uint8_t randomizer[16];
        } remote_oob_data_reply_cp; -}
#starttype remote_oob_data_reply_cp
#field bdaddr , <bdaddr_t>
#array_field hash , CUChar
#array_field randomizer , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t reason;
        } io_capability_neg_reply_cp; -}
#starttype io_capability_neg_reply_cp
#field bdaddr , <bdaddr_t>
#field reason , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t handle;
            uint8_t key_length;
            uint8_t key_type;
            uint8_t key[32];
        } create_physical_link_cp; -}
#starttype create_physical_link_cp
#field handle , CUChar
#field key_length , CUChar
#field key_type , CUChar
#array_field key , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t handle;
            uint8_t key_length;
            uint8_t key_type;
            uint8_t key[32];
        } accept_physical_link_cp; -}
#starttype accept_physical_link_cp
#field handle , CUChar
#field key_length , CUChar
#field key_type , CUChar
#array_field key , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t handle; uint8_t reason;
        } disconnect_physical_link_cp; -}
#starttype disconnect_physical_link_cp
#field handle , CUChar
#field reason , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t handle; uint8_t tx_flow[16]; uint8_t rx_flow[16];
        } create_logical_link_cp; -}
#starttype create_logical_link_cp
#field handle , CUChar
#array_field tx_flow , CUChar
#array_field rx_flow , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } disconnect_logical_link_cp; -}
#starttype disconnect_logical_link_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t handle; uint8_t tx_flow_id;
        } cancel_logical_link_cp; -}
#starttype cancel_logical_link_cp
#field handle , CUChar
#field tx_flow_id , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t handle; uint8_t tx_flow_id;
        } cancel_logical_link_rp; -}
#starttype cancel_logical_link_rp
#field status , CUChar
#field handle , CUChar
#field tx_flow_id , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t max_interval; uint16_t min_interval;
        } hold_mode_cp; -}
#starttype hold_mode_cp
#field handle , CUShort
#field max_interval , CUShort
#field min_interval , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
            uint16_t max_interval;
            uint16_t min_interval;
            uint16_t attempt;
            uint16_t timeout;
        } sniff_mode_cp; -}
#starttype sniff_mode_cp
#field handle , CUShort
#field max_interval , CUShort
#field min_interval , CUShort
#field attempt , CUShort
#field timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } exit_sniff_mode_cp; -}
#starttype exit_sniff_mode_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t max_interval; uint16_t min_interval;
        } park_mode_cp; -}
#starttype park_mode_cp
#field handle , CUShort
#field max_interval , CUShort
#field min_interval , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } exit_park_mode_cp; -}
#starttype exit_park_mode_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t service_type;
            uint32_t token_rate;
            uint32_t peak_bandwidth;
            uint32_t latency;
            uint32_t delay_variation;
        } hci_qos; -}
#starttype hci_qos
#field service_type , CUChar
#field token_rate , CUInt
#field peak_bandwidth , CUInt
#field latency , CUInt
#field delay_variation , CUInt
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t flags; hci_qos qos;
        } qos_setup_cp; -}
#starttype qos_setup_cp
#field handle , CUShort
#field flags , CUChar
#field qos , <hci_qos>
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } role_discovery_cp; -}
#starttype role_discovery_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t role;
        } role_discovery_rp; -}
#starttype role_discovery_rp
#field status , CUChar
#field handle , CUShort
#field role , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t role;
        } switch_role_cp; -}
#starttype switch_role_cp
#field bdaddr , <bdaddr_t>
#field role , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } read_link_policy_cp; -}
#starttype read_link_policy_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint16_t policy;
        } read_link_policy_rp; -}
#starttype read_link_policy_rp
#field status , CUChar
#field handle , CUShort
#field policy , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t policy;
        } write_link_policy_cp; -}
#starttype write_link_policy_cp
#field handle , CUShort
#field policy , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } write_link_policy_rp; -}
#starttype write_link_policy_rp
#field status , CUChar
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
            uint16_t max_latency;
            uint16_t min_remote_timeout;
            uint16_t min_local_timeout;
        } sniff_subrating_cp; -}
#starttype sniff_subrating_cp
#field handle , CUShort
#field max_latency , CUShort
#field min_remote_timeout , CUShort
#field min_local_timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t mask[8];
        } set_event_mask_cp; -}
#starttype set_event_mask_cp
#array_field mask , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t flt_type; uint8_t cond_type; uint8_t condition[0];
        } set_event_flt_cp; -}
#starttype set_event_flt_cp
#field flt_type , CUChar
#field cond_type , CUChar
#array_field condition , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t pin_type;
        } read_pin_type_rp; -}
#starttype read_pin_type_rp
#field status , CUChar
#field pin_type , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t pin_type;
        } write_pin_type_cp; -}
#starttype write_pin_type_cp
#field pin_type , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t read_all;
        } read_stored_link_key_cp; -}
#starttype read_stored_link_key_cp
#field bdaddr , <bdaddr_t>
#field read_all , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t max_keys; uint16_t num_keys;
        } read_stored_link_key_rp; -}
#starttype read_stored_link_key_rp
#field status , CUChar
#field max_keys , CUShort
#field num_keys , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t num_keys;
        } write_stored_link_key_cp; -}
#starttype write_stored_link_key_cp
#field num_keys , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t num_keys;
        } write_stored_link_key_rp; -}
#starttype write_stored_link_key_rp
#field status , CUChar
#field num_keys , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t delete_all;
        } delete_stored_link_key_cp; -}
#starttype delete_stored_link_key_cp
#field bdaddr , <bdaddr_t>
#field delete_all , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t num_keys;
        } delete_stored_link_key_rp; -}
#starttype delete_stored_link_key_rp
#field status , CUChar
#field num_keys , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t name[248];
        } change_local_name_cp; -}
#starttype change_local_name_cp
#array_field name , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t name[248];
        } read_local_name_rp; -}
#starttype read_local_name_rp
#field status , CUChar
#array_field name , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t timeout;
        } read_conn_accept_timeout_rp; -}
#starttype read_conn_accept_timeout_rp
#field status , CUChar
#field timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t timeout;
        } write_conn_accept_timeout_cp; -}
#starttype write_conn_accept_timeout_cp
#field timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t timeout;
        } read_page_timeout_rp; -}
#starttype read_page_timeout_rp
#field status , CUChar
#field timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t timeout;
        } write_page_timeout_cp; -}
#starttype write_page_timeout_cp
#field timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t enable;
        } read_scan_enable_rp; -}
#starttype read_scan_enable_rp
#field status , CUChar
#field enable , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t interval; uint16_t window;
        } read_page_activity_rp; -}
#starttype read_page_activity_rp
#field status , CUChar
#field interval , CUShort
#field window , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t interval; uint16_t window;
        } write_page_activity_cp; -}
#starttype write_page_activity_cp
#field interval , CUShort
#field window , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t interval; uint16_t window;
        } read_inq_activity_rp; -}
#starttype read_inq_activity_rp
#field status , CUChar
#field interval , CUShort
#field window , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t interval; uint16_t window;
        } write_inq_activity_cp; -}
#starttype write_inq_activity_cp
#field interval , CUShort
#field window , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t dev_class[3];
        } read_class_of_dev_rp; -}
#starttype read_class_of_dev_rp
#field status , CUChar
#array_field dev_class , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t dev_class[3];
        } write_class_of_dev_cp; -}
#starttype write_class_of_dev_cp
#array_field dev_class , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t voice_setting;
        } read_voice_setting_rp; -}
#starttype read_voice_setting_rp
#field status , CUChar
#field voice_setting , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t voice_setting;
        } write_voice_setting_cp; -}
#starttype write_voice_setting_cp
#field voice_setting , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t type;
        } read_transmit_power_level_cp; -}
#starttype read_transmit_power_level_cp
#field handle , CUShort
#field type , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; int8_t level;
        } read_transmit_power_level_rp; -}
#starttype read_transmit_power_level_rp
#field status , CUChar
#field handle , CUShort
#field level , CSChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t acl_mtu;
            uint8_t sco_mtu;
            uint16_t acl_max_pkt;
            uint16_t sco_max_pkt;
        } host_buffer_size_cp; -}
#starttype host_buffer_size_cp
#field acl_mtu , CUShort
#field sco_mtu , CUChar
#field acl_max_pkt , CUShort
#field sco_max_pkt , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t num_hndl;
        } host_num_comp_pkts_cp; -}
#starttype host_num_comp_pkts_cp
#field num_hndl , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint16_t timeout;
        } read_link_supervision_timeout_rp; -}
#starttype read_link_supervision_timeout_rp
#field status , CUChar
#field handle , CUShort
#field timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t timeout;
        } write_link_supervision_timeout_cp; -}
#starttype write_link_supervision_timeout_cp
#field handle , CUShort
#field timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } write_link_supervision_timeout_rp; -}
#starttype write_link_supervision_timeout_rp
#field status , CUChar
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t num_current_iac; uint8_t lap[0x40][3];
        } read_current_iac_lap_rp; -}
#starttype read_current_iac_lap_rp
#field status , CUChar
#field num_current_iac , CUChar
#array_field lap , Ptr CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t num_current_iac; uint8_t lap[0x40][3];
        } write_current_iac_lap_cp; -}
#starttype write_current_iac_lap_cp
#field num_current_iac , CUChar
#array_field lap , Ptr CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t map[10];
        } set_afh_classification_cp; -}
#starttype set_afh_classification_cp
#array_field map , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } set_afh_classification_rp; -}
#starttype set_afh_classification_rp
#field status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t type;
        } read_inquiry_scan_type_rp; -}
#starttype read_inquiry_scan_type_rp
#field status , CUChar
#field type , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t type;
        } write_inquiry_scan_type_cp; -}
#starttype write_inquiry_scan_type_cp
#field type , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_inquiry_scan_type_rp; -}
#starttype write_inquiry_scan_type_rp
#field status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t mode;
        } read_inquiry_mode_rp; -}
#starttype read_inquiry_mode_rp
#field status , CUChar
#field mode , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t mode;
        } write_inquiry_mode_cp; -}
#starttype write_inquiry_mode_cp
#field mode , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_inquiry_mode_rp; -}
#starttype write_inquiry_mode_rp
#field status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t mode;
        } read_afh_mode_rp; -}
#starttype read_afh_mode_rp
#field status , CUChar
#field mode , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t mode;
        } write_afh_mode_cp; -}
#starttype write_afh_mode_cp
#field mode , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_afh_mode_rp; -}
#starttype write_afh_mode_rp
#field status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t fec; uint8_t data[240];
        } read_ext_inquiry_response_rp; -}
#starttype read_ext_inquiry_response_rp
#field status , CUChar
#field fec , CUChar
#array_field data , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t fec; uint8_t data[240];
        } write_ext_inquiry_response_cp; -}
#starttype write_ext_inquiry_response_cp
#field fec , CUChar
#array_field data , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_ext_inquiry_response_rp; -}
#starttype write_ext_inquiry_response_rp
#field status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } refresh_encryption_key_cp; -}
#starttype refresh_encryption_key_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } refresh_encryption_key_rp; -}
#starttype refresh_encryption_key_rp
#field status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t mode;
        } read_simple_pairing_mode_rp; -}
#starttype read_simple_pairing_mode_rp
#field status , CUChar
#field mode , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t mode;
        } write_simple_pairing_mode_cp; -}
#starttype write_simple_pairing_mode_cp
#field mode , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_simple_pairing_mode_rp; -}
#starttype write_simple_pairing_mode_rp
#field status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t hash[16]; uint8_t randomizer[16];
        } read_local_oob_data_rp; -}
#starttype read_local_oob_data_rp
#field status , CUChar
#array_field hash , CUChar
#array_field randomizer , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; int8_t level;
        } read_inq_response_tx_power_level_rp; -}
#starttype read_inq_response_tx_power_level_rp
#field status , CUChar
#field level , CSChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; int8_t level;
        } read_inquiry_transmit_power_level_rp; -}
#starttype read_inquiry_transmit_power_level_rp
#field status , CUChar
#field level , CSChar
#stoptype
{- typedef struct __attribute__((packed)) {
            int8_t level;
        } write_inquiry_transmit_power_level_cp; -}
#starttype write_inquiry_transmit_power_level_cp
#field level , CSChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_inquiry_transmit_power_level_rp; -}
#starttype write_inquiry_transmit_power_level_rp
#field status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t reporting;
        } read_default_error_data_reporting_rp; -}
#starttype read_default_error_data_reporting_rp
#field status , CUChar
#field reporting , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t reporting;
        } write_default_error_data_reporting_cp; -}
#starttype write_default_error_data_reporting_cp
#field reporting , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_default_error_data_reporting_rp; -}
#starttype write_default_error_data_reporting_rp
#field status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t type;
        } enhanced_flush_cp; -}
#starttype enhanced_flush_cp
#field handle , CUShort
#field type , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t type;
        } send_keypress_notify_cp; -}
#starttype send_keypress_notify_cp
#field bdaddr , <bdaddr_t>
#field type , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } send_keypress_notify_rp; -}
#starttype send_keypress_notify_rp
#field status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t timeout;
        } read_log_link_accept_timeout_rp; -}
#starttype read_log_link_accept_timeout_rp
#field status , CUChar
#field timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t timeout;
        } write_log_link_accept_timeout_cp; -}
#starttype write_log_link_accept_timeout_cp
#field timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            int8_t level_gfsk;
            int8_t level_dqpsk;
            int8_t level_8dpsk;
        } read_enhanced_transmit_power_level_rp; -}
#starttype read_enhanced_transmit_power_level_rp
#field status , CUChar
#field handle , CUShort
#field level_gfsk , CSChar
#field level_dqpsk , CSChar
#field level_8dpsk , CSChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint32_t timeout;
        } read_best_effort_flush_timeout_rp; -}
#starttype read_best_effort_flush_timeout_rp
#field status , CUChar
#field timeout , CUInt
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint32_t timeout;
        } write_best_effort_flush_timeout_cp; -}
#starttype write_best_effort_flush_timeout_cp
#field handle , CUShort
#field timeout , CUInt
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_best_effort_flush_timeout_rp; -}
#starttype write_best_effort_flush_timeout_rp
#field status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t le; uint8_t simul;
        } read_le_host_supported_rp; -}
#starttype read_le_host_supported_rp
#field status , CUChar
#field le , CUChar
#field simul , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t le; uint8_t simul;
        } write_le_host_supported_cp; -}
#starttype write_le_host_supported_cp
#field le , CUChar
#field simul , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint8_t hci_ver;
            uint16_t hci_rev;
            uint8_t lmp_ver;
            uint16_t manufacturer;
            uint16_t lmp_subver;
        } read_local_version_rp; -}
#starttype read_local_version_rp
#field status , CUChar
#field hci_ver , CUChar
#field hci_rev , CUShort
#field lmp_ver , CUChar
#field manufacturer , CUShort
#field lmp_subver , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t commands[64];
        } read_local_commands_rp; -}
#starttype read_local_commands_rp
#field status , CUChar
#array_field commands , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t features[8];
        } read_local_features_rp; -}
#starttype read_local_features_rp
#field status , CUChar
#array_field features , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t page_num;
        } read_local_ext_features_cp; -}
#starttype read_local_ext_features_cp
#field page_num , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint8_t page_num;
            uint8_t max_page_num;
            uint8_t features[8];
        } read_local_ext_features_rp; -}
#starttype read_local_ext_features_rp
#field status , CUChar
#field page_num , CUChar
#field max_page_num , CUChar
#array_field features , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t acl_mtu;
            uint8_t sco_mtu;
            uint16_t acl_max_pkt;
            uint16_t sco_max_pkt;
        } read_buffer_size_rp; -}
#starttype read_buffer_size_rp
#field status , CUChar
#field acl_mtu , CUShort
#field sco_mtu , CUChar
#field acl_max_pkt , CUShort
#field sco_max_pkt , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; bdaddr_t bdaddr;
        } read_bd_addr_rp; -}
#starttype read_bd_addr_rp
#field status , CUChar
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t max_acl_len;
            uint16_t data_block_len;
            uint16_t num_blocks;
        } read_data_block_size_rp; -}
#starttype read_data_block_size_rp
#field status , CUChar
#field max_acl_len , CUShort
#field data_block_len , CUShort
#field num_blocks , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t counter;
        } read_failed_contact_counter_rp; -}
#starttype read_failed_contact_counter_rp
#field status , CUChar
#field handle , CUShort
#field counter , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } reset_failed_contact_counter_rp; -}
#starttype reset_failed_contact_counter_rp
#field status , CUChar
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t link_quality;
        } read_link_quality_rp; -}
#starttype read_link_quality_rp
#field status , CUChar
#field handle , CUShort
#field link_quality , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; int8_t rssi;
        } read_rssi_rp; -}
#starttype read_rssi_rp
#field status , CUChar
#field handle , CUShort
#field rssi , CSChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t mode; uint8_t map[10];
        } read_afh_map_rp; -}
#starttype read_afh_map_rp
#field status , CUChar
#field handle , CUShort
#field mode , CUChar
#array_field map , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t which_clock;
        } read_clock_cp; -}
#starttype read_clock_cp
#field handle , CUShort
#field which_clock , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint32_t clock; uint16_t accuracy;
        } read_clock_rp; -}
#starttype read_clock_rp
#field status , CUChar
#field handle , CUShort
#field clock , CUInt
#field accuracy , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint8_t amp_status;
            uint32_t total_bandwidth;
            uint32_t max_guaranteed_bandwidth;
            uint32_t min_latency;
            uint32_t max_pdu_size;
            uint8_t controller_type;
            uint16_t pal_caps;
            uint16_t max_amp_assoc_length;
            uint32_t max_flush_timeout;
            uint32_t best_effort_flush_timeout;
        } read_local_amp_info_rp; -}
#starttype read_local_amp_info_rp
#field status , CUChar
#field amp_status , CUChar
#field total_bandwidth , CUInt
#field max_guaranteed_bandwidth , CUInt
#field min_latency , CUInt
#field max_pdu_size , CUInt
#field controller_type , CUChar
#field pal_caps , CUShort
#field max_amp_assoc_length , CUShort
#field max_flush_timeout , CUInt
#field best_effort_flush_timeout , CUInt
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t handle; uint16_t length_so_far; uint16_t assoc_length;
        } read_local_amp_assoc_cp; -}
#starttype read_local_amp_assoc_cp
#field handle , CUChar
#field length_so_far , CUShort
#field assoc_length , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint8_t handle;
            uint16_t length;
            uint8_t fragment[248];
        } read_local_amp_assoc_rp; -}
#starttype read_local_amp_assoc_rp
#field status , CUChar
#field handle , CUChar
#field length , CUShort
#array_field fragment , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t handle;
            uint16_t length_so_far;
            uint16_t remaining_length;
            uint8_t fragment[248];
        } write_remote_amp_assoc_cp; -}
#starttype write_remote_amp_assoc_cp
#field handle , CUChar
#field length_so_far , CUShort
#field remaining_length , CUShort
#array_field fragment , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t handle;
        } write_remote_amp_assoc_rp; -}
#starttype write_remote_amp_assoc_rp
#field status , CUChar
#field handle , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t mode;
        } write_simple_pairing_debug_mode_cp; -}
#starttype write_simple_pairing_debug_mode_cp
#field mode , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_simple_pairing_debug_mode_rp; -}
#starttype write_simple_pairing_debug_mode_rp
#field status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t mask[8];
        } le_set_event_mask_cp; -}
#starttype le_set_event_mask_cp
#array_field mask , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t pkt_len; uint8_t max_pkt;
        } le_read_buffer_size_rp; -}
#starttype le_read_buffer_size_rp
#field status , CUChar
#field pkt_len , CUShort
#field max_pkt , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t features[8];
        } le_read_local_supported_features_rp; -}
#starttype le_read_local_supported_features_rp
#field status , CUChar
#array_field features , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } le_set_random_address_cp; -}
#starttype le_set_random_address_cp
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t min_interval;
            uint16_t max_interval;
            uint8_t advtype;
            uint8_t own_bdaddr_type;
            uint8_t direct_bdaddr_type;
            bdaddr_t direct_bdaddr;
            uint8_t chan_map;
            uint8_t filter;
        } le_set_advertising_parameters_cp; -}
#starttype le_set_advertising_parameters_cp
#field min_interval , CUShort
#field max_interval , CUShort
#field advtype , CUChar
#field own_bdaddr_type , CUChar
#field direct_bdaddr_type , CUChar
#field direct_bdaddr , <bdaddr_t>
#field chan_map , CUChar
#field filter , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; int8_t level;
        } le_read_advertising_channel_tx_power_rp; -}
#starttype le_read_advertising_channel_tx_power_rp
#field status , CUChar
#field level , CSChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t length; uint8_t data[31];
        } le_set_advertising_data_cp; -}
#starttype le_set_advertising_data_cp
#field length , CUChar
#array_field data , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t length; uint8_t data[31];
        } le_set_scan_response_data_cp; -}
#starttype le_set_scan_response_data_cp
#field length , CUChar
#array_field data , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t enable;
        } le_set_advertise_enable_cp; -}
#starttype le_set_advertise_enable_cp
#field enable , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t type;
            uint16_t interval;
            uint16_t window;
            uint8_t own_bdaddr_type;
            uint8_t filter;
        } le_set_scan_parameters_cp; -}
#starttype le_set_scan_parameters_cp
#field type , CUChar
#field interval , CUShort
#field window , CUShort
#field own_bdaddr_type , CUChar
#field filter , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t enable; uint8_t filter_dup;
        } le_set_scan_enable_cp; -}
#starttype le_set_scan_enable_cp
#field enable , CUChar
#field filter_dup , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t interval;
            uint16_t window;
            uint8_t initiator_filter;
            uint8_t peer_bdaddr_type;
            bdaddr_t peer_bdaddr;
            uint8_t own_bdaddr_type;
            uint16_t min_interval;
            uint16_t max_interval;
            uint16_t latency;
            uint16_t supervision_timeout;
            uint16_t min_ce_length;
            uint16_t max_ce_length;
        } le_create_connection_cp; -}
#starttype le_create_connection_cp
#field interval , CUShort
#field window , CUShort
#field initiator_filter , CUChar
#field peer_bdaddr_type , CUChar
#field peer_bdaddr , <bdaddr_t>
#field own_bdaddr_type , CUChar
#field min_interval , CUShort
#field max_interval , CUShort
#field latency , CUShort
#field supervision_timeout , CUShort
#field min_ce_length , CUShort
#field max_ce_length , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t size;
        } le_read_white_list_size_rp; -}
#starttype le_read_white_list_size_rp
#field status , CUChar
#field size , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t bdaddr_type; bdaddr_t bdaddr;
        } le_add_device_to_white_list_cp; -}
#starttype le_add_device_to_white_list_cp
#field bdaddr_type , CUChar
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t bdaddr_type; bdaddr_t bdaddr;
        } le_remove_device_from_white_list_cp; -}
#starttype le_remove_device_from_white_list_cp
#field bdaddr_type , CUChar
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
            uint16_t min_interval;
            uint16_t max_interval;
            uint16_t latency;
            uint16_t supervision_timeout;
            uint16_t min_ce_length;
            uint16_t max_ce_length;
        } le_connection_update_cp; -}
#starttype le_connection_update_cp
#field handle , CUShort
#field min_interval , CUShort
#field max_interval , CUShort
#field latency , CUShort
#field supervision_timeout , CUShort
#field min_ce_length , CUShort
#field max_ce_length , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t map[5];
        } le_set_host_channel_classification_cp; -}
#starttype le_set_host_channel_classification_cp
#array_field map , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } le_read_channel_map_cp; -}
#starttype le_read_channel_map_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t map[5];
        } le_read_channel_map_rp; -}
#starttype le_read_channel_map_rp
#field status , CUChar
#field handle , CUShort
#array_field map , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } le_read_remote_used_features_cp; -}
#starttype le_read_remote_used_features_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t key[16]; uint8_t plaintext[16];
        } le_encrypt_cp; -}
#starttype le_encrypt_cp
#array_field key , CUChar
#array_field plaintext , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t data[16];
        } le_encrypt_rp; -}
#starttype le_encrypt_rp
#field status , CUChar
#array_field data , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint64_t random;
        } le_rand_rp; -}
#starttype le_rand_rp
#field status , CUChar
#field random , CULong
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
            uint64_t random;
            uint16_t diversifier;
            uint8_t key[16];
        } le_start_encryption_cp; -}
#starttype le_start_encryption_cp
#field handle , CUShort
#field random , CULong
#field diversifier , CUShort
#array_field key , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t key[16];
        } le_ltk_reply_cp; -}
#starttype le_ltk_reply_cp
#field handle , CUShort
#array_field key , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } le_ltk_reply_rp; -}
#starttype le_ltk_reply_rp
#field status , CUChar
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } le_ltk_neg_reply_cp; -}
#starttype le_ltk_neg_reply_cp
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } le_ltk_neg_reply_rp; -}
#starttype le_ltk_neg_reply_rp
#field status , CUChar
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint64_t states;
        } le_read_supported_states_rp; -}
#starttype le_read_supported_states_rp
#field status , CUChar
#field states , CULong
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t frequency;
        } le_receiver_test_cp; -}
#starttype le_receiver_test_cp
#field frequency , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t frequency; uint8_t length; uint8_t payload;
        } le_transmitter_test_cp; -}
#starttype le_transmitter_test_cp
#field frequency , CUChar
#field length , CUChar
#field payload , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t num_pkts;
        } le_test_end_rp; -}
#starttype le_test_end_rp
#field status , CUChar
#field num_pkts , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t bdaddr_type;
            bdaddr_t bdaddr;
            uint8_t peer_irk[16];
            uint8_t local_irk[16];
        } le_add_device_to_resolv_list_cp; -}
#starttype le_add_device_to_resolv_list_cp
#field bdaddr_type , CUChar
#field bdaddr , <bdaddr_t>
#array_field peer_irk , CUChar
#array_field local_irk , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t bdaddr_type; bdaddr_t bdaddr;
        } le_remove_device_from_resolv_list_cp; -}
#starttype le_remove_device_from_resolv_list_cp
#field bdaddr_type , CUChar
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t size;
        } le_read_resolv_list_size_rp; -}
#starttype le_read_resolv_list_size_rp
#field status , CUChar
#field size , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t enable;
        } le_set_address_resolution_enable_cp; -}
#starttype le_set_address_resolution_enable_cp
#field enable , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t pscan_rep_mode;
            uint8_t pscan_period_mode;
            uint8_t pscan_mode;
            uint8_t dev_class[3];
            uint16_t clock_offset;
        } inquiry_info; -}
#starttype inquiry_info
#field bdaddr , <bdaddr_t>
#field pscan_rep_mode , CUChar
#field pscan_period_mode , CUChar
#field pscan_mode , CUChar
#array_field dev_class , CUChar
#field clock_offset , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            bdaddr_t bdaddr;
            uint8_t link_type;
            uint8_t encr_mode;
        } evt_conn_complete; -}
#starttype evt_conn_complete
#field status , CUChar
#field handle , CUShort
#field bdaddr , <bdaddr_t>
#field link_type , CUChar
#field encr_mode , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t dev_class[3]; uint8_t link_type;
        } evt_conn_request; -}
#starttype evt_conn_request
#field bdaddr , <bdaddr_t>
#array_field dev_class , CUChar
#field link_type , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t reason;
        } evt_disconn_complete; -}
#starttype evt_disconn_complete
#field status , CUChar
#field handle , CUShort
#field reason , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } evt_auth_complete; -}
#starttype evt_auth_complete
#field status , CUChar
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; bdaddr_t bdaddr; uint8_t name[248];
        } evt_remote_name_req_complete; -}
#starttype evt_remote_name_req_complete
#field status , CUChar
#field bdaddr , <bdaddr_t>
#array_field name , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t encrypt;
        } evt_encrypt_change; -}
#starttype evt_encrypt_change
#field status , CUChar
#field handle , CUShort
#field encrypt , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } evt_change_conn_link_key_complete; -}
#starttype evt_change_conn_link_key_complete
#field status , CUChar
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t key_flag;
        } evt_master_link_key_complete; -}
#starttype evt_master_link_key_complete
#field status , CUChar
#field handle , CUShort
#field key_flag , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t features[8];
        } evt_read_remote_features_complete; -}
#starttype evt_read_remote_features_complete
#field status , CUChar
#field handle , CUShort
#array_field features , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint8_t lmp_ver;
            uint16_t manufacturer;
            uint16_t lmp_subver;
        } evt_read_remote_version_complete; -}
#starttype evt_read_remote_version_complete
#field status , CUChar
#field handle , CUShort
#field lmp_ver , CUChar
#field manufacturer , CUShort
#field lmp_subver , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t flags; hci_qos qos;
        } evt_qos_setup_complete; -}
#starttype evt_qos_setup_complete
#field status , CUChar
#field handle , CUShort
#field flags , CUChar
#field qos , <hci_qos>
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t ncmd; uint16_t opcode;
        } evt_cmd_complete; -}
#starttype evt_cmd_complete
#field ncmd , CUChar
#field opcode , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t ncmd; uint16_t opcode;
        } evt_cmd_status; -}
#starttype evt_cmd_status
#field status , CUChar
#field ncmd , CUChar
#field opcode , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t code;
        } evt_hardware_error; -}
#starttype evt_hardware_error
#field code , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } evt_flush_occured; -}
#starttype evt_flush_occured
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; bdaddr_t bdaddr; uint8_t role;
        } evt_role_change; -}
#starttype evt_role_change
#field status , CUChar
#field bdaddr , <bdaddr_t>
#field role , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t num_hndl;
        } evt_num_comp_pkts; -}
#starttype evt_num_comp_pkts
#field num_hndl , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t mode; uint16_t interval;
        } evt_mode_change; -}
#starttype evt_mode_change
#field status , CUChar
#field handle , CUShort
#field mode , CUChar
#field interval , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t num_keys;
        } evt_return_link_keys; -}
#starttype evt_return_link_keys
#field num_keys , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } evt_pin_code_req; -}
#starttype evt_pin_code_req
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } evt_link_key_req; -}
#starttype evt_link_key_req
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t link_key[16]; uint8_t key_type;
        } evt_link_key_notify; -}
#starttype evt_link_key_notify
#field bdaddr , <bdaddr_t>
#array_field link_key , CUChar
#field key_type , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t link_type;
        } evt_data_buffer_overflow; -}
#starttype evt_data_buffer_overflow
#field link_type , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t max_slots;
        } evt_max_slots_change; -}
#starttype evt_max_slots_change
#field handle , CUShort
#field max_slots , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint16_t clock_offset;
        } evt_read_clock_offset_complete; -}
#starttype evt_read_clock_offset_complete
#field status , CUChar
#field handle , CUShort
#field clock_offset , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint16_t ptype;
        } evt_conn_ptype_changed; -}
#starttype evt_conn_ptype_changed
#field status , CUChar
#field handle , CUShort
#field ptype , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } evt_qos_violation; -}
#starttype evt_qos_violation
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t pscan_rep_mode;
        } evt_pscan_rep_mode_change; -}
#starttype evt_pscan_rep_mode_change
#field bdaddr , <bdaddr_t>
#field pscan_rep_mode , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint8_t flags;
            uint8_t direction;
            hci_qos qos;
        } evt_flow_spec_complete; -}
#starttype evt_flow_spec_complete
#field status , CUChar
#field handle , CUShort
#field flags , CUChar
#field direction , CUChar
#field qos , <hci_qos>
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t pscan_rep_mode;
            uint8_t pscan_period_mode;
            uint8_t dev_class[3];
            uint16_t clock_offset;
            int8_t rssi;
        } inquiry_info_with_rssi; -}
#starttype inquiry_info_with_rssi
#field bdaddr , <bdaddr_t>
#field pscan_rep_mode , CUChar
#field pscan_period_mode , CUChar
#array_field dev_class , CUChar
#field clock_offset , CUShort
#field rssi , CSChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t pscan_rep_mode;
            uint8_t pscan_period_mode;
            uint8_t pscan_mode;
            uint8_t dev_class[3];
            uint16_t clock_offset;
            int8_t rssi;
        } inquiry_info_with_rssi_and_pscan_mode; -}
#starttype inquiry_info_with_rssi_and_pscan_mode
#field bdaddr , <bdaddr_t>
#field pscan_rep_mode , CUChar
#field pscan_period_mode , CUChar
#field pscan_mode , CUChar
#array_field dev_class , CUChar
#field clock_offset , CUShort
#field rssi , CSChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint8_t page_num;
            uint8_t max_page_num;
            uint8_t features[8];
        } evt_read_remote_ext_features_complete; -}
#starttype evt_read_remote_ext_features_complete
#field status , CUChar
#field handle , CUShort
#field page_num , CUChar
#field max_page_num , CUChar
#array_field features , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            bdaddr_t bdaddr;
            uint8_t link_type;
            uint8_t trans_interval;
            uint8_t retrans_window;
            uint16_t rx_pkt_len;
            uint16_t tx_pkt_len;
            uint8_t air_mode;
        } evt_sync_conn_complete; -}
#starttype evt_sync_conn_complete
#field status , CUChar
#field handle , CUShort
#field bdaddr , <bdaddr_t>
#field link_type , CUChar
#field trans_interval , CUChar
#field retrans_window , CUChar
#field rx_pkt_len , CUShort
#field tx_pkt_len , CUShort
#field air_mode , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint8_t trans_interval;
            uint8_t retrans_window;
            uint16_t rx_pkt_len;
            uint16_t tx_pkt_len;
        } evt_sync_conn_changed; -}
#starttype evt_sync_conn_changed
#field status , CUChar
#field handle , CUShort
#field trans_interval , CUChar
#field retrans_window , CUChar
#field rx_pkt_len , CUShort
#field tx_pkt_len , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint16_t max_tx_latency;
            uint16_t max_rx_latency;
            uint16_t min_remote_timeout;
            uint16_t min_local_timeout;
        } evt_sniff_subrating; -}
#starttype evt_sniff_subrating
#field status , CUChar
#field handle , CUShort
#field max_tx_latency , CUShort
#field max_rx_latency , CUShort
#field min_remote_timeout , CUShort
#field min_local_timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t pscan_rep_mode;
            uint8_t pscan_period_mode;
            uint8_t dev_class[3];
            uint16_t clock_offset;
            int8_t rssi;
            uint8_t data[240];
        } extended_inquiry_info; -}
#starttype extended_inquiry_info
#field bdaddr , <bdaddr_t>
#field pscan_rep_mode , CUChar
#field pscan_period_mode , CUChar
#array_field dev_class , CUChar
#field clock_offset , CUShort
#field rssi , CSChar
#array_field data , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } evt_encryption_key_refresh_complete; -}
#starttype evt_encryption_key_refresh_complete
#field status , CUChar
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } evt_io_capability_request; -}
#starttype evt_io_capability_request
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t capability;
            uint8_t oob_data;
            uint8_t authentication;
        } evt_io_capability_response; -}
#starttype evt_io_capability_response
#field bdaddr , <bdaddr_t>
#field capability , CUChar
#field oob_data , CUChar
#field authentication , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint32_t passkey;
        } evt_user_confirm_request; -}
#starttype evt_user_confirm_request
#field bdaddr , <bdaddr_t>
#field passkey , CUInt
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } evt_user_passkey_request; -}
#starttype evt_user_passkey_request
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } evt_remote_oob_data_request; -}
#starttype evt_remote_oob_data_request
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; bdaddr_t bdaddr;
        } evt_simple_pairing_complete; -}
#starttype evt_simple_pairing_complete
#field status , CUChar
#field bdaddr , <bdaddr_t>
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t timeout;
        } evt_link_supervision_timeout_changed; -}
#starttype evt_link_supervision_timeout_changed
#field handle , CUShort
#field timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } evt_enhanced_flush_complete; -}
#starttype evt_enhanced_flush_complete
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint32_t passkey;
        } evt_user_passkey_notify; -}
#starttype evt_user_passkey_notify
#field bdaddr , <bdaddr_t>
#field passkey , CUInt
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t type;
        } evt_keypress_notify; -}
#starttype evt_keypress_notify
#field bdaddr , <bdaddr_t>
#field type , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t features[8];
        } evt_remote_host_features_notify; -}
#starttype evt_remote_host_features_notify
#field bdaddr , <bdaddr_t>
#array_field features , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t subevent; uint8_t data[0];
        } evt_le_meta_event; -}
#starttype evt_le_meta_event
#field subevent , CUChar
#array_field data , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint8_t role;
            uint8_t peer_bdaddr_type;
            bdaddr_t peer_bdaddr;
            uint16_t interval;
            uint16_t latency;
            uint16_t supervision_timeout;
            uint8_t master_clock_accuracy;
        } evt_le_connection_complete; -}
#starttype evt_le_connection_complete
#field status , CUChar
#field handle , CUShort
#field role , CUChar
#field peer_bdaddr_type , CUChar
#field peer_bdaddr , <bdaddr_t>
#field interval , CUShort
#field latency , CUShort
#field supervision_timeout , CUShort
#field master_clock_accuracy , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t evt_type;
            uint8_t bdaddr_type;
            bdaddr_t bdaddr;
            uint8_t length;
            uint8_t data[0];
        } le_advertising_info; -}
#starttype le_advertising_info
#field evt_type , CUChar
#field bdaddr_type , CUChar
#field bdaddr , <bdaddr_t>
#field length , CUChar
#array_field data , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint16_t interval;
            uint16_t latency;
            uint16_t supervision_timeout;
        } evt_le_connection_update_complete; -}
#starttype evt_le_connection_update_complete
#field status , CUChar
#field handle , CUShort
#field interval , CUShort
#field latency , CUShort
#field supervision_timeout , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t features[8];
        } evt_le_read_remote_used_features_complete; -}
#starttype evt_le_read_remote_used_features_complete
#field status , CUChar
#field handle , CUShort
#array_field features , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint64_t random; uint16_t diversifier;
        } evt_le_long_term_key_request; -}
#starttype evt_le_long_term_key_request
#field handle , CUShort
#field random , CULong
#field diversifier , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t handle;
        } evt_physical_link_complete; -}
#starttype evt_physical_link_complete
#field status , CUChar
#field handle , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t handle; uint8_t reason;
        } evt_disconn_physical_link_complete; -}
#starttype evt_disconn_physical_link_complete
#field status , CUChar
#field handle , CUChar
#field reason , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t handle; uint8_t reason;
        } evt_physical_link_loss_warning; -}
#starttype evt_physical_link_loss_warning
#field handle , CUChar
#field reason , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t handle;
        } evt_physical_link_recovery; -}
#starttype evt_physical_link_recovery
#field handle , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t log_handle;
            uint8_t handle;
            uint8_t tx_flow_id;
        } evt_logical_link_complete; -}
#starttype evt_logical_link_complete
#field status , CUChar
#field log_handle , CUShort
#field handle , CUChar
#field tx_flow_id , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } evt_flow_spec_modify_complete; -}
#starttype evt_flow_spec_modify_complete
#field status , CUChar
#field handle , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t num_cmplt_pkts; uint16_t num_cmplt_blks;
        } cmplt_handle; -}
#starttype cmplt_handle
#field handle , CUShort
#field num_cmplt_pkts , CUShort
#field num_cmplt_blks , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t total_num_blocks;
            uint8_t num_handles;
            cmplt_handle handles[0];
        } evt_num_completed_blocks; -}
#starttype evt_num_completed_blocks
#field total_num_blocks , CUShort
#field num_handles , CUChar
#array_field handles , <cmplt_handle>
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t amp_status;
        } evt_amp_status_change; -}
#starttype evt_amp_status_change
#field status , CUChar
#field amp_status , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t type; uint8_t data[0];
        } evt_stack_internal; -}
#starttype evt_stack_internal
#field type , CUShort
#array_field data , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t event; uint16_t dev_id;
        } evt_si_device; -}
#starttype evt_si_device
#field event , CUShort
#field dev_id , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t opcode; uint8_t plen;
        } hci_command_hdr; -}
#starttype hci_command_hdr
#field opcode , CUShort
#field plen , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint8_t evt; uint8_t plen;
        } hci_event_hdr; -}
#starttype hci_event_hdr
#field evt , CUChar
#field plen , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t dlen;
        } hci_acl_hdr; -}
#starttype hci_acl_hdr
#field handle , CUShort
#field dlen , CUShort
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t dlen;
        } hci_sco_hdr; -}
#starttype hci_sco_hdr
#field handle , CUShort
#field dlen , CUChar
#stoptype
{- typedef struct __attribute__((packed)) {
            uint16_t device; uint16_t type; uint16_t plen;
        } hci_msg_hdr; -}
#starttype hci_msg_hdr
#field device , CUShort
#field type , CUShort
#field plen , CUShort
#stoptype
{- struct sockaddr_hci {
    sa_family_t hci_family;
    unsigned short hci_dev;
    unsigned short hci_channel;
}; -}
#starttype struct sockaddr_hci
#field hci_family , CUShort
#field hci_dev , CUShort
#field hci_channel , CUShort
#stoptype
{- struct hci_filter {
    uint32_t type_mask; uint32_t event_mask[2]; uint16_t opcode;
}; -}
#starttype struct hci_filter
#field type_mask , CUInt
#array_field event_mask , CUInt
#field opcode , CUShort
#stoptype
{- struct hci_dev_stats {
    uint32_t err_rx;
    uint32_t err_tx;
    uint32_t cmd_tx;
    uint32_t evt_rx;
    uint32_t acl_tx;
    uint32_t acl_rx;
    uint32_t sco_tx;
    uint32_t sco_rx;
    uint32_t byte_rx;
    uint32_t byte_tx;
}; -}
#starttype struct hci_dev_stats
#field err_rx , CUInt
#field err_tx , CUInt
#field cmd_tx , CUInt
#field evt_rx , CUInt
#field acl_tx , CUInt
#field acl_rx , CUInt
#field sco_tx , CUInt
#field sco_rx , CUInt
#field byte_rx , CUInt
#field byte_tx , CUInt
#stoptype
{- struct hci_dev_info {
    uint16_t dev_id;
    char name[8];
    bdaddr_t bdaddr;
    uint32_t flags;
    uint8_t type;
    uint8_t features[8];
    uint32_t pkt_type;
    uint32_t link_policy;
    uint32_t link_mode;
    uint16_t acl_mtu;
    uint16_t acl_pkts;
    uint16_t sco_mtu;
    uint16_t sco_pkts;
    struct hci_dev_stats stat;
}; -}
#starttype struct hci_dev_info
#field dev_id , CUShort
#array_field name , CChar
#field bdaddr , <bdaddr_t>
#field flags , CUInt
#field type , CUChar
#array_field features , CUChar
#field pkt_type , CUInt
#field link_policy , CUInt
#field link_mode , CUInt
#field acl_mtu , CUShort
#field acl_pkts , CUShort
#field sco_mtu , CUShort
#field sco_pkts , CUShort
#field stat , <struct hci_dev_stats>
#stoptype
{- struct hci_conn_info {
    uint16_t handle;
    bdaddr_t bdaddr;
    uint8_t type;
    uint8_t out;
    uint16_t state;
    uint32_t link_mode;
}; -}
#starttype struct hci_conn_info
#field handle , CUShort
#field bdaddr , <bdaddr_t>
#field type , CUChar
#field out , CUChar
#field state , CUShort
#field link_mode , CUInt
#stoptype
{- struct hci_dev_req {
    uint16_t dev_id; uint32_t dev_opt;
}; -}
#starttype struct hci_dev_req
#field dev_id , CUShort
#field dev_opt , CUInt
#stoptype
{- struct hci_dev_list_req {
    uint16_t dev_num; struct hci_dev_req dev_req[0];
}; -}
#starttype struct hci_dev_list_req
#field dev_num , CUShort
#array_field dev_req , <struct hci_dev_req>
#stoptype
{- struct hci_conn_list_req {
    uint16_t dev_id;
    uint16_t conn_num;
    struct hci_conn_info conn_info[0];
}; -}
#starttype struct hci_conn_list_req
#field dev_id , CUShort
#field conn_num , CUShort
#array_field conn_info , <struct hci_conn_info>
#stoptype
{- struct hci_conn_info_req {
    bdaddr_t bdaddr; uint8_t type; struct hci_conn_info conn_info[0];
}; -}
#starttype struct hci_conn_info_req
#field bdaddr , <bdaddr_t>
#field type , CUChar
#array_field conn_info , <struct hci_conn_info>
#stoptype
{- struct hci_auth_info_req {
    bdaddr_t bdaddr; uint8_t type;
}; -}
#starttype struct hci_auth_info_req
#field bdaddr , <bdaddr_t>
#field type , CUChar
#stoptype
{- struct hci_inquiry_req {
    uint16_t dev_id;
    uint16_t flags;
    uint8_t lap[3];
    uint8_t length;
    uint8_t num_rsp;
}; -}
#starttype struct hci_inquiry_req
#field dev_id , CUShort
#field flags , CUShort
#array_field lap , CUChar
#field length , CUChar
#field num_rsp , CUChar
#stoptype
