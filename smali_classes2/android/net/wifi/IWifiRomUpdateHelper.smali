.class public interface abstract Landroid/net/wifi/IWifiRomUpdateHelper;
.super Ljava/lang/Object;
.source "IWifiRomUpdateHelper.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist AVAILABLE_NETWORK_KEYWORD:Ljava/lang/String; = "AVAILABLE_NETWORK_KEYWORD"

.field public static final whitelist BASIC_FOOL_PROOF_ON:Ljava/lang/String; = "BASIC_FOOL_PROOF_ON"

.field public static final whitelist BASIC_SCAN_CMD_DOWN_COUNT:Ljava/lang/String; = "BASIC_SCAN_CMD_DOWN_COUNT"

.field public static final whitelist BASIC_SCAN_REJECT_COUNT:Ljava/lang/String; = "BASIC_SCAN_REJECT_COUNT"

.field public static final whitelist BASIC_WIFI_DUMP_ENABLE:Ljava/lang/String; = "BASIC_WIFI_DUMP_ENABLE"

.field public static final whitelist BASIC_WIFI_FULLDUMP_ENABLE:Ljava/lang/String; = "BASIC_WIFI_FULLDUMP_ENABLE"

.field public static final whitelist BASIC_WIFI_OPEN_TIME:Ljava/lang/String; = "BASIC_WIFI_OPEN_TIME"

.field public static final whitelist BEGIN_DISABLE_UNECPECT_DISCONNECT_THROTTL:Ljava/lang/String; = "BEGIN_DISABLE_UNECPECT_DISCONNECT_THROTTL"

.field public static final whitelist CACHED_SCAN_RESULTS_MAX_AGE_IN_MILLIS:Ljava/lang/String; = "CACHED_SCAN_RESULTS_MAX_AGE_IN_MILLIS"

.field public static final whitelist CANACCESS_SCANRESULT_WITHOUT_LOCCATIONON:Ljava/lang/String; = "CANACCESS_SCANRESULT_WITHOUT_LOCCATIONON"

.field public static final whitelist CHANGE_TCP_RANDOM_TIMESTAMP:Ljava/lang/String; = "CHANGE_TCP_RANDOM_TIMESTAMP"

.field public static final whitelist COMMON_CONNECT_APP:Ljava/lang/String; = "COMMON_CONNECT_APP"

.field public static final whitelist CONNECT_DEFAULT_MAX_DHCP_RETRIES:Ljava/lang/String; = "CONNECT_DEFAULT_MAX_DHCP_RETRIES"

.field public static final whitelist CONNECT_DUMPWIFI_WITH_SCREENSHOT:Ljava/lang/String; = "CONNECT_DUMPWIFI_WITH_SCREENSHOT"

.field public static final whitelist CONNECT_ENABLE_REMOVE_NETWORK_WITH_WRONGKEY:Ljava/lang/String; = "CONNECT_ENABLE_REMOVE_NETWORK_WITH_WRONGKEY"

.field public static final whitelist CONNECT_GOOD_RSSI_SWITCH_VALUE:Ljava/lang/String; = "CONNECT_GOOD_RSSI_SWITCH_VALUE"

.field public static final whitelist CONNECT_LINK_FLAPPING_DEBOUNCE_MSEC:Ljava/lang/String; = "CONNECT_LINK_FLAPPING_DEBOUNCE_MSEC"

.field public static final whitelist CONNECT_MAX_RETRIES_MANUAL_ASSOCIATION_REJECT:Ljava/lang/String; = "CONNECT_MAX_RETRIES_MANUAL_ASSOCIATION_REJECT"

.field public static final whitelist CONNECT_MAX_RETRIES_MANUAL_WRONG_KEY_COUNT:Ljava/lang/String; = "CONNECT_MAX_RETRIES_MANUAL_WRONG_KEY_COUNT"

.field public static final whitelist CONNECT_MAX_RETRIES_ON_ASSOCIATION_REJECT:Ljava/lang/String; = "CONNECT_MAX_RETRIES_ON_ASSOCIATION_REJECT"

.field public static final whitelist CONNECT_MAX_RETRIES_ON_AUTHENTICATION_FAILURE:Ljava/lang/String; = "CONNECT_MAX_RETRIES_ON_AUTHENTICATION_FAILURE"

.field public static final whitelist CONNECT_MAX_RETRIES_ON_WRONG_KEY_COUNT:Ljava/lang/String; = "CONNECT_MAX_RETRIES_ON_WRONG_KEY_COUNT"

.field public static final whitelist CONNECT_OBTAINING_IP_ADDRESS_GUARD_TIMER_MSEC:Ljava/lang/String; = "CONNECT_OBTAINING_IP_ADDRESS_GUARD_TIMER_MSEC"

.field public static final whitelist CONNECT_ROAM_GUARD_TIMER_MSEC:Ljava/lang/String; = "CONNECT_ROAM_GUARD_TIMER_MSEC"

.field public static final whitelist CONNECT_TIMEOUT_ASSOC_REJECT:Ljava/lang/String; = "CONNECT_TIMEOUT_ASSOC_REJECT"

.field public static final whitelist CONNECT_TIMEOUT_AUTH_FAILURET:Ljava/lang/String; = "CONNECT_TIMEOUT_AUTH_FAILURET"

.field public static final whitelist CONNECT_TIMEOUT_AUTO_CONNECT:Ljava/lang/String; = "CONNECT_TIMEOUT_AUTO_CONNECT"

.field public static final whitelist CONNECT_TIMEOUT_MANUAL_CONNECT:Ljava/lang/String; = "CONNECT_TIMEOUT_MANUAL_CONNECT"

.field public static final whitelist CONNECT_TIMEOUT_P2P_CONNECTED_SELECT:Ljava/lang/String; = "CONNECT_TIMEOUT_P2P_CONNECTED_SELECT"

.field public static final whitelist CONNECT_TIMEOUT_SELECT:Ljava/lang/String; = "CONNECT_TIMEOUT_SELECT"

.field public static final whitelist CONNECT_TRIGGER_DUMPINFO_THRESHOLD:Ljava/lang/String; = "CONNECT_TRIGGER_DUMPINFO_THRESHOLD"

.field public static final whitelist DATA_STALL_DONT_UPLOAD_LOG_REASON:Ljava/lang/String; = "DATA_STALL_DONT_UPLOAD_LOG_REASON"

.field public static final whitelist DATA_STALL_IDLE_SLOT_PERCENT_THRESOLD:Ljava/lang/String; = "DATA_STALL_IDLE_SLOT_PERCENT_THRESOLD"

.field public static final whitelist DATA_STALL_RX_PER_SECOND_ERR_CNT_THRESOLD:Ljava/lang/String; = "DATA_STALL_RX_PER_SECOND_ERR_CNT_THRESOLD"

.field public static final whitelist DATA_STALL_TRIGGER_MINIDUMP_CNT_THRESOLD:Ljava/lang/String; = "DATA_STALL_TRIGGER_MINIDUMP_CNT_THRESOLD"

.field public static final whitelist DATA_STALL_TRIGGER_MINIDUMP_ENABLED:Ljava/lang/String; = "DATA_STALL_TRIGGER_MINIDUMP_ENABLED"

.field public static final whitelist DATA_STALL_TRIGGER_MINIDUMP_FREQUENCY_THRESOLD:Ljava/lang/String; = "DATA_STALL_TRIGGER_MINIDUMP_FREQUENCY_THRESOLD"

.field public static final whitelist DATA_STALL_TX_DIVIDE_RX_MULTIPLE_THRESOLD:Ljava/lang/String; = "DATA_STALL_TX_DIVIDE_RX_MULTIPLE_THRESOLD"

.field public static final whitelist DATA_STALL_TX_RETRY_RATIO_THRESOLD:Ljava/lang/String; = "DATA_STALL_TX_RETRY_RATIO_THRESOLD"

.field public static final whitelist DEFAULT:Landroid/net/wifi/IWifiRomUpdateHelper;

.field public static final whitelist DEFAULT_MAC_RANDOMIZATION_SETTING:Ljava/lang/String; = "DEFAULT_MAC_RANDOMIZATION_SETTING"

.field public static final whitelist DHCP_SEND_DISCOVER_PKT_TIME_DELAY:Ljava/lang/String; = "DHCP_SEND_DISCOVER_PKT_TIME_DELAY"

.field public static final whitelist DHCP_SEND_DISCOVER_PTK_ENABLED:Ljava/lang/String; = "DHCP_SEND_DISCOVER_PTK_ENABLED"

.field public static final whitelist DHCP_SEND_DISCOVER_PTK_TIME_THRESHHOD:Ljava/lang/String; = "DHCP_SEND_DISCOVER_PTK_TIME_THRESHHOD"

.field public static final whitelist EVALUATION_BLACKLIST:Ljava/lang/String; = "EVALUATION_BLACKLIST"

.field public static final whitelist FORBIDDEN_WIFI_DISNETWORK_APP_LIST:Ljava/lang/String; = "FORBIDDEN_WIFI_DISNETWORK_APP_LIST"

.field public static final whitelist FORBIDDEN_WIFI_ENNETWORK_APP_LIST:Ljava/lang/String; = "FORBIDDEN_WIFI_ENNETWORK_APP_LIST"

.field public static final whitelist FORBIDDEN_WIFI_RMNETWORK_APP_LIST:Ljava/lang/String; = "FORBIDDEN_WIFI_RMNETWORK_APP_LIST"

.field public static final whitelist GAME_LATENCY_DELAY_MS:Ljava/lang/String; = "GAME_LATENCY_DELAY_MS"

.field public static final whitelist GAME_SCORE_DELAY_MS:Ljava/lang/String; = "GAME_SCORE_DELAY_MS"

.field public static final whitelist GET_SCAN_RESULTS_PACKAGE:Ljava/lang/String; = "GET_SCAN_RESULTS_PACKAGE"

.field public static final whitelist HOMEAP_REDIRECT_URL:Ljava/lang/String; = "HOMEAP_REDIRECT_URL"

.field public static final whitelist HYBRID_ROUTER_BLACK_LIST_ENABLE:Ljava/lang/String; = "HYBRID_ROUTER_BLACK_LIST_ENABLE"

.field public static final whitelist HYBRID_RSSI_DEBOUCING:Ljava/lang/String; = "HYBRID_RSSI_DEBOUCING"

.field public static final whitelist HYBRID_SET_DELAY_MS:Ljava/lang/String; = "HYBRID_SET_DELAY_MS"

.field public static final whitelist HYBRID_SUPPORT:Ljava/lang/String; = "HYBRID_SUPPORT"

.field public static final whitelist HYBRID_TGPA_APPS:Ljava/lang/String; = "HYBRID_TGPA_APPS"

.field public static final whitelist HYBRID_TPUT_THRESHOLD:Ljava/lang/String; = "HYBRID_TPUT_THRESHOLD"

.field public static final whitelist IGNORE_NETWORK_KEYWORD:Ljava/lang/String; = "IGNORE_NETWORK_KEYWORD"

.field public static final whitelist INVALID_REDIRCT_URL:Ljava/lang/String; = "INVALID_REDIRCT_URL"

.field public static final whitelist LONG_CACHED_SCAN_RESULTS_MAX_AGE_IN_MILLIS:Ljava/lang/String; = "LONG_CACHED_SCAN_RESULTS_MAX_AGE_IN_MILLIS"

.field public static final whitelist MAC_RANDOMIZATION_SETTING_PROPERTY:Ljava/lang/String; = "persist.sys.oplus.wifi.mac_randomization"

.field public static final whitelist MTK_SMART_BW_PARAMS:Ljava/lang/String; = "MTK_SMART_BW_PARAMS"

.field public static final whitelist NAME:Ljava/lang/String; = "IWifiRomUpdateHelper"

.field public static final whitelist NETWORKS_USE_LOGIN_ACTIVITY:Ljava/lang/String; = "NETWORKS_USE_LOGIN_ACTIVITY"

.field public static final whitelist NETWORKS_USE_OPPOSTACK:Ljava/lang/String; = "NETWORKS_USE_OPPOSTACK"

.field public static final whitelist NETWORK_BACKUP_DNS:Ljava/lang/String; = "NETWORK_BACKUP_DNS"

.field public static final whitelist NETWORK_BACKUP_DNS_EXP:Ljava/lang/String; = "NETWORK_BACKUP_DNS_EXP"

.field public static final whitelist NETWORK_BGSCAN_SCAN_SCHEDULED_APP:Ljava/lang/String; = "NETWORK_BGSCAN_SCAN_SCHEDULED_APP"

.field public static final whitelist NETWORK_CAPTIVE_SERVER_FIRST_URL:Ljava/lang/String; = "NETWORK_CAPTIVE_SERVER_FIRST_URL"

.field public static final whitelist NETWORK_CAPTIVE_SERVER_SECOND_URL:Ljava/lang/String; = "NETWORK_CAPTIVE_SERVER_SECOND_URL"

.field public static final whitelist NETWORK_CHECK_INTERNET_AFTER_DRIVER_ROAMING:Ljava/lang/String; = "NETWORK_CHECK_INTERNET_AFTER_DRIVER_ROAMING"

.field public static final whitelist NETWORK_CHECK_INTERNET_FOR_DATA_STALL:Ljava/lang/String; = "NETWORK_CHECK_INTERNET_FOR_DATA_STALL"

.field public static final whitelist NETWORK_COLLECT_CAPTIVERESULT:Ljava/lang/String; = "NETWORK_COLLECT_CAPTIVERESULT"

.field public static final whitelist NETWORK_CRL_READ_TIMEOUT:Ljava/lang/String; = "NETWORK_CRL_READ_TIMEOUT"

.field public static final whitelist NETWORK_DEFAULT_DNS:Ljava/lang/String; = "NETWORK_DEFAULT_DNS"

.field public static final whitelist NETWORK_DETECT_IP_CONFLICT:Ljava/lang/String; = "NETWORK_DETECT_IP_CONFLICT"

.field public static final whitelist NETWORK_DNS_QUERY_RETRY_COUNT:Ljava/lang/String; = "NETWORK_DNS_QUERY_RETRY_COUNT"

.field public static final whitelist NETWORK_DNS_QUERY_SERVER:Ljava/lang/String; = "NETWORK_DNS_QUERY_SERVER"

.field public static final whitelist NETWORK_DNS_QUERY_SERVER_EXP:Ljava/lang/String; = "NETWORK_DNS_QUERY_SERVER_EXP"

.field public static final whitelist NETWORK_DNS_QUERY_TIMEOUT:Ljava/lang/String; = "NETWORK_DNS_QUERY_TIMEOUT"

.field public static final whitelist NETWORK_DNS_RECOVERY_ENGINE_ENABLE:Ljava/lang/String; = "NETWORK_DNS_RECOVERY_ENGINE_ENABLE"

.field public static final whitelist NETWORK_DOWNLOAD_APPS:Ljava/lang/String; = "NETWORK_DOWNLOAD_APPS"

.field public static final whitelist NETWORK_DUAL_STA_APPS:Ljava/lang/String; = "NETWORK_DUAL_STA_APPS"

.field public static final whitelist NETWORK_DUAL_STA_APPS_EXP:Ljava/lang/String; = "NETWORK_DUAL_STA_APPS_EXP"

.field public static final whitelist NETWORK_DUAL_STA_BLACK_LIST:Ljava/lang/String; = "NETWORK_DUAL_STA_BLACK_LIST"

.field public static final whitelist NETWORK_DUAL_STA_CAP_HOST_BLACK_LIST:Ljava/lang/String; = "NETWORK_DUAL_STA_CAP_HOST_BLACK_LIST"

.field public static final whitelist NETWORK_DUAL_STA_ENABLED:Ljava/lang/String; = "NETWORK_DUAL_STA_ENABLED"

.field public static final whitelist NETWORK_EXP_CAPTIVE_SERVER_HTTPS_URL:Ljava/lang/String; = "NETWORK_EXP_CAPTIVE_SERVER_HTTPS_URL"

.field public static final whitelist NETWORK_EXP_CAPTIVE_SERVER_HTTP_URL:Ljava/lang/String; = "NETWORK_EXP_CAPTIVE_SERVER_HTTP_URL"

.field public static final whitelist NETWORK_EXP_DEFAULT_DNS:Ljava/lang/String; = "NETWORK_EXP_DEFAULT_DNS"

.field public static final whitelist NETWORK_FALLBACK_HTTP_SERVERS_URL:Ljava/lang/String; = "NETWORK_FALLBACK_HTTP_SERVERS_URL"

.field public static final whitelist NETWORK_GAME_APP:Ljava/lang/String; = "NETWORK_GAME_APP"

.field public static final whitelist NETWORK_HANDLE_GATEWAY_CONFLICT:Ljava/lang/String; = "NETWORK_HANDLE_GATEWAY_CONFLICT"

.field public static final whitelist NETWORK_INVALID_NS_THRESHOLD:Ljava/lang/String; = "NETWORK_INVALID_NS_THRESHOLD"

.field public static final whitelist NETWORK_IPV6_RETRIES:Ljava/lang/String; = "NETWORK_IPV6_RETRIES"

.field public static final whitelist NETWORK_IPV6_SIMEPLE_QUERY:Ljava/lang/String; = "NETWORK_IPV6_SIMEPLE_QUERY"

.field public static final whitelist NETWORK_IPV6_TIMEOUT:Ljava/lang/String; = "NETWORK_IPV6_TIMEOUT"

.field public static final whitelist NETWORK_LONG_CACHE_APP:Ljava/lang/String; = "NETWORK_LONG_CACHE_APP"

.field public static final whitelist NETWORK_MTU:Ljava/lang/String; = "NETWORK_MTU"

.field public static final whitelist NETWORK_MTU_SERVER:Ljava/lang/String; = "NETWORK_MTU_SERVER"

.field public static final whitelist NETWORK_MTU_SERVER_EXP:Ljava/lang/String; = "NETWORK_MTU_SERVER_EXP"

.field public static final whitelist NETWORK_PUBLIC_HTTPS_SERVERS_URL:Ljava/lang/String; = "NETWORK_PUBLIC_HTTPS_SERVERS_URL"

.field public static final whitelist NETWORK_REMOVE_APP:Ljava/lang/String; = "NETWORK_REMOVE_APP"

.field public static final whitelist NETWORK_REQUESTOR_APPS:Ljava/lang/String; = "NETWORK_REQUESTOR_APPS"

.field public static final whitelist NETWORK_SKIP_DESTROY_SOCKET_APPS:Ljava/lang/String; = "NETWORK_SKIP_DESTROY_SOCKET_APPS"

.field public static final whitelist NETWORK_SLA_APPS:Ljava/lang/String; = "NETWORK_SLA_APPS"

.field public static final whitelist NETWORK_SLA_APPS_DEFAULT_STATE:Ljava/lang/String; = "NETWORK_SLA_APPS_DEFAULT_STATE"

.field public static final whitelist NETWORK_SLA_APPS_EXP:Ljava/lang/String; = "NETWORK_SLA_APPS_EXP"

.field public static final whitelist NETWORK_SLA_AUTO_ENABLE_THRESHOLD:Ljava/lang/String; = "NETWORK_SLA_AUTO_ENABLE_THRESHOLD"

.field public static final whitelist NETWORK_SLA_BLACK_LIST:Ljava/lang/String; = "NETWORK_SLA_BLACK_LIST"

.field public static final whitelist NETWORK_SLA_CELL_USAGE_THRESHOLD:Ljava/lang/String; = "NETWORK_SLA_CELL_USAGE_THRESHOLD"

.field public static final whitelist NETWORK_SLA_ENABLED:Ljava/lang/String; = "NETWORK_SLA_ENABLED"

.field public static final whitelist NETWORK_SLA_ENABLED_MCC:Ljava/lang/String; = "NETWORK_SLA_ENABLED_MCC"

.field public static final whitelist NETWORK_SLA_GAMESWITCH_ENABLE:Ljava/lang/String; = "NETWORK_SLA_GAMESWITCH_ENABLE"

.field public static final whitelist NETWORK_SLA_GAMESWITCH_ENABLE_NETWORK_LIMIT:Ljava/lang/String; = "NETWORK_SLA_GAMESWITCH_ENABLE_NETWORK_LIMIT"

.field public static final whitelist NETWORK_SLA_GAME_APPS:Ljava/lang/String; = "NETWORK_SLA_GAME_APPS"

.field public static final whitelist NETWORK_SLA_GAME_APPS_EXP:Ljava/lang/String; = "NETWORK_SLA_GAME_APPS_EXP"

.field public static final whitelist NETWORK_SLA_GAME_HIGH_TEMPERATURE_UP_THRED:Ljava/lang/String; = "NETWORK_SLA_GAME_HIGH_TEMPERATURE_UP_THRED"

.field public static final whitelist NETWORK_SLA_GAME_LOW_TEMPERATURE_DOWN_THRED:Ljava/lang/String; = "NETWORK_SLA_GAME_HIGH_TEMPERATURE_DOWN_THRED"

.field public static final whitelist NETWORK_SLA_GAME_PARAMS:Ljava/lang/String; = "NETWORK_SLA_GAME_PARAMS"

.field public static final whitelist NETWORK_SLA_HIGH_TEMPERATURE_COLD_DOWN_DELAY_SEC:Ljava/lang/String; = "NETWORK_SLA_HIGH_TEMPERATURE_COLD_DOWN_DELAY_SEC"

.field public static final whitelist NETWORK_SLA_HONOR_OIFACE_STATE:Ljava/lang/String; = "NETWORK_SLA_HONOR_OIFACE_STATE"

.field public static final whitelist NETWORK_SLA_INTERVAL_PARAMS:Ljava/lang/String; = "NETWORK_SLA_INTERVAL_PARAMS"

.field public static final whitelist NETWORK_SLA_NORMAL_APP_HIGH_TEMPERATURE_UP_THRED:Ljava/lang/String; = "NETWORK_SLA_NORMAL_APP_HIGH_TEMPERATURE_UP_THRED"

.field public static final whitelist NETWORK_SLA_NORMAL_APP_LOW_TEMPERATURE_DOWN_THRED:Ljava/lang/String; = "NETWORK_SLA_NORMAL_APP_LOW_TEMPERATURE_DOWN_THRED"

.field public static final whitelist NETWORK_SLA_PARAMS:Ljava/lang/String; = "NETWORK_SLA_PARAMS"

.field public static final whitelist NETWORK_SLA_SPEED_PARAMS:Ljava/lang/String; = "NETWORK_SLA_SPEED_PARAMS"

.field public static final whitelist NETWORK_SLA_TEMPERATURE_ENABLED:Ljava/lang/String; = "NETWORK_SLA_TEMPERATURE_ENABLED"

.field public static final whitelist NETWORK_SLA_WIFI_SCORE_PARAMS:Ljava/lang/String; = "NETWORK_SLA_WIFI_SCORE_PARAMS"

.field public static final whitelist NETWORK_SPECIAL_REDIRECT_URL:Ljava/lang/String; = "NETWORK_SPECIAL_REDIRECT_URL"

.field public static final whitelist NETWORK_SPEED_RTT_PARAMS:Ljava/lang/String; = "NETWORK_SPEED_RTT_PARAMS"

.field public static final whitelist NETWORK_TCP_TS_ERROR_THRESHOLD:Ljava/lang/String; = "NETWORK_TCP_TS_ERROR_THRESHOLD"

.field public static final whitelist NETWORK_UNEXPECTED_IO_MSG:Ljava/lang/String; = "NETWORK_UNEXPECTED_IO_MSG"

.field public static final whitelist NETWORK_UPLOAD_LOG:Ljava/lang/String; = "NETWORK_UPLOAD_LOG"

.field public static final whitelist NETWORK_VIDEO_APPS:Ljava/lang/String; = "NETWORK_VIDEO_APPS"

.field public static final whitelist NETWORK_WECHAT_LC_DYNAMIC_WHITELIST:Ljava/lang/String; = "NETWORK_WECHAT_LC_DYNAMIC_WHITELIST"

.field public static final whitelist NETWORK_WECHAT_LC_ENABLE:Ljava/lang/String; = "NETWORK_WECHAT_LC_ENABLE"

.field public static final whitelist NETWORK_WECHAT_LC_VALUE:Ljava/lang/String; = "NETWORK_WECHAT_LC_VALUE"

.field public static final whitelist NETWORK_WECHAT_LM_PARAMS:Ljava/lang/String; = "NETWORK_WECHAT_LM_PARAMS"

.field public static final whitelist NULL_DATA_TO_CTS_ROUTER_BLACK_LIST:Ljava/lang/String; = "NULL_DATA_TO_CTS_ROUTER_BLACK_LIST"

.field public static final whitelist NULL_DATA_TO_CTS_ROUTER_BLACK_LIST_ENABLE:Ljava/lang/String; = "NULL_DATA_TO_CTS_ROUTER_BLACK_LIST_ENABLE"

.field public static final whitelist NULL_DATA_TO_CTS_ROUTER_WHITE_LIST:Ljava/lang/String; = "NULL_DATA_TO_CTS_ROUTER_WHITE_LIST"

.field public static final whitelist NULL_DATA_TO_CTS_ROUTER_WHITE_LIST_ENABLE:Ljava/lang/String; = "NULL_DATA_TO_CTS_ROUTER_WHITE_LIST_ENABLE"

.field public static final whitelist NULL_DATA_TO_CTS_SUPPORT:Ljava/lang/String; = "NULL_DATA_TO_CTS_SUPPORT"

.field public static final whitelist OPLUS_5G_160M_SAP_APK_WHITE_LIST:Ljava/lang/String; = "OPLUS_5G_160M_SAP_APK_WHITE_LIST"

.field public static final whitelist OPLUS_5G_160M_SAP_CONFIG:Ljava/lang/String; = "OPLUS_5G_160M_SAP_CONFIG"

.field public static final whitelist OPLUS_5G_160M_SAP_COUNTRY_WHITE_LIST:Ljava/lang/String; = "OPLUS_5G_160M_SAP_COUNTRY_WHITE_LIST"

.field public static final whitelist OPLUS_5G_160M_STATION_FOR_PHONE_CLONE:Ljava/lang/String; = "OPLUS_5G_160M_STATION_FOR_PHONE_CLONE"

.field public static final whitelist OPLUS_ANT_SWAP_DELTA_RSSI:Ljava/lang/String; = "OPLUS_ANT_SWAP_DELTA_RSSI"

.field public static final whitelist OPLUS_ANT_SWAP_EXCLUDE_GAME_MODE:Ljava/lang/String; = "OPLUS_ANT_SWAP_EXCLUDE_GAME_MODE"

.field public static final whitelist OPLUS_ANT_SWAP_IGNORE_GAME_STATE:Ljava/lang/String; = "OPLUS_ANT_SWAP_IGNORE_GAME_STATE"

.field public static final whitelist OPLUS_ANT_SWAP_IGNORE_LANDSCAPE:Ljava/lang/String; = "OPLUS_ANT_SWAP_IGNORE_LANDSCAPE"

.field public static final whitelist OPLUS_ANT_SWAP_PREFER_ANT_IDX:Ljava/lang/String; = "OPLUS_ANT_SWAP_PREFER_ANT_IDX"

.field public static final whitelist OPLUS_ANT_SWAP_USER_FIXED_MODE:Ljava/lang/String; = "OPLUS_ANT_SWAP_USER_FIXED_MODE"

.field public static final whitelist OPLUS_ANT_SWAP_WEAK_RSSI:Ljava/lang/String; = "OPLUS_ANT_SWAP_WEAK_RSSI"

.field public static final whitelist OPLUS_ANT_SWAP_WEAK_SLOT:Ljava/lang/String; = "OPLUS_ANT_SWAP_WEAK_SLOT"

.field public static final whitelist OPLUS_AUTO_CONNECT_ASSOC_REJECT_EXP_BASE:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_ASSOC_REJECT_EXP_BASE"

.field public static final whitelist OPLUS_AUTO_CONNECT_ASSOC_REJECT_MULTIPLE_BASE:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_ASSOC_REJECT_MULTIPLE_BASE"

.field public static final whitelist OPLUS_AUTO_CONNECT_ASSOC_REJECT_RETRY_TIME_MIN:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_ASSOC_REJECT_RETRY_TIME_MIN"

.field public static final whitelist OPLUS_AUTO_CONNECT_ASSOC_REJECT_STEP_COUNT:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_ASSOC_REJECT_STEP_COUNT"

.field public static final whitelist OPLUS_AUTO_CONNECT_AUTH_FAILURE_EXP_BASE:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_AUTH_FAILURE_EXP_BASE"

.field public static final whitelist OPLUS_AUTO_CONNECT_AUTH_FAILURE_MULTIPLE_BASE:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_AUTH_FAILURE_MULTIPLE_BASE"

.field public static final whitelist OPLUS_AUTO_CONNECT_AUTH_FAILURE_RETRY_TIME_MIN:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_AUTH_FAILURE_RETRY_TIME_MIN"

.field public static final whitelist OPLUS_AUTO_CONNECT_AUTH_FAILURE_STEP_COUNT:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_AUTH_FAILURE_STEP_COUNT"

.field public static final whitelist OPLUS_AUTO_CONNECT_CONTINUOUS_DEBOUNCE_DISCONNECT_INTERVAL_TIME:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_CONTINUOUS_DEBOUNCE_DISCONNECT_INTERVAL_TIME"

.field public static final whitelist OPLUS_AUTO_CONNECT_CONTINUOUS_DEBOUNCE_DISCONNECT_STEP_COUNT:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_CONTINUOUS_DEBOUNCE_DISCONNECT_STEP_COUNT"

.field public static final whitelist OPLUS_AUTO_CONNECT_CONTINUOUS_DEBOUNCE_DISCONNECT_STEP_TIME:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_CONTINUOUS_DEBOUNCE_DISCONNECT_STEP_TIME"

.field public static final whitelist OPLUS_AUTO_CONNECT_CONTINUOUS_DISABLED_COUNT_MAX:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_CONTINUOUS_DISABLED_COUNT_MAX"

.field public static final whitelist OPLUS_AUTO_CONNECT_DHCP_FAILURE_EXP_BASE:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_DHCP_FAILURE_EXP_BASE"

.field public static final whitelist OPLUS_AUTO_CONNECT_DHCP_FAILURE_MULTIPLE_BASE:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_DHCP_FAILURE_MULTIPLE_BASE"

.field public static final whitelist OPLUS_AUTO_CONNECT_DHCP_FAILURE_RETRY_TIME_MIN:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_DHCP_FAILURE_RETRY_TIME_MIN"

.field public static final whitelist OPLUS_AUTO_CONNECT_DHCP_FAILURE_STEP_COUNT:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_DHCP_FAILURE_STEP_COUNT"

.field public static final whitelist OPLUS_AUTO_CONNECT_ENABLE_BOUYGUE_AUTOCONNECT:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_ENABLE_BOUYGUE_AUTOCONNECT"

.field public static final whitelist OPLUS_AUTO_CONNECT_ENABLE_OPERATOR_AUTOCONNECT:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_ENABLE_OPERATOR_AUTOCONNECT"

.field public static final whitelist OPLUS_AUTO_CONNECT_ENABLE_SINGTEL_AUTOCONNECT:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_ENABLE_SINGTEL_AUTOCONNECT"

.field public static final whitelist OPLUS_AUTO_CONNECT_ENABLE_SWISSCOM_AUTOCONNECT:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_ENABLE_SWISSCOM_AUTOCONNECT"

.field public static final whitelist OPLUS_AUTO_CONNECT_KEEP_DISABLED_TIME_MAX:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_KEEP_DISABLED_TIME_MAX"

.field public static final whitelist OPLUS_AUTO_CONNECT_NO_INTERNET_STEP_COUNT:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_NO_INTERNET_STEP_COUNT"

.field public static final whitelist OPLUS_AUTO_CONNECT_NO_INTERNET_STEP_TIME:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_NO_INTERNET_STEP_TIME"

.field public static final whitelist OPLUS_AUTO_CONNECT_OPERATOR_AP:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_OPERATOR_AP"

.field public static final whitelist OPLUS_AUTO_CONNECT_RSSI_BAD:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_RSSI_BAD"

.field public static final whitelist OPLUS_AUTO_CONNECT_RSSI_GOOD:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_RSSI_GOOD"

.field public static final whitelist OPLUS_AUTO_CONNECT_RSSI_LOW:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_RSSI_LOW"

.field public static final whitelist OPLUS_AUTO_CONNECT_RSSI_STEP:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_RSSI_STEP"

.field public static final whitelist OPLUS_AUTO_CONNECT_WRONG_KEY_EXP_BASE:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_WRONG_KEY_EXP_BASE"

.field public static final whitelist OPLUS_AUTO_CONNECT_WRONG_KEY_MULTIPLE_BASE:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_WRONG_KEY_MULTIPLE_BASE"

.field public static final whitelist OPLUS_AUTO_CONNECT_WRONG_KEY_RETRY_TIME_MIN:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_WRONG_KEY_RETRY_TIME_MIN"

.field public static final whitelist OPLUS_AUTO_CONNECT_WRONG_KEY_STEP_COUNT:Ljava/lang/String; = "OPLUS_AUTO_CONNECT_WRONG_KEY_STEP_COUNT"

.field public static final whitelist OPLUS_BASIC_EXCEPTION_ENABLE:Ljava/lang/String; = "OPLUS_BASIC_EXCEPTION_ENABLE"

.field public static final whitelist OPLUS_BASIC_EXCEPTION_LOG_REASON:Ljava/lang/String; = "OPLUS_BASIC_EXCEPTION_LOG_REASON"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_ASIA_CE:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_ASIA_CE"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_EUROPE_CE:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_EUROPE_CE"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_FCC:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_FCC"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_INDE_CERT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_INDE_CERT"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_BADN_LIMIT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_BADN_LIMIT"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND1_COUNTEY_LISIT_V34:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND1_COUNTEY_LISIT_V34"

.field public static final blacklist OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND1_COUNTEY_LISIT_V35:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND1_COUNTEY_LISIT_V35"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND4_COUNTEY_LISIT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND4_COUNTEY_LISIT"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND4_COUNTEY_LISIT_V30:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND4_COUNTEY_LISIT_V30"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND4_COUNTEY_LISIT_V32:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND4_COUNTEY_LISIT_V32"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND4_COUNTEY_LISIT_V33:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND4_COUNTEY_LISIT_V33"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND4_COUNTEY_LISIT_V34:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND4_COUNTEY_LISIT_V34"

.field public static final blacklist OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND4_COUNTEY_LISIT_V35:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_BAND4_COUNTEY_LISIT_V35"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_BADN_LIMIT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_BADN_LIMIT"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_COUNTEY_LISIT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_COUNTEY_LISIT"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_COUNTEY_LISIT_V30:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_COUNTEY_LISIT_V30"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_COUNTEY_LISIT_V32:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_COUNTEY_LISIT_V32"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_COUNTEY_LISIT_V33:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_COUNTEY_LISIT_V33"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_COUNTEY_LISIT_V34:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_COUNTEY_LISIT_V34"

.field public static final blacklist OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_COUNTEY_LISIT_V35:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_P2P_ONLY2G_COUNTEY_LISIT_V35"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SENSOR_PROJECT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SENSOR_PROJECT"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND1_COUNTEY_LISIT_V34:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND1_COUNTEY_LISIT_V34"

.field public static final blacklist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND1_COUNTEY_LISIT_V35:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND1_COUNTEY_LISIT_V35"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND4_COUNTEY_LISIT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND4_COUNTEY_LISIT"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND4_COUNTEY_LISIT_V30:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND4_COUNTEY_LISIT_V30"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND4_COUNTEY_LISIT_V32:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND4_COUNTEY_LISIT_V32"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND4_COUNTEY_LISIT_V33:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND4_COUNTEY_LISIT_V33"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND4_COUNTEY_LISIT_V34:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND4_COUNTEY_LISIT_V34"

.field public static final blacklist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND4_COUNTEY_LISIT_V35:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_BAND4_COUNTEY_LISIT_V35"

.field public static final blacklist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_DEFAULT_5GBAND_SUPPORTED_COUNTEY_LISIT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_DEFAULT_5GBAND_SUPPORTED_COUNTEY_LISIT"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_BADN_LIMIT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_BADN_LIMIT"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_COUNTEY_LISIT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_COUNTEY_LISIT"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_COUNTEY_LISIT_V30:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_COUNTEY_LISIT_V30"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_COUNTEY_LISIT_V32:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_COUNTEY_LISIT_V32"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_COUNTEY_LISIT_V33:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_COUNTEY_LISIT_V33"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_COUNTEY_LISIT_V34:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_COUNTEY_LISIT_V34"

.field public static final blacklist OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_COUNTEY_LISIT_V35:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_SOFTAP_ONLY2G_COUNTEY_LISIT_V35"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_TELEPHONE_PROJECT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_TELEPHONE_PROJECT"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_WCN_RUS:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_WCN_RUS"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_WCN_RUS_MTK:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_WCN_RUS_MTK"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_WCN_RUS_QCOM:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_WCN_RUS_QCOM"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_WCN_SAU:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_WCN_SAU"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_WCN_SAU_BDF:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_WCN_SAU_BDF"

.field public static final whitelist OPLUS_BASIC_WIFI_CUSTOM_WCN_SAU_FW:Ljava/lang/String; = "OPLUS_BASIC_WIFI_CUSTOM_WCN_SAU_FW"

.field public static final whitelist OPLUS_BASIC_WIFI_FRAMEWORK_CHECK_WIFI_SWITCH:Ljava/lang/String; = "OPLUS_BASIC_WIFI_FRAMEWORK_CHECK_WIFI_SWITCH"

.field public static final whitelist OPLUS_BASIC_WIFI_SWITCH_LOG_COLLECT_ENABLED:Ljava/lang/String; = "OPLUS_BASIC_WIFI_SWITCH_LOG_COLLECT_ENABLED"

.field public static final whitelist OPLUS_BASIC_WIFI_SWITCH_LOG_LIMIT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_SWITCH_LOG_LIMIT"

.field public static final whitelist OPLUS_BASIC_WIFI_SWITCH_LOG_STAGE:Ljava/lang/String; = "OPLUS_BASIC_WIFI_SWITCH_LOG_STAGE"

.field public static final whitelist OPLUS_BASIC_WIFI_SWITCH_RETRY_LIMIT:Ljava/lang/String; = "OPLUS_BASIC_WIFI_SWITCH_RETRY_LIMIT"

.field public static final whitelist OPLUS_CAPTIVE_DIRECT_TO_BROWSER:Ljava/lang/String; = "OPLUS_CAPTIVE_DIRECT_TO_BROWSER"

.field public static final whitelist OPLUS_CAPTIVE_PORTAL_PACKAGE_NAME:Ljava/lang/String; = "OPLUS_CAPTIVE_PORTAL_PACKAGE_NAME"

.field public static final whitelist OPLUS_CAPTIVE_PORTAL_SSID:Ljava/lang/String; = "OPLUS_CAPTIVE_PORTAL_SSID"

.field public static final whitelist OPLUS_DATA_LIMIT_CONFIG:Ljava/lang/String; = "OPLUS_DATA_LIMIT_CONFIG"

.field public static final whitelist OPLUS_DATA_STALL_LOG_DURATION:Ljava/lang/String; = "OPLUS_DATA_STALL_LOG_DURATION"

.field public static final whitelist OPLUS_DHCP_HOST_NAME:Ljava/lang/String; = "OPLUS_DHCP_HOST_NAME"

.field public static final whitelist OPLUS_DHCP_IP_RECOVERY_ENABLED:Ljava/lang/String; = "OPLUS_DHCP_IP_RECOVERY_ENABLED"

.field public static final whitelist OPLUS_DHCP_OPTIONAL_ON:Ljava/lang/String; = "OPLUS_DHCP_OPTIONAL_ON"

.field public static final whitelist OPLUS_DHCP_PARAMETER_LIST:Ljava/lang/String; = "OPLUS_DHCP_PARAMETER_LIST"

.field public static final whitelist OPLUS_DHCP_VENDOR_CLASS_ID:Ljava/lang/String; = "OPLUS_DHCP_VENDOR_CLASS_ID"

.field public static final whitelist OPLUS_DUAL_STA_CONNECT_CAPTIVE_AP:Ljava/lang/String; = "OPLUS_DUAL_STA_CONNECT_CAPTIVE_AP"

.field public static final whitelist OPLUS_DUAL_STA_DISABLED_MCC:Ljava/lang/String; = "OPLUS_DUAL_STA_DISABLED_MCC"

.field public static final whitelist OPLUS_DUAL_STA_DISABLE_DURING:Ljava/lang/String; = "OPLUS_DUAL_STA_DISABLE_DURING"

.field public static final whitelist OPLUS_DUAL_STA_DISCONNECT_FREQ_THROTTLED:Ljava/lang/String; = "OPLUS_DUAL_STA_DISCONNECT_FREQ_THROTTLED"

.field public static final whitelist OPLUS_DUAL_STA_DUP_NOTIFICATION_PERIOD:Ljava/lang/String; = "OPLUS_DUAL_STA_DUP_NOTIFICATION_PERIOD"

.field public static final whitelist OPLUS_DUAL_STA_IOT_ROUTER:Ljava/lang/String; = "OPLUS_DUAL_STA_IOT_ROUTER"

.field public static final whitelist OPLUS_DUAL_STA_LOW_RSSI:Ljava/lang/String; = "OPLUS_DUAL_STA_LOW_RSSI"

.field public static final whitelist OPLUS_DUAL_STA_MAX_SPEED:Ljava/lang/String; = "OPLUS_DUAL_STA_MAX_SPEED"

.field public static final whitelist OPLUS_DUAL_STA_NET_GOOD:Ljava/lang/String; = "OPLUS_DUAL_STA_NET_GOOD"

.field public static final whitelist OPLUS_DUAL_STA_NOTIFICATION_SHOW_DELAY:Ljava/lang/String; = "OPLUS_DUAL_STA_NOTIFICATION_SHOW_DELAY"

.field public static final whitelist OPLUS_DUAL_STA_NOTIFICATION_SHOW_DELAY_MS:Ljava/lang/String; = "OPLUS_DUAL_STA_NOTIFICATION_SHOW_DELAY_MS"

.field public static final whitelist OPLUS_DUAL_STA_RESTRICT_DUP_NOTIFICATION:Ljava/lang/String; = "OPLUS_DUAL_STA_RESTRICT_DUP_NOTIFICATION"

.field public static final whitelist OPLUS_DUAL_STA_TRIGGER_DISABLE_COUNT:Ljava/lang/String; = "OPLUS_DUAL_STA_TRIGGER_DISABLE_COUNT"

.field public static final whitelist OPLUS_FEW_AP_NUM:Ljava/lang/String; = "OPLUS_FEW_AP_NUM"

.field public static final whitelist OPLUS_FORCE_LIMIT_APP:Ljava/lang/String; = "OPLUS_FORCE_LIMIT_APP"

.field public static final whitelist OPLUS_HIGH_LIMIT_ACTIVITY:Ljava/lang/String; = "OPLUS_HIGH_LIMIT_ACTIVITY"

.field public static final whitelist OPLUS_IE_HYBRID_BLACKLIST:Ljava/lang/String; = "OPLUS_IE_HYBRID_BLACKLIST"

.field public static final whitelist OPLUS_IGNORE_LIMIT_APP:Ljava/lang/String; = "OPLUS_IGNORE_LIMIT_APP"

.field public static final whitelist OPLUS_IOTCONNECT_ENABLE:Ljava/lang/String; = "OPLUS_IOTCONNECT_ENABLE"

.field public static final whitelist OPLUS_IOTCONNECT_LOG_ENABLE:Ljava/lang/String; = "OPLUS_IOTCONNECT_LOG_ENABLE"

.field public static final whitelist OPLUS_IOTCONNECT_LOG_RETURN_THRESHOLD:Ljava/lang/String; = "OPLUS_IOTCONNECT_LOG_RETURN_THRESHOLD"

.field public static final whitelist OPLUS_IOTCONNECT_PACKAGE_CONTROL_THRESHOLD:Ljava/lang/String; = "OPLUS_IOTCONNECT_PACKAGE_CONTROL_THRESHOLD"

.field public static final whitelist OPLUS_IOTCONNECT_WHITE_LIST:Ljava/lang/String; = "OPLUS_IOTCONNECT_WHITE_LIST"

.field public static final whitelist OPLUS_IPV6OPTIMIZE_INTER_DETEC_TIME:Ljava/lang/String; = "OPLUS_IPV6OPTIMIZE_INTER_DETEC_TIME"

.field public static final whitelist OPLUS_IPV6OPTIMIZE_INTFRULE_ENABLE:Ljava/lang/String; = "OPLUS_IPV6OPTIMIZE_INTFRULE_ENABLE"

.field public static final whitelist OPLUS_IPV6OPTIMIZE_IPV6_DOMAIN_CHN:Ljava/lang/String; = "OPLUS_IPV6OPTIMIZE_IPV6_DOMAIN_CHN"

.field public static final whitelist OPLUS_IPV6OPTIMIZE_IPV6_DOMAIN_EXT:Ljava/lang/String; = "OPLUS_IPV6OPTIMIZE_IPV6_DOMAIN_EXT"

.field public static final whitelist OPLUS_IPV6OPTIMIZE_UIDRULE_ENABLE:Ljava/lang/String; = "OPLUS_IPV6OPTIMIZE_UIDRULE_ENABLE"

.field public static final whitelist OPLUS_IPV6OPTIMIZE_UID_RTO_TIME:Ljava/lang/String; = "OPLUS_IPV6OPTIMIZE_UID_RTO_TIME"

.field public static final whitelist OPLUS_LIMIT_SPEED_FEATURE:Ljava/lang/String; = "OPLUS_SPEED_LIMIT_FEATURE"

.field public static final whitelist OPLUS_LIMIT_SPEED_MONITOR_RSSI_COUNTOUR:Ljava/lang/String; = "OPLUS_LIMIT_SPEED_MONITOR_RSSI_COUNTOUR"

.field public static final whitelist OPLUS_LIMIT_SPEED_MONITOR_RSSI_THRESHOLD:Ljava/lang/String; = "OPLUS_LIMIT_SPEED_MONITOR_RSSI_THRESHOLD"

.field public static final whitelist OPLUS_LIMIT_SPEED_STATISTIC_ENABLE:Ljava/lang/String; = "OPLUS_LIMIT_SPEED_STATISTIC_ENABLE"

.field public static final whitelist OPLUS_LIMIT_SPEED_WHITE_APPS:Ljava/lang/String; = "NETWORK_LIMIT_SPEED_WHITE_APPS"

.field public static final whitelist OPLUS_LOWER_RSSI_POWER_SAVE_BEGIN_HOUR:Ljava/lang/String; = "OPLUS_LOWER_RSSI_POWER_SAVE_BEGIN_HOUR"

.field public static final whitelist OPLUS_LOWER_RSSI_POWER_SAVE_BLACK_APPS:Ljava/lang/String; = "OPLUS_LOWER_RSSI_POWER_SAVE_BLACK_APPS"

.field public static final whitelist OPLUS_LOWER_RSSI_POWER_SAVE_END_HOUR:Ljava/lang/String; = "OPLUS_LOWER_RSSI_POWER_SAVE_END_HOUR"

.field public static final whitelist OPLUS_LOWER_RSSI_POWER_SAVE_FEATURE_ENABLED:Ljava/lang/String; = "OPLUS_LOWER_RSSI_POWER_SAVE_FEATURE_ENABLED"

.field public static final whitelist OPLUS_LOWER_RSSI_POWER_SAVE_LOW_RSSI:Ljava/lang/String; = "OPLUS_LOWER_RSSI_POWER_SAVE_LOW_RSSI"

.field public static final whitelist OPLUS_LOW_LIMIT_ACTIVITY:Ljava/lang/String; = "OPLUS_LOW_LIMIT_ACTIVITY"

.field public static final whitelist OPLUS_MEDIUM_LIMIT_ACTIVITY:Ljava/lang/String; = "OPLUS_MEDIUM_LIMIT_ACTIVITY"

.field public static final whitelist OPLUS_MTK_WIFI_LOW_LATENCY_PARAMS:Ljava/lang/String; = "OPLUS_MTK_WIFI_LOW_LATENCY_PARAMS"

.field public static final whitelist OPLUS_MTK_WIFI_LOW_LATENCY_PERFMODE_PARAMS:Ljava/lang/String; = "OPLUS_MTK_WIFI_LOW_LATENCY_PERFMODE_PARAMS"

.field public static final whitelist OPLUS_MUST_LIMIT_APP:Ljava/lang/String; = "OPLUS_MUST_LIMIT_APP"

.field public static final whitelist OPLUS_NETWORKMONITOR_STATISTIC_CELLULAR:Ljava/lang/String; = "OPLUS_NETWORKMONITOR_STATISTIC_CELLULAR"

.field public static final whitelist OPLUS_NETWORKMONITOR_STATISTIC_WIFI:Ljava/lang/String; = "OPLUS_NETWORKMONITOR_STATISTIC_WIFI"

.field public static final whitelist OPLUS_NETWORK_DUP_DHCP_CHECK:Ljava/lang/String; = "OPLUS_NETWORK_DUP_DHCP_CHECK"

.field public static final whitelist OPLUS_NETWORK_STACK_CHECK_SERVER:Ljava/lang/String; = "OPLUS_NETWORK_STACK_CHECK_SERVER"

.field public static final whitelist OPLUS_NETWORK_STACK_CHECK_SERVER_EXP:Ljava/lang/String; = "OPLUS_NETWORK_STACK_CHECK_SERVER_EXP"

.field public static final whitelist OPLUS_NETWORK_STACK_PARAMS:Ljava/lang/String; = "OPLUS_NETWORK_STACK_PARAMS"

.field public static final whitelist OPLUS_NUDFAILED_RECOVERY_COLDTIME_REASSOC:Ljava/lang/String; = "OPLUS_NUDFAILED_RECOVERY_COLDTIME_REASSOC"

.field public static final whitelist OPLUS_NUDFAILED_RECOVERY_PERM_NEIGH_ENABLE:Ljava/lang/String; = "OPLUS_NUDFAILED_RECOVERY_PERM_NEIGH_ENABLE"

.field public static final whitelist OPLUS_NUDFAILED_RECOVERY_REASSOC_ENABLE:Ljava/lang/String; = "OPLUS_NUDFAILED_RECOVERY_REASSOC_ENABLE"

.field public static final whitelist OPLUS_P2P_CAST_PING_INTERVAL_RUS:Ljava/lang/String; = "OPLUS_P2P_CAST_PING_INTERVAL_RUS"

.field public static final whitelist OPLUS_P2P_CAST_PING_RUS:Ljava/lang/String; = "OPLUS_P2P_CAST_PING_RUS"

.field public static final whitelist OPLUS_PORTAL_DETECT:Ljava/lang/String; = "OPLUS_PORTAL_DETECT"

.field public static final whitelist OPLUS_PRIVATE_DNS_SHOW_DIALOG:Ljava/lang/String; = "OPLUS_PRIVATE_DNS_SHOW_DIALOG"

.field public static final whitelist OPLUS_REDETECT_NET_AFTER_PORTAL_INTERVAL_MS:Ljava/lang/String; = "OPLUS_REDETECT_NET_AFTER_PORTAL_INTERVAL_MS"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_BAD_DELAY_MS:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_BAD_DELAY_MS"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_CCALEVEL_THRESHOLD:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_CCALEVEL_THRESHOLD"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_ENABLE:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_ENABLE"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_GAME_BAD_DALAY_MS:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_GAME_BAD_DALAY_MS"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_GOOD_DELAY_MS:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_GOOD_DELAY_MS"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_REGION:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_REGION"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_REGION_EXP:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_REGION_EXP"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_RTT_LEVEL:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_RTT_LEVEL"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_RTT_THRESHOLD:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_RTT_THRESHOLD"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_STATISTICS_ENABLE:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_STATISTICS_ENABLE"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_THROUGHPUT_INCREMENT:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_THROUGHPUT_INCREMENT"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_THROUGHPUT_THRESHOLD:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_THROUGHPUT_THRESHOLD"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_TXPER_BAD_THRESHOLD:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_TXPER_BAD_THRESHOLD"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_TXPER_GAME_THRESHOLD:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_TXPER_GAME_THRESHOLD"

.field public static final whitelist OPLUS_SEAMLESS_NETWORK_SWITCH_TXPER_GOOD_THRESHOLD:Ljava/lang/String; = "OPLUS_SEAMLESS_NETWORK_SWITCH_TXPER_GOOD_THRESHOLD"

.field public static final whitelist OPLUS_SLA_SET_DEBUG:Ljava/lang/String; = "OPLUS_SLA_SET_DEBUG"

.field public static final whitelist OPLUS_SMART_SCAN_DCHECK_RSSI_THRED:Ljava/lang/String; = "OPLUS_SMART_SCAN_DCHECK_RSSI_THRED"

.field public static final whitelist OPLUS_SMART_SCAN_DCHECK_SIMILAR_THRED:Ljava/lang/String; = "OPLUS_SMART_SCAN_DCHECK_SIMILAR_THRED"

.field public static final whitelist OPLUS_SMART_SCAN_RUNNING_ENABLE:Ljava/lang/String; = "OPLUS_SMART_SCAN_RUNNING_ENABLE"

.field public static final whitelist OPLUS_SMART_SCAN_STILL_ENABLE:Ljava/lang/String; = "OPLUS_SMART_SCAN_STILL_ENABLE"

.field public static final whitelist OPLUS_SNIFFER_CAPTURE_WITH_UDP:Ljava/lang/String; = "OPLUS_SNIFFER_CAPTURE_WITH_UDP"

.field public static final whitelist OPLUS_TX_LIMIT_ACTIVITY:Ljava/lang/String; = "OPLUS_TX_LIMIT_ACTIVITY"

.field public static final whitelist OPLUS_WFD_COMPATIBILITY_GC_DEVICE_LISIT:Ljava/lang/String; = "OPLUS_WFD_COMPATIBILITY_GC_DEVICE_LISIT"

.field public static final whitelist OPLUS_WFD_COMPATIBILITY_GC_OUI_LISIT:Ljava/lang/String; = "OPLUS_WFD_COMPATIBILITY_GC_OUI_LISIT"

.field public static final whitelist OPLUS_WIFI_ANT_SWAP:Ljava/lang/String; = "OPLUS_WIFI_ANT_SWAP"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_AUTO_SWITCH_DATA_COUNT:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_AUTO_SWITCH_DATA_COUNT"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_AUTO_SWITCH_DATA_DISABLE_TIME:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_AUTO_SWITCH_DATA_DISABLE_TIME"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_AUTO_SWITCH_DATA_TIME:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_AUTO_SWITCH_DATA_TIME"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_BACKUP_HOTSOPT_PREFIX:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_BACKUP_HOTSOPT_PREFIX"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_BAD_LINK_LOSS_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_BAD_LINK_LOSS_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_BAD_LINK_SAMPL_INTERVAL:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_BAD_LINK_SAMPL_INTERVAL"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_BAD_LINK_SCORE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_BAD_LINK_SCORE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_BAD_RSSI_24:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_BAD_RSSI_24"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_BAD_RSSI_5:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_BAD_RSSI_5"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_BAD_RSSI_SCORE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_BAD_RSSI_SCORE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_BAD_TCP_SCORE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_BAD_TCP_SCORE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_CONTROL_APP_LIST:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_CONTROL_APP_LIST"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_CONTROL_METERED_AP:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_CONTROL_METERED_AP"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_DELAY_SENSITIVE_APP:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_DELAY_SENSITIVE_APP"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_DELTA_RX_TRAFFIC_BYTES_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_DELTA_RX_TRAFFIC_BYTES_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_DETECT_CONNECT:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_DETECT_CONNECT"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_DETECT_INTER_RESULT_CHECK:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_DETECT_INTER_RESULT_CHECK"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_DIFF_CONNRATE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_DIFF_CONNRATE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_DIFF_SCORE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_DIFF_SCORE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_ENABLE_CHANGE_LEVEL:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_ENABLE_CHANGE_LEVEL"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_FEATURE:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_FEATURE"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_FOUR_VERSION_ENABLE:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_FOUR_VERSION_ENABLE"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_GOOD_LINK_COUNT:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_GOOD_LINK_COUNT"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_GOOD_LINK_LOSS_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_GOOD_LINK_LOSS_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_GOOD_LINK_SAMPL_INTERVAL:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_GOOD_LINK_SAMPL_INTERVAL"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_GOOD_LINK_SCORE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_GOOD_LINK_SCORE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_GOOD_RSSI_24:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_GOOD_RSSI_24"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_GOOD_RSSI_5:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_GOOD_RSSI_5"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_GOOD_RSSI_SCORE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_GOOD_RSSI_SCORE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_GOOD_TCP_SCORE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_GOOD_TCP_SCORE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_HISTORY_RECORD_TRIGGER_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_HISTORY_RECORD_TRIGGER_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_HISTORY_RECORD_VALID_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_HISTORY_RECORD_VALID_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_INVALID_TRAFFIC_SAMPL_INTERVAL:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_INVALID_TRAFFIC_SAMPL_INTERVAL"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_LOW_LINK_LOSS_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_LOW_LINK_LOSS_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_LOW_LINK_SCORE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_LOW_LINK_SCORE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_LOW_RSSI_24:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_LOW_RSSI_24"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_LOW_RSSI_5:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_LOW_RSSI_5"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_LOW_RSSI_SCORE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_LOW_RSSI_SCORE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_LOW_TCP_SCORE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_LOW_TCP_SCORE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_LOW_TRAFFICE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_LOW_TRAFFICE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_MANUAL_DIALOG_TIME:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_MANUAL_DIALOG_TIME"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_MIN_TX_PKT_DETECT_NET:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_MIN_TX_PKT_DETECT_NET"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_NETINVALID_COUNT:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_NETINVALID_COUNT"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_NETSERVER:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_NETSERVER"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_NETWORK_WLAN_CELL_SPEED:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_NETWORK_WLAN_CELL_SPEED"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_NO_LINK_SCORE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_NO_LINK_SCORE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_PORTAL_AUTO_DETECT_COUNT:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_PORTAL_AUTO_DETECT_COUNT"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_PORTAL_MANUL_DETECT_COUNT:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_PORTAL_MANUL_DETECT_COUNT"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_RIGHT_ROTATION:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_RIGHT_ROTATION"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_ROAM_DETECT:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_ROAM_DETECT"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_RSSI_TO_WLAN_24:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_RSSI_TO_WLAN_24"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_RSSI_TO_WLAN_5:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_RSSI_TO_WLAN_5"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_RSSI_TO_WLAN_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_RSSI_TO_WLAN_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_STATIC_WIFI_PROBE_FAST_TIME_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_STATIC_WIFI_PROBE_FAST_TIME_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_TCPANDDNS_SCORE_SIGNAL:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_TCPANDDNS_SCORE_SIGNAL"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_TCPANDDNS_SCORE_TIME_DIFF:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_TCPANDDNS_SCORE_TIME_DIFF"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_TCPANDDNS_SCORE_TIME_LOW_SIGNAL:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_TCPANDDNS_SCORE_TIME_LOW_SIGNAL"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_TCPANDDNS_SCORE_TIME_STRONG_SIGNAL:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_TCPANDDNS_SCORE_TIME_STRONG_SIGNAL"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_TERRIBLE_RSSI_SCORE_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_TERRIBLE_RSSI_SCORE_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_TEST:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_TEST"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_USING_DEFAULT_VALIDATION_RESULT:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_USING_DEFAULT_VALIDATION_RESULT"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_USING_NETWORK_MONITOR:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_USING_NETWORK_MONITOR"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_VALID_LINK_LOSS_NUM:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_VALID_LINK_LOSS_NUM"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_WLAN_BAD_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_WLAN_BAD_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_WLAN_INVALID_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_WLAN_INVALID_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_WLAN_POLL_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_WLAN_POLL_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_WLAN_SCORE_GOOD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_WLAN_SCORE_GOOD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_WLAN_SCORE_POOR:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_WLAN_SCORE_POOR"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_WLAN_TRIGGER_DATA_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_WLAN_TRIGGER_DATA_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_ASSISTANT_WLAN_TRIGGER_WLAN_THRESHOLD:Ljava/lang/String; = "OPLUS_WIFI_ASSISTANT_WLAN_TRIGGER_WLAN_THRESHOLD"

.field public static final whitelist OPLUS_WIFI_AUTO_CONNECT_PORTAL_DETECT_COUNT:Ljava/lang/String; = "OPLUS_WIFI_AUTO_CONNECT_PORTAL_DETECT_COUNT"

.field public static final whitelist OPLUS_WIFI_AUTO_CONNECT_PORTAL_FEATURE:Ljava/lang/String; = "OPLUS_WIFI_AUTO_CONNECT_PORTAL_FEATURE"

.field public static final whitelist OPLUS_WIFI_AUTO_CONNECT_PORTAL_STATIC:Ljava/lang/String; = "OPLUS_WIFI_AUTO_CONNECT_PORTAL_STATIC"

.field public static final whitelist OPLUS_WIFI_AUTO_CONNECT_STATISTICS_SWITCH:Ljava/lang/String; = "OPLUS_WIFI_AUTO_CONNECT_STATISTICS_SWITCH"

.field public static final whitelist OPLUS_WIFI_BAR_BAD_CNT:Ljava/lang/String; = "OPLUS_WIFI_BAR_BAD_CNT"

.field public static final whitelist OPLUS_WIFI_BAR_ENABLE:Ljava/lang/String; = "OPLUS_WIFI_BAR_ENABLE"

.field public static final whitelist OPLUS_WIFI_CAP_CENTER:Ljava/lang/String; = "OPLUS_WIFI_CAP_CENTER"

.field public static final whitelist OPLUS_WIFI_CLEAR_CONFIG_BSSID_APP:Ljava/lang/String; = "OPLUS_WIFI_CLEAR_CONFIG_BSSID_APP"

.field public static final whitelist OPLUS_WIFI_HW_SIGNAL_LEVEL2_ADVANCE:Ljava/lang/String; = "OPLUS_WIFI_HW_SIGNAL_LEVEL2_ADVANCE"

.field public static final whitelist OPLUS_WIFI_HW_SIGNAL_LEVEL3_ADVANCE:Ljava/lang/String; = "OPLUS_WIFI_HW_SIGNAL_LEVEL3_ADVANCE"

.field public static final whitelist OPLUS_WIFI_LOW_LATENCY_ENABLED:Ljava/lang/String; = "OPLUS_WIFI_LOW_LATENCY_ENABLED"

.field public static final whitelist OPLUS_WIFI_LOW_LATENCY_PERF_MODE_ENABLED:Ljava/lang/String; = "OPLUS_WIFI_LOW_LATENCY_PERF_MODE_ENABLED"

.field public static final whitelist OPLUS_WIFI_NETCONFIG_IPV6_SERVER:Ljava/lang/String; = "OPLUS_WIFI_NETCONFIG_IPV6_SERVER"

.field public static final whitelist OPLUS_WIFI_P2P_OPTIMIZATION_ENABLED:Ljava/lang/String; = "OPLUS_WIFI_P2P_OPTIMIZATION_ENABLED"

.field public static final whitelist OPLUS_WIFI_PASSPOINT_ENABLE:Ljava/lang/String; = "OPLUS_WIFI_PASSPOINT_ENABLE"

.field public static final whitelist OPLUS_WIFI_PKAT_APPS:Ljava/lang/String; = "OPLUS_WIFI_PKAT_APPS"

.field public static final whitelist OPLUS_WIFI_PKAT_APPS_EXP:Ljava/lang/String; = "OPLUS_WIFI_PKAT_APPS_EXP"

.field public static final whitelist OPLUS_WIFI_PKAT_ENABLE:Ljava/lang/String; = "OPLUS_WIFI_PKAT_ENABLE"

.field public static final whitelist OPLUS_WIFI_QPOWER_APPS:Ljava/lang/String; = "OPLUS_WIFI_QPOWER_APPS"

.field public static final whitelist OPLUS_WIFI_QPOWER_APPS_EXP:Ljava/lang/String; = "OPLUS_WIFI_QPOWER_APPS_EXP"

.field public static final whitelist OPLUS_WIFI_QPOWER_ENABLE:Ljava/lang/String; = "OPLUS_WIFI_QPOWER_ENABLE"

.field public static final whitelist OPLUS_WIFI_RESTRICT_FGSCAN_SCAN_SCHEDULED_APPS:Ljava/lang/String; = "OPLUS_WIFI_RESTRICT_FGSCAN_SCAN_SCHEDULED_APPS"

.field public static final whitelist OPLUS_WIFI_ROM_UPDATE_CHANGED_ACTION:Ljava/lang/String; = "oppo.intent.action.WIFI_ROM_UPDATE_CHANGED"

.field public static final whitelist OPLUS_WIFI_SOFTAP_NSS1X1_ENABLE:Ljava/lang/String; = "OPLUS_WIFI_SOFTAP_NSS1X1_ENABLE"

.field public static final whitelist OPPO_BASIC_WIFI_P2P_OSHARE_LOG_COLLECT_ENBALE:Ljava/lang/String; = "OPPO_BASIC_WIFI_P2P_OSHARE_LOG_COLLECT_ENBALE"

.field public static final whitelist OPPO_BASIC_WIFI_P2P_WFD_LOG_COLLECT_ENBALE:Ljava/lang/String; = "OPPO_BASIC_WIFI_P2P_WFD_LOG_COLLECT_ENBALE"

.field public static final whitelist OWM_DETAIL_DEBUG_ENABLE:Ljava/lang/String; = "OWM_DETAIL_DEBUG_ENABLE"

.field public static final whitelist OWM_ENVIR_GOOD_THRED:Ljava/lang/String; = "OWM_ENVIR_GOOD_THRED"

.field public static final whitelist OWM_GAME_RTT_BAD_EVT_SAVE_DURING_THRED_SEC:Ljava/lang/String; = "OWM_GAME_RTT_BAD_EVT_SAVE_DURING_THRED_SEC"

.field public static final whitelist OWM_GAME_RTT_BAD_EVT_SAVE_INTVAL_THRED_SEC:Ljava/lang/String; = "OWM_GAME_RTT_BAD_EVT_SAVE_INTVAL_THRED_SEC"

.field public static final whitelist OWM_GOOD_RSSI_THRED:Ljava/lang/String; = "OWM_GOOD_RSSI_THRED"

.field public static final whitelist OWM_NET_HEALTH_COLLECT_INTVAL_THRED_SEC:Ljava/lang/String; = "OWM_NET_HEALTH_COLLECT_INTVAL_THRED_SEC"

.field public static final whitelist OWM_NET_SLOW_EVT_SAVE_DURING_THRED_SEC:Ljava/lang/String; = "OWM_NET_SLOW_EVT_SAVE_DURING_THRED_SEC"

.field public static final whitelist OWM_NET_SLOW_EVT_SAVE_INTVAL_THRED_SEC:Ljava/lang/String; = "OWM_NET_SLOW_EVT_SAVE_INTVAL_THRED_SEC"

.field public static final whitelist OWM_PER_GOOD_THRED:Ljava/lang/String; = "OWM_PER_GOOD_THRED"

.field public static final whitelist PASSIVE_RECOVERY_ENABLED:Ljava/lang/String; = "PASSIVE_RECOVERY_ENABLED"

.field public static final whitelist PORTAL_RESPONSE_CODE_HIGH:Ljava/lang/String; = "PORTAL_RESPONSE_CODE_HIGH"

.field public static final whitelist PORTAL_RESPONSE_CODE_LOW:Ljava/lang/String; = "PORTAL_RESPONSE_CODE_LOW"

.field public static final whitelist POWER_APP_DETECT_AND_KILL:Ljava/lang/String; = "POWER_APP_DETECT_AND_KILL"

.field public static final whitelist POWER_APP_SCAN_COUNT:Ljava/lang/String; = "POWER_APP_SCAN_COUNT"

.field public static final whitelist POWER_APP_SCAN_FREQ:Ljava/lang/String; = "POWER_APP_SCAN_FREQ"

.field public static final whitelist RECOVERY_TIME_MIN_GAP:Ljava/lang/String; = "RECOVERY_TIME_MIN_GAP"

.field public static final whitelist REMOVE_NETWORK_APP_BLACKLIST:Ljava/lang/String; = "REMOVE_NETWORK_APP_BLACKLIST"

.field public static final whitelist ROUTERBOOST_CHECK_GAME_BOOST_DELAY_MS:Ljava/lang/String; = "ROUTERBOOST_CHECK_GAME_BOOST_DELAY_MS"

.field public static final whitelist ROUTERBOOST_CHECK_GAME_ENABLE_DUALSTA_MS:Ljava/lang/String; = "ROUTERBOOST_CHECK_GAME_ENABLE_DUALSTA_MS"

.field public static final whitelist ROUTERBOOST_DATAPRIOR_ENABLE:Ljava/lang/String; = "ROUTERBOOST_DATAPRIOR_ENABLE"

.field public static final whitelist ROUTERBOOST_DATAPRIOR_V1_TOS_VAL:Ljava/lang/String; = "ROUTERBOOST_DATAPRIOR_V1_TOS_VAL"

.field public static final whitelist ROUTERBOOST_DATAPRIOR_V2_TOS_VAL:Ljava/lang/String; = "ROUTERBOOST_DATAPRIOR_V2_TOS_VAL"

.field public static final whitelist ROUTERBOOST_DETAIL_DBG_ENABLE:Ljava/lang/String; = "ROUTERBOOST_DETAIL_DBG_ENABLE"

.field public static final whitelist ROUTERBOOST_DUPPKT_ENABLE:Ljava/lang/String; = "ROUTERBOOST_DUPPKT_ENABLE"

.field public static final whitelist ROUTERBOOST_DUPPKT_ENABLE_SLA_HIGH_LATENCY_MS:Ljava/lang/String; = "ROUTERBOOST_DUPPKT_ENABLE_SLA_HIGH_LATENCY_MS"

.field public static final whitelist ROUTERBOOST_DUPPKT_EXTEND_TCP:Ljava/lang/String; = "ROUTERBOOST_DUPPKT_EXTEND_TCP"

.field public static final whitelist ROUTERBOOST_DUPPKT_GAME_BLACK_LIST:Ljava/lang/String; = "ROUTERBOOST_DUPPKT_GAME_BLACK_LIST"

.field public static final whitelist ROUTERBOOST_DUPPKT_GAME_BLACK_LIST_ENABLE:Ljava/lang/String; = "ROUTERBOOST_DUPPKT_GAME_BLACK_LIST_ENABLE"

.field public static final whitelist ROUTERBOOST_DUPPKT_GAME_HIGH_LATENCY_ENABLE:Ljava/lang/String; = "ROUTERBOOST_DUPPKT_GAME_HIGH_LATENCY_ENABLE"

.field public static final whitelist ROUTERBOOST_DUPPKT_GAME_HIGH_LATENCY_MS:Ljava/lang/String; = "ROUTERBOOST_DUPPKT_GAME_HIGH_LATENCY_MS"

.field public static final whitelist ROUTERBOOST_DUPPKT_GAME_HIGH_PERF_MODE_ENABLE:Ljava/lang/String; = "ROUTERBOOST_DUPPKT_GAME_HIGH_PERF_MODE_ENABLE"

.field public static final whitelist ROUTERBOOST_DUPPKT_GAME_HIGH_TEMPERATURE_THRED:Ljava/lang/String; = "ROUTERBOOST_DUPPKT_GAME_HIGH_TEMPERATURE_THRED"

.field public static final whitelist ROUTERBOOST_DUPPKT_GAME_LOW_BATTERY_THRED:Ljava/lang/String; = "ROUTERBOOST_DUPPKT_GAME_LOW_BATTERY_THRED"

.field public static final whitelist ROUTERBOOST_DUPPKT_GAME_WHITE_LIST:Ljava/lang/String; = "ROUTERBOOST_DUPPKT_GAME_WHITE_LIST"

.field public static final whitelist ROUTERBOOST_DUPPKT_GAME_WHITE_LIST_ENABLE:Ljava/lang/String; = "ROUTERBOOST_DUPPKT_GAME_WHITE_LIST_ENABLE"

.field public static final whitelist ROUTERBOOST_ENABLE:Ljava/lang/String; = "ROUTERBOOST_ENABLE"

.field public static final whitelist ROUTERBOOST_GAME_OUT_DELAY_MS:Ljava/lang/String; = "ROUTERBOOST_GAME_OUT_DELAY_MS"

.field public static final whitelist ROUTERBOOST_INTCOMM_ENABLE:Ljava/lang/String; = "ROUTERBOOST_INTCOMM_ENABLE"

.field public static final whitelist ROUTERBOOST_INTCOMM_SOCK_PORT:Ljava/lang/String; = "ROUTERBOOST_INTCOMM_SOCK_PORT"

.field public static final whitelist ROUTERBOOST_MEETING_DATAPRIOR_ENABLE:Ljava/lang/String; = "ROUTERBOOST_MEETING_DATAPRIOR_ENABLE"

.field public static final whitelist ROUTERBOOST_MEETING_DATAPRIOR_V1_TOS_VAL:Ljava/lang/String; = "ROUTERBOOST_MEETING_DATAPRIOR_V1_TOS_VAL"

.field public static final whitelist ROUTERBOOST_MEETING_DATAPRIOR_V2_TOS_VAL:Ljava/lang/String; = "ROUTERBOOST_MEETING_DATAPRIOR_V2_TOS_VAL"

.field public static final whitelist ROUTERBOOST_VENDORIECOMM_ENABLE:Ljava/lang/String; = "ROUTERBOOST_VENDORIECOMM_ENABLE"

.field public static final whitelist ROUTERBOOST_VENDORIECOMM_SUPPORT_VERSION_LIST:Ljava/lang/String; = "ROUTERBOOST_VENDORIECOMM_SUPPORT_VERSION_LIST"

.field public static final whitelist ROUTERBOOST_VENDORIECOMM_V1_SUPPORT_OUI_LIST:Ljava/lang/String; = "ROUTERBOOST_VENDORIECOMM_V1_SUPPORT_OUI_LIST"

.field public static final whitelist ROUTERBOOST_VENDORIECOMM_V2_SUPPORT_OUI_LIST:Ljava/lang/String; = "ROUTERBOOST_VENDORIECOMM_V2_SUPPORT_OUI_LIST"

.field public static final whitelist RUS_SCAN_REQUEST_THROTTLE_INTERVAL_BG_APPS_MS:Ljava/lang/String; = "RUS_SCAN_REQUEST_THROTTLE_INTERVAL_BG_APPS_MS"

.field public static final whitelist RUS_SCAN_REQUEST_THROTTLE_MAX_IN_TIME_WINDOW_FG_APPS:Ljava/lang/String; = "RUS_SCAN_REQUEST_THROTTLE_MAX_IN_TIME_WINDOW_FG_APPS"

.field public static final whitelist RUS_SCAN_REQUEST_THROTTLE_TIME_WINDOW_FG_APPS_MS:Ljava/lang/String; = "RUS_SCAN_REQUEST_THROTTLE_TIME_WINDOW_FG_APPS_MS"

.field public static final whitelist SCAN_EMPTY_TRIGGER_RECOVERY_COUNT:Ljava/lang/String; = "SCAN_EMPTY_TRIGGER_RECOVERY_COUNT"

.field public static final whitelist SCAN_EMPTY_TRIGGER_RECOVERY_ENABLED:Ljava/lang/String; = "SCAN_EMPTY_TRIGGER_RECOVERY_ENABLED"

.field public static final whitelist SLA_ENABLE_CELL_GAME_LATENCY:Ljava/lang/String; = "SLA_ENABLE_CELL_GAME_LATENCY"

.field public static final whitelist SLA_ENABLE_CELL_GAME_SCORE:Ljava/lang/String; = "SLA_ENABLE_CELL_GAME_SCORE"

.field public static final whitelist SLA_GAME_BAD_SWITCH_DELAY:Ljava/lang/String; = "SLA_GAME_BAD_SWITCH_DELAY"

.field public static final whitelist SLA_GAME_TEMPERATURE_CUSTOM_ENABLED:Ljava/lang/String; = "SLA_GAME_TEMPERATURE_CUSTOM_ENABLED"

.field public static final whitelist SLA_GAME_TERRIBLE_SWITCH_DELAY:Ljava/lang/String; = "SLA_GAME_TERRIBLE_SWITCH_DELAY"

.field public static final whitelist SLA_GAME_TIMEOUT_LATENCY:Ljava/lang/String; = "SLA_GAME_TIMEOUT_LATENCY"

.field public static final whitelist SLA_NETWORK_FAST_SWITCH_APPS:Ljava/lang/String; = "SLA_NETWORK_FAST_SWITCH_APPS"

.field public static final whitelist SLA_NETWORK_FAST_SWITCH_ENABLE:Ljava/lang/String; = "SLA_NETWORK_FAST_SWITCH_ENABLE"

.field public static final whitelist SLA_SWITCH_CELL_GAME_LATENCY:Ljava/lang/String; = "SLA_SWITCH_CELL_GAME_LATENCY"

.field public static final whitelist SLA_SWITCH_CELL_GAME_SCORE:Ljava/lang/String; = "SLA_SWITCH_CELL_GAME_SCORE"

.field public static final whitelist SMARTMCC_ENABLE:Ljava/lang/String; = "SMARTMCC_ENABLE"

.field public static final whitelist SMARTMCC_FILE_TRANS_APP_LIST:Ljava/lang/String; = "SMARTMCC_FILE_TRANS_APP_LIST"

.field public static final whitelist SMARTMCC_GAME_MODE_SUPPORT_APP_LIST:Ljava/lang/String; = "SMARTMCC_GAME_MODE_SUPPORT_APP_LIST"

.field public static final whitelist SMARTMCC_LOG_ENABLE:Ljava/lang/String; = "SMARTMCC_LOG_ENABLE"

.field public static final whitelist SMARTMCC_LOG_RETURN_THRESHOLD:Ljava/lang/String; = "SMARTMCC_LOG_RETURN_THRESHOLD"

.field public static final whitelist SMARTMCC_QUOTA_2G_FILE_TRANS_MTK:Ljava/lang/String; = "SMARTMCC_QUOTA_2G_FILE_TRANS_MTK"

.field public static final whitelist SMARTMCC_QUOTA_2G_FILE_TRANS_QCOM:Ljava/lang/String; = "SMARTMCC_QUOTA_2G_FILE_TRANS_QCOM"

.field public static final whitelist SMARTMCC_QUOTA_2G_OTHERS_MTK:Ljava/lang/String; = "SMARTMCC_QUOTA_2G_OTHERS_MTK"

.field public static final whitelist SMARTMCC_QUOTA_2G_OTHERS_QCOM:Ljava/lang/String; = "SMARTMCC_QUOTA_2G_OTHERS_QCOM"

.field public static final whitelist SMARTMCC_QUOTA_2G_P2P_FILE_TRANS_MTK:Ljava/lang/String; = "SMARTMCC_QUOTA_2G_P2P_FILE_TRANS_MTK"

.field public static final whitelist SMARTMCC_QUOTA_2G_P2P_FILE_TRANS_QCOM:Ljava/lang/String; = "SMARTMCC_QUOTA_2G_P2P_FILE_TRANS_QCOM"

.field public static final whitelist SMARTMCC_QUOTA_2G_REAL_TIME_GAME_MTK:Ljava/lang/String; = "SMARTMCC_QUOTA_2G_REAL_TIME_GAME_MTK"

.field public static final whitelist SMARTMCC_QUOTA_2G_REAL_TIME_GAME_QCOM:Ljava/lang/String; = "SMARTMCC_QUOTA_2G_REAL_TIME_GAME_QCOM"

.field public static final whitelist SMARTMCC_QUOTA_2G_VIDEO_MTK:Ljava/lang/String; = "SMARTMCC_QUOTA_2G_VIDEO_MTK"

.field public static final whitelist SMARTMCC_QUOTA_2G_VIDEO_QCOM:Ljava/lang/String; = "SMARTMCC_QUOTA_2G_VIDEO_QCOM"

.field public static final whitelist SMARTMCC_QUOTA_5G_FILE_TRANS_MTK:Ljava/lang/String; = "SMARTMCC_QUOTA_5G_FILE_TRANS_MTK"

.field public static final whitelist SMARTMCC_QUOTA_5G_FILE_TRANS_QCOM:Ljava/lang/String; = "SMARTMCC_QUOTA_5G_FILE_TRANS_QCOM"

.field public static final whitelist SMARTMCC_QUOTA_5G_OTHERS_MTK:Ljava/lang/String; = "SMARTMCC_QUOTA_5G_OTHERS_MTK"

.field public static final whitelist SMARTMCC_QUOTA_5G_OTHERS_QCOM:Ljava/lang/String; = "SMARTMCC_QUOTA_5G_OTHERS_QCOM"

.field public static final whitelist SMARTMCC_QUOTA_5G_P2P_FILE_TRANS_MTK:Ljava/lang/String; = "SMARTMCC_QUOTA_5G_P2P_FILE_TRANS_MTK"

.field public static final whitelist SMARTMCC_QUOTA_5G_P2P_FILE_TRANS_QCOM:Ljava/lang/String; = "SMARTMCC_QUOTA_5G_P2P_FILE_TRANS_QCOM"

.field public static final whitelist SMARTMCC_QUOTA_5G_REALTIME_GAME_MTK:Ljava/lang/String; = "SMARTMCC_QUOTA_5G_REALTIME_GAME_MTK"

.field public static final whitelist SMARTMCC_QUOTA_5G_REALTIME_GAME_QCOM:Ljava/lang/String; = "SMARTMCC_QUOTA_5G_REALTIME_GAME_QCOM"

.field public static final whitelist SMARTMCC_QUOTA_5G_VIDEO_MTK:Ljava/lang/String; = "SMARTMCC_QUOTA_5G_VIDEO_MTK"

.field public static final whitelist SMARTMCC_QUOTA_5G_VIDEO_QCOM:Ljava/lang/String; = "SMARTMCC_QUOTA_5G_VIDEO_QCOM"

.field public static final whitelist SMARTMCC_QUOTA_UDP_ADJUST:Ljava/lang/String; = "SMARTMCC_QUOTA_UDP_ADJUST"

.field public static final whitelist SMARTMCC_REALTIME_GAME_APP_LIST:Ljava/lang/String; = "SMARTMCC_REALTIME_GAME_APP_LIST"

.field public static final whitelist SMARTMCC_VIDEO_APP_LIST:Ljava/lang/String; = "SMARTMCC_VIDEO_APP_LIST"

.field public static final whitelist SMART_BW_PARAMS:Ljava/lang/String; = "SMART_BW_PARAMS"

.field public static final whitelist SUPPLICANT_ERROR_COUNT:Ljava/lang/String; = "SUPPLICANT_ERROR_COUNT"

.field public static final whitelist SUPPLICANT_ERROR_RECOVERY_ENABLED:Ljava/lang/String; = "SUPPLICANT_ERROR_RECOVERY_ENABLED"

.field public static final whitelist SWITCH_WIFI_SCORE_THRESHOLD:Ljava/lang/String; = "SWITCH_WIFI_SCORE_THRESHOLD"

.field public static final whitelist SYSTEMSCAN_BLACK_LIST:Ljava/lang/String; = "SYSTEMSCAN_BLACK_LIST"

.field public static final whitelist TRIGGER_DISABLE_UNEXPECT_DISCONNECT_REASON3_THROTTL:Ljava/lang/String; = "TRIGGER_DISABLE_UNEXPECT_DISCONNECT_REASON3_THROTTL"

.field public static final whitelist TRIGGER_DISABLE_UNEXPECT_DISCONNECT_THROTTL:Ljava/lang/String; = "TRIGGER_DISABLE_UNEXPECT_DISCONNECT_THROTTL"

.field public static final whitelist UNEXPECTED_DISCONNECT_DISABLE_REASON:Ljava/lang/String; = "UNEXPECTED_DISCONNECT_DISABLE_REASON"

.field public static final whitelist WEBVIEW_AVAILABLE_HEADER:Ljava/lang/String; = "WEBVIEW_AVAILABLE_HEADER"

.field public static final whitelist WEBVIEW_BAIDU_BOX_HEADER:Ljava/lang/String; = "WEBVIEW_BAIDU_BOX_HEADER"

.field public static final whitelist WEBVIEW_URL:Ljava/lang/String; = "WEBVIEW_URL"

.field public static final whitelist WIFIFRE_DISCONNECT_THOTTL:Ljava/lang/String; = "WIFIFRE_DISCONNECT_THOTTL"

.field public static final whitelist WIFILOCK_HIGH_PERFORMANCE_BLACKLIST:Ljava/lang/String; = "WIFILOCK_HIGH_PERFORMANCE_BLACKLIST"

.field public static final whitelist WIFILOCK_LOW_LATENCY_BLACKLIST:Ljava/lang/String; = "WIFILOCK_LOW_LATENCY_BLACKLIST"

.field public static final whitelist WIFI_ASSISTANT_FIFTH_VERSION_ENABLED:Ljava/lang/String; = "WIFI_ASSISTANT_FIFTH_VERSION_ENABLED"

.field public static final whitelist WIFI_ASSISTANT_USE_TCPANDDNS_SCORE_ENABLED:Ljava/lang/String; = "WIFI_ASSISTANT_USE_TCPANDDNS_SCORE_ENABLED"

.field public static final whitelist WIFI_DISCON_DELAY_REPORT_COOLTIME:Ljava/lang/String; = "WIFI_DISCON_DELAY_REPORT_COOLTIME"

.field public static final whitelist WIFI_DISCON_DELAY_REPORT_ENABLE:Ljava/lang/String; = "WIFI_DISCON_DELAY_REPORT_ENABLE"

.field public static final whitelist WIFI_DISCON_DELAY_REPORT_STRONG_RSSI:Ljava/lang/String; = "WIFI_DISCON_DELAY_REPORT_STRONG_RSSI"

.field public static final whitelist WIFI_DISCON_DELAY_REPORT_TIME:Ljava/lang/String; = "WIFI_DISCON_DELAY_REPORT_TIME"

.field public static final whitelist WIFI_INTERNET_SELF_CURE_COUNTER_PARAM:Ljava/lang/String; = "WIFI_INTERNET_SELF_CURE_COUNTER_PARAM"

.field public static final whitelist WIFI_INTERNET_SELF_CURE_FUNC_ENABLE:Ljava/lang/String; = "WIFI_INTERNET_SELF_CURE_FUNC_ENABLE"

.field public static final whitelist WIFI_INTERNET_SELF_CURE_PLOY_INTERVAL_PARAM:Ljava/lang/String; = "WIFI_INTERNET_SELF_CURE_PLOY_INTERVAL_PARAM"

.field public static final whitelist WIFI_INTERNET_SELF_CURE_RSSI_LEVEL:Ljava/lang/String; = "WIFI_INTERNET_SELF_CURE_RSSI_LEVEL"

.field public static final whitelist WIFI_INTERNET_SELF_CURE_SUP_PLOY_PARAM:Ljava/lang/String; = "WIFI_INTERNET_SELF_CURE_SUP_PLOY_PARAM"

.field public static final whitelist WIFI_INTERNET_SELF_CURE_TRAFFIC_INTERVAL:Ljava/lang/String; = "WIFI_INTERNET_SELF_CURE_TRAFFIC_INTERVAL"

.field public static final whitelist WIFI_MINIDUMP_LOG_FEEDBACK_SUPPORTED_COUNTEY_LISIT:Ljava/lang/String; = "WIFI_MINIDUMP_LOG_FEEDBACK_SUPPORTED_COUNTEY_LISIT"

.field public static final whitelist WIFI_SELFCURE_REASSOC_DELAY_REPORT_TIME:Ljava/lang/String; = "WIFI_SELFCURE_REASSOC_DELAY_REPORT_TIME"

.field public static final whitelist WIFI_SELFCURE_RECONN_DELAY_REPORT_TIME:Ljava/lang/String; = "WIFI_SELFCURE_RECONN_DELAY_REPORT_TIME"

.field public static final whitelist WIFI_SELFCURE_RESET_DELAY_SCREENOFF_REPORT_TIME:Ljava/lang/String; = "WIFI_SELFCURE_RESET_DELAY_SCREENOFF_REPORT_TIME"

.field public static final whitelist WIFI_SELFCURE_RESET_DELAY_SCREENON_REPORT_TIME:Ljava/lang/String; = "WIFI_SELFCURE_RESET_DELAY_SCREENON_REPORT_TIME"

.field public static final whitelist WIFI_SMART_GEAR_APP_WHITE_LIST:Ljava/lang/String; = "WIFI_SMART_GEAR_APP_WHITE_LIST"

.field public static final whitelist WIFI_SMART_GEAR_APP_WHITE_LIST_ENABLE:Ljava/lang/String; = "WIFI_SMART_GEAR_APP_WHITE_LIST_ENABLE"

.field public static final whitelist WIFI_SMART_GEAR_ENABLE:Ljava/lang/String; = "WIFI_SMART_GEAR_ENABLE"

.field public static final whitelist WIFI_SMART_GEAR_NSS1TO2_RSSI_THRED:Ljava/lang/String; = "WIFI_SMART_GEAR_NSS1TO2_RSSI_THRED"

.field public static final whitelist WIFI_SMART_GEAR_NSS2TO1_COOL_TIME_MS:Ljava/lang/String; = "WIFI_SMART_GEAR_NSS2TO1_COOL_TIME_MS"

.field public static final whitelist WIFI_SMART_GEAR_NSS2TO1_RSSI_THRED:Ljava/lang/String; = "WIFI_SMART_GEAR_NSS2TO1_RSSI_THRED"

.field public static final whitelist WIFI_SMART_GEAR_ROUTER_WHITE_LIST:Ljava/lang/String; = "WIFI_SMART_GEAR_ROUTER_WHITE_LIST"

.field public static final whitelist WIFI_SMART_GEAR_ROUTER_WHITE_LIST_ENABLE:Ljava/lang/String; = "WIFI_SMART_GEAR_ROUTER_WHITE_LIST_ENABLE"

.field public static final whitelist WIFI_SMART_GEAR_SSID_WHITE_LIST:Ljava/lang/String; = "WIFI_SMART_GEAR_SSID_WHITE_LIST"

.field public static final whitelist WIFI_SMART_GEAR_TOAST_DBG_ENABLE:Ljava/lang/String; = "WIFI_SMART_GEAR_TOAST_DBG_ENABLE"

.field public static final whitelist WIFI_SMART_GEAR_TPUT_THRED:Ljava/lang/String; = "WIFI_SMART_GEAR_TPUT_THRED"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Landroid/net/wifi/IWifiRomUpdateHelper$1;

    invoke-direct {v0}, Landroid/net/wifi/IWifiRomUpdateHelper$1;-><init>()V

    sput-object v0, Landroid/net/wifi/IWifiRomUpdateHelper;->DEFAULT:Landroid/net/wifi/IWifiRomUpdateHelper;

    return-void
.end method


# virtual methods
.method public whitelist dump()V
    .locals 0

    .line 1009
    return-void
.end method

.method public whitelist enableVerboseLogging(I)V
    .locals 0
    .param p1, "level"    # I

    .line 1005
    return-void
.end method

.method public whitelist get5g160MSapAppWhiteList()[Ljava/lang/String;
    .locals 1

    .line 1086
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist get5g160MSapChannel()I
    .locals 1

    .line 1084
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist get5g160MSapCountryWhiteList()[Ljava/lang/String;
    .locals 1

    .line 1088
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist get5g160MSapFeature()Z
    .locals 1

    .line 1080
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist get5g160MStationFeatureForPhoneClone()Z
    .locals 1

    .line 1082
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getAllVideoApps()[Ljava/lang/String;
    .locals 1

    .line 1045
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getBooleanValue(Ljava/lang/String;Z)Z
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Z

    .line 999
    return p2
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 37
    sget-object v0, Landroid/net/wifi/IWifiRomUpdateHelper;->DEFAULT:Landroid/net/wifi/IWifiRomUpdateHelper;

    return-object v0
.end method

.method public whitelist getDownloadApps()[Ljava/lang/String;
    .locals 1

    .line 1047
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDualStaBlackListApps()[Ljava/lang/String;
    .locals 1

    .line 1039
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDualStaBlackListCapHosts()[Ljava/lang/String;
    .locals 1

    .line 1041
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDualStaDisabledMcc()[Ljava/lang/String;
    .locals 1

    .line 1043
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDualStaWhiteListApps()[Ljava/lang/String;
    .locals 1

    .line 1035
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDualStaWhiteListAppsExp()[Ljava/lang/String;
    .locals 1

    .line 1037
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getFloatValue(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/Double;

    .line 1001
    return-object p2
.end method

.method public whitelist getHybridAntIsoParam()I
    .locals 1

    .line 1093
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHybridBlackList()[Ljava/lang/String;
    .locals 1

    .line 1097
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getHybridRssiThreshold()I
    .locals 1

    .line 1095
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHybridTgpaApps()[Ljava/lang/String;
    .locals 1

    .line 1091
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getIOTConnectWhiteList()[Ljava/lang/String;
    .locals 1

    .line 1074
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getIOTPackageControlThreshold()[I
    .locals 1

    .line 1076
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/Integer;

    .line 997
    return-object p2
.end method

.method public whitelist getLongValue(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/Long;

    .line 1003
    return-object p2
.end method

.method public whitelist getNullDataToCTSRouterBlackList()[Ljava/lang/String;
    .locals 1

    .line 1107
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getNullDataToCTSRouterWhiteList()[Ljava/lang/String;
    .locals 1

    .line 1106
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRequestorApps()[Ljava/lang/String;
    .locals 1

    .line 1071
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRouterBoostDupPktGameBlackList()[Ljava/lang/String;
    .locals 1

    .line 1063
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRouterBoostDupPktGameWhiteList()[Ljava/lang/String;
    .locals 1

    .line 1061
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRouterBoostVendorIECommSupportVersionList()[Ljava/lang/String;
    .locals 1

    .line 1065
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRouterBoostVendorIECommV1SupportOuiList()[Ljava/lang/String;
    .locals 1

    .line 1069
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRouterBoostVendorIECommV2SupportOuiList()[Ljava/lang/String;
    .locals 1

    .line 1067
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getScreencastP2pOptEnabled()Z
    .locals 1

    .line 1103
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getSkipDestroySocketApps()[Ljava/lang/String;
    .locals 1

    .line 1051
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlaBlackListApps()[Ljava/lang/String;
    .locals 1

    .line 1015
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlaEnabledMcc()[Ljava/lang/String;
    .locals 1

    .line 1021
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlaFastSwitchApps()[Ljava/lang/String;
    .locals 1

    .line 1110
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlaGameApps()[Ljava/lang/String;
    .locals 1

    .line 1017
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlaGameAppsExp()[Ljava/lang/String;
    .locals 1

    .line 1019
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlaGameParams()[Ljava/lang/String;
    .locals 1

    .line 1027
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlaIntervalParams()[Ljava/lang/String;
    .locals 1

    .line 1031
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlaParams()[Ljava/lang/String;
    .locals 1

    .line 1023
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlaSpeedParams()[Ljava/lang/String;
    .locals 1

    .line 1029
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlaWhiteListApps()[Ljava/lang/String;
    .locals 1

    .line 1011
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlaWhiteListAppsExp()[Ljava/lang/String;
    .locals 1

    .line 1013
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlaWifiScoreParams()[Ljava/lang/String;
    .locals 1

    .line 1033
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartBWParams()[I
    .locals 1

    .line 1053
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartGearAppWhiteList()[Ljava/lang/String;
    .locals 1

    .line 1055
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartGearRouterWhiteList()[Ljava/lang/String;
    .locals 1

    .line 1057
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartGearSsidWhiteList()[Ljava/lang/String;
    .locals 1

    .line 1059
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCFileTransAppList()[Ljava/lang/String;
    .locals 1

    .line 1115
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCGameModeSupportAppList()[Ljava/lang/String;
    .locals 1

    .line 1116
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GFileTransMTK()[I
    .locals 1

    .line 1119
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GFileTransQcom()[I
    .locals 1

    .line 1129
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GOthersMTK()[I
    .locals 1

    .line 1121
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GOthersQcom()[I
    .locals 1

    .line 1131
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GP2PFileTransMTK()[I
    .locals 1

    .line 1120
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GP2PFileTransQcom()[I
    .locals 1

    .line 1130
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GRealTimeGameMTK()[I
    .locals 1

    .line 1118
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GRealTimeGameQcom()[I
    .locals 1

    .line 1128
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GVideoMTK()[I
    .locals 1

    .line 1117
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GVideoQcom()[I
    .locals 1

    .line 1127
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GFileTransMTK()[I
    .locals 1

    .line 1124
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GFileTransQcom()[I
    .locals 1

    .line 1134
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GOthersMTK()[I
    .locals 1

    .line 1126
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GOthersQcom()[I
    .locals 1

    .line 1136
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GP2PFileTransMTK()[I
    .locals 1

    .line 1125
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GP2PFileTransQcom()[I
    .locals 1

    .line 1135
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GRealTimeGameMTK()[I
    .locals 1

    .line 1123
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GRealTimeGameQcom()[I
    .locals 1

    .line 1133
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GVideoMTK()[I
    .locals 1

    .line 1122
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GVideoQcom()[I
    .locals 1

    .line 1132
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCRealTimeGameAppList()[Ljava/lang/String;
    .locals 1

    .line 1114
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartMCCVideoAppList()[Ljava/lang/String;
    .locals 1

    .line 1113
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSnifferCaptureWithUdp()Z
    .locals 1

    .line 1100
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getSpeedRttParams()[I
    .locals 1

    .line 1025
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 995
    return-object p2
.end method

.method public whitelist getWechatLmParams()[Ljava/lang/String;
    .locals 1

    .line 1049
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 32
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IWifiRomUpdateHelper:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist initUpdateBroadcastReceiver()V
    .locals 0

    .line 1007
    return-void
.end method
