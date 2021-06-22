package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import com.dsi.facebook_audience_network.FacebookAudienceNetworkPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    FacebookAudienceNetworkPlugin.registerWith(registry.registrarFor("com.dsi.facebook_audience_network.FacebookAudienceNetworkPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
