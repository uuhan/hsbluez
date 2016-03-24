#include <stdio.h>
#include <bluetooth.h>
#include <hci.h>
#include <hci_lib.h>

char* get_addr(inquiry_info* info){
    static char addr[20] = {0};
    ba2str(&(info->bdaddr), addr);
    return addr;
}
