package com.stripe.flutterflow_stripe_terminal

import com.stripe.FlutterflowStripeTerminal.external.models.DiscoveryMethod

class FlutterflowStripeTerminalParser {
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