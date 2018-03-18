/*
   Copyright (c) 2017, The Lineage OS Project
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <cstdlib>
#include <unistd.h>
#include <fcntl.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "vendor_init.h"
#include "property_service.h"

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void vendor_load_properties() {
        property_override("ro.product.model", "ALE-L21");
        property_override("ro.build.description", "ALE-L21-user 6.0 HuaweiALE-L21 C432B596 release-keys");
        property_override("ro.build.fingerprint", "Huawei/ALE-L21/hwALE-H:6.0/HuaweiALE-L21/C432B596:user/release-keys");

        property_override("rild.libargs", "-m modem0");
        property_override("rild.libargs1", "-m modem1");
        property_override("rild.libpath", "/vendor/lib64/libbalong-ril.so");
        property_override("rild.libpath1", "/vendor/lib64/libbalong-ril.so");
        property_override("ro.config.dsds_mode", "umts_gsm");
        property_override("ro.config.hw_dsda", "true");
        property_override("ro.multi.rild", "true");
        property_override("persist.dsds.enabled", "true");
        property_override("rild.rild1_ready_to_start", "true");
        property_override("persist.radio.multisim.config", "dsda");
        property_override("ro.config.is_start_commril", "true");
        property_override("ro.config.default_commril_mode", "HISI_CGUL_MODE");
        property_override("ro.config.fix_commril_mode", "false");
        property_override("ro.telephony.default_network", "9");
        property_override("gsm.defaultpdpcontext.active", "true");
        property_override("persist.radio.m0_ps_allow", "1");
	property_override("persist.radio.modem_cdma_roam", "false");
	property_override("ro.config.full_network_support", "false");
}
