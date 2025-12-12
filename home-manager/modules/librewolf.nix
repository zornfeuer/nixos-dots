let 
  name = "zornfeuer";
in
{
  programs.librewolf = {
    enable = true;

    settings = {
      "webgl.disabled" = true;
      "privacy.resistFingerprinting" = true;
      "privacy.clearOnShutdown.history" = true;
      "privacy.clearOnShutdown.downloads" = true;
      "privacy.clearOnShutdown.cookies" = true;
      "identity.fxaccounts.enabled" = false;
    };

    policies = {
      ExtensionSettings = {
        "uBlock0@raymonhill.net" = {
          default_area = "navbar";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
          private_browsing = true;
        };
        "@testpilot-containers" = {
          default_area = "navbar";
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4494279/multi_account_containers-8.3.0.xpi";
          installation_mode = "normal_installed";
          private_browsing = true;
        };
        "foxyproxy@eric.h.jung" = {
          default_area = "menupanel";
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4472757/foxyproxy_standard-9.2.xpi";
          installation_mode = "normal_installed";
          private_browsing = true;
        };
        "vimium-c@gdh1995.cn" = {
          default_area = "menupanel";
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4474326/vimium_c-2.12.3.xpi";
          installation_mode = "normal_installed";
          private_browsing = true;
        };
      };
    };

    profiles.user = {
      id = 0;
      inherit name;
      path = "${name}";
      containers = {
        vpn = {
          id = 1;
          icon = "vacation";
          color = "orange";
        };
        i2p = {
          id = 2;
          icon = "fingerprint";
          color = "purple";
        };
      };

      extraConfig = ''
        user_pref("browser.download.dir", "/home/${name}/dl");
        user_pref("places.history.enabled", true);
        user_pref("privacy.clearHistory.formdata", false);
        user_pref("privacy.clearHistory.siteSettings", false);
        user_pref("privacy.fingerprintingProtection", true);
      '';
    };
  };
}
