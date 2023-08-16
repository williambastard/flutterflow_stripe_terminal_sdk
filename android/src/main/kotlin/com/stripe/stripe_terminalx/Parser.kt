package com.stripe.stripe_terminalx

import com.stripe.stripeterminalx.external.models.DiscoveryMethod

class StripeTerminalParser {
    companion object {
        fun getScanMethod(method: String): DiscoveryMethod? {
            return when (method) {
                "bluetooth" -> DiscoveryMethod.BLUETOOTH_SCAN;
                "internet" -> DiscoveryMethod.INTERNET;
                "localMobile" -> DiscoveryMethod.LOCAL_MOBILE;
                "handOff" -> DiscoveryMethod.HANDOFF;
                "embedded" -> DiscoveryMethod.EMBEDDED;
                "usb" -> DiscoveryMethod.USB;
                else -> null
            }
        }
    }
}