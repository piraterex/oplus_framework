.class public Landroid/provider/Settings$Global$Wearable;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$Global;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wearable"
.end annotation


# static fields
.field public static final blacklist ALT_BYPASS_WIFI_REQUIREMENT_TIME_MILLIS:Ljava/lang/String; = "alt_bypass_wifi_requirement_time_millis"

.field public static final blacklist AMBIENT_ENABLED:Ljava/lang/String; = "ambient_enabled"

.field public static final blacklist AMBIENT_FORCE_WHEN_DOCKED:Ljava/lang/String; = "ambient_force_when_docked"

.field public static final blacklist AMBIENT_LOW_BIT_ENABLED:Ljava/lang/String; = "ambient_low_bit_enabled"

.field public static final blacklist AMBIENT_LOW_BIT_ENABLED_DEV:Ljava/lang/String; = "ambient_low_bit_enabled_dev"

.field public static final blacklist AMBIENT_PLUGGED_TIMEOUT_MIN:Ljava/lang/String; = "ambient_plugged_timeout_min"

.field public static final blacklist AMBIENT_TILT_TO_BRIGHT:Ljava/lang/String; = "ambient_tilt_to_bright"

.field public static final blacklist AMBIENT_TILT_TO_WAKE:Ljava/lang/String; = "ambient_tilt_to_wake"

.field public static final blacklist AMBIENT_TOUCH_TO_WAKE:Ljava/lang/String; = "ambient_touch_to_wake"

.field public static final blacklist ANDROID_WEAR_VERSION:Ljava/lang/String; = "android_wear_version"

.field public static final blacklist AUTO_TIME_OFF:I = 0x2

.field public static final blacklist AUTO_TIME_ZONE_OFF:I = 0x2

.field public static final blacklist AUTO_WIFI:Ljava/lang/String; = "auto_wifi"

.field public static final blacklist AUTO_WIFI_DISABLED:I = 0x0

.field public static final blacklist AUTO_WIFI_ENABLED:I = 0x1

.field public static final blacklist BATTERY_SAVER_MODE:Ljava/lang/String; = "battery_saver_mode"

.field public static final blacklist BATTERY_SAVER_MODE_CUSTOM:I = 0x4

.field public static final blacklist BATTERY_SAVER_MODE_LIGHT:I = 0x1

.field public static final blacklist BATTERY_SAVER_MODE_NONE:I = 0x0

.field public static final blacklist BATTERY_SAVER_MODE_TIME_ONLY:I = 0x3

.field public static final blacklist BATTERY_SAVER_MODE_TRADITIONAL_WATCH:I = 0x2

.field public static final blacklist BLUETOOTH_ROLE_CENTRAL:I = 0x1

.field public static final blacklist BLUETOOTH_ROLE_PERIPHERAL:I = 0x2

.field public static final blacklist BUG_REPORT:Ljava/lang/String; = "bug_report"

.field public static final blacklist BUG_REPORT_DISABLED:I = 0x0

.field public static final blacklist BUG_REPORT_ENABLED:I = 0x1

.field public static final blacklist BURN_IN_PROTECTION_ENABLED:Ljava/lang/String; = "burn_in_protection"

.field public static final blacklist BUTTON_SET:Ljava/lang/String; = "button_set"

.field public static final blacklist CALL_FORWARD_ACTION_OFF:I = 0x2

.field public static final blacklist CALL_FORWARD_ACTION_ON:I = 0x1

.field public static final blacklist CALL_FORWARD_NO_LAST_ACTION:I = -0x1

.field public static final blacklist CLOCKWORK_24HR_TIME:Ljava/lang/String; = "clockwork_24hr_time"

.field public static final blacklist CLOCKWORK_AUTO_TIME:Ljava/lang/String; = "clockwork_auto_time"

.field public static final blacklist CLOCKWORK_AUTO_TIME_ZONE:Ljava/lang/String; = "clockwork_auto_time_zone"

.field public static final blacklist CLOCKWORK_LONG_PRESS_TO_ASSISTANT_ENABLED:Ljava/lang/String; = "clockwork_long_press_to_assistant_enabled"

.field public static final blacklist CLOCKWORK_SYSUI_MAIN_ACTIVITY:Ljava/lang/String; = "clockwork_sysui_main_activity"

.field public static final blacklist CLOCKWORK_SYSUI_PACKAGE:Ljava/lang/String; = "clockwork_sysui_package"

.field public static final blacklist COMBINED_LOCATION_ENABLED:Ljava/lang/String; = "combined_location_enable"

.field public static final blacklist COMPANION_BLE_ROLE:Ljava/lang/String; = "companion_ble_role"

.field public static final blacklist COMPANION_NAME:Ljava/lang/String; = "companion_bt_name"

.field public static final blacklist COMPANION_OS_VERSION:Ljava/lang/String; = "wear_companion_os_version"

.field public static final blacklist COMPANION_OS_VERSION_UNDEFINED:I = -0x1

.field public static final blacklist COOLDOWN_MODE_ON:Ljava/lang/String; = "cooldown_mode_on"

.field public static final blacklist CORNER_ROUNDNESS:Ljava/lang/String; = "corner_roundness"

.field public static final blacklist DECOMPOSABLE_WATCHFACE:Ljava/lang/String; = "current_watchface_decomposable"

.field public static final blacklist DEFAULT_VIBRATION:Ljava/lang/String; = "default_vibration"

.field public static final blacklist ENABLE_ALL_LANGUAGES:Ljava/lang/String; = "enable_all_languages"

.field public static final blacklist GMS_CHECKIN_TIMEOUT_MIN:Ljava/lang/String; = "gms_checkin_timeout_min"

.field public static final blacklist HAS_PAY_TOKENS:Ljava/lang/String; = "has_pay_tokens"

.field public static final blacklist HFP_CLIENT_DISABLED:I = 0x2

.field public static final blacklist HFP_CLIENT_ENABLED:I = 0x1

.field public static final blacklist HFP_CLIENT_UNSET:I = 0x0

.field public static final blacklist HOTWORD_DETECTION_ENABLED:Ljava/lang/String; = "hotword_detection_enabled"

.field public static final blacklist INVALID_AUTO_TIME_STATE:I = 0x3

.field public static final blacklist INVALID_AUTO_TIME_ZONE_STATE:I = 0x3

.field public static final blacklist LAST_CALL_FORWARD_ACTION:Ljava/lang/String; = "last_call_forward_action"

.field public static final blacklist MASTER_GESTURES_ENABLED:Ljava/lang/String; = "master_gestures_enabled"

.field public static final blacklist MOBILE_SIGNAL_DETECTOR:Ljava/lang/String; = "mobile_signal_detector"

.field public static final blacklist MUTE_WHEN_OFF_BODY_ENABLED:Ljava/lang/String; = "obtain_mute_when_off_body"

.field public static final blacklist OBTAIN_PAIRED_DEVICE_LOCATION:Ljava/lang/String; = "obtain_paired_device_location"

.field public static final blacklist OEM_SETUP_VERSION:Ljava/lang/String; = "oem_setup_version"

.field public static final blacklist PAIRED_DEVICE_OS_TYPE:Ljava/lang/String; = "paired_device_os_type"

.field public static final blacklist PAIRED_DEVICE_OS_TYPE_ANDROID:I = 0x1

.field public static final blacklist PAIRED_DEVICE_OS_TYPE_IOS:I = 0x2

.field public static final blacklist PAIRED_DEVICE_OS_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist PHONE_PLAY_STORE_AVAILABILITY:Ljava/lang/String; = "phone_play_store_availability"

.field public static final blacklist PHONE_PLAY_STORE_AVAILABILITY_UNKNOWN:I = 0x0

.field public static final blacklist PHONE_PLAY_STORE_AVAILABLE:I = 0x1

.field public static final blacklist PHONE_PLAY_STORE_UNAVAILABLE:I = 0x2

.field public static final blacklist RETAIL_MODE:Ljava/lang/String; = "retail_mode"

.field public static final blacklist RETAIL_MODE_CONSUMER:I = 0x0

.field public static final blacklist RETAIL_MODE_RETAIL:I = 0x1

.field public static final blacklist SETUP_LOCALE:Ljava/lang/String; = "setup_locale"

.field public static final blacklist SETUP_SKIPPED:Ljava/lang/String; = "setup_skipped"

.field public static final blacklist SETUP_SKIPPED_NO:I = 0x2

.field public static final blacklist SETUP_SKIPPED_UNKNOWN:I = 0x0

.field public static final blacklist SETUP_SKIPPED_YES:I = 0x1

.field public static final blacklist SIDE_BUTTON:Ljava/lang/String; = "side_button"

.field public static final blacklist SMART_ILLUMINATE_ENABLED:Ljava/lang/String; = "smart_illuminate_enabled"

.field public static final blacklist SMART_REPLIES_ENABLED:Ljava/lang/String; = "smart_replies_enabled"

.field public static final blacklist STEM_1_DATA:Ljava/lang/String; = "STEM_1_DATA"

.field public static final blacklist STEM_1_DEFAULT_DATA:Ljava/lang/String; = "STEM_1_DEFAULT_DATA"

.field public static final blacklist STEM_1_TYPE:Ljava/lang/String; = "STEM_1_TYPE"

.field public static final blacklist STEM_2_DATA:Ljava/lang/String; = "STEM_2_DATA"

.field public static final blacklist STEM_2_DEFAULT_DATA:Ljava/lang/String; = "STEM_2_DEFAULT_DATA"

.field public static final blacklist STEM_2_TYPE:Ljava/lang/String; = "STEM_2_TYPE"

.field public static final blacklist STEM_3_DATA:Ljava/lang/String; = "STEM_3_DATA"

.field public static final blacklist STEM_3_DEFAULT_DATA:Ljava/lang/String; = "STEM_3_DEFAULT_DATA"

.field public static final blacklist STEM_3_TYPE:Ljava/lang/String; = "STEM_3_TYPE"

.field public static final blacklist STEM_TYPE_APP_LAUNCH:I = 0x0

.field public static final blacklist STEM_TYPE_CONTACT_LAUNCH:I = 0x1

.field public static final blacklist STEM_TYPE_UNKNOWN:I = -0x1

.field public static final blacklist SYNC_TIME_FROM_NETWORK:I = 0x1

.field public static final blacklist SYNC_TIME_FROM_PHONE:I = 0x0

.field public static final blacklist SYNC_TIME_ZONE_FROM_NETWORK:I = 0x1

.field public static final blacklist SYNC_TIME_ZONE_FROM_PHONE:I = 0x0

.field public static final blacklist SYSTEM_CAPABILITIES:Ljava/lang/String; = "system_capabilities"

.field public static final blacklist SYSTEM_EDITION:Ljava/lang/String; = "android_wear_system_edition"

.field public static final blacklist UNGAZE_ENABLED:Ljava/lang/String; = "ungaze_enabled"

.field public static final blacklist USER_HFP_CLIENT_SETTING:Ljava/lang/String; = "user_hfp_client_setting"

.field public static final blacklist WEAR_ACTIVITY_AUTO_RESUME_TIMEOUT_MS:Ljava/lang/String; = "wear_activity_auto_resume_timeout_ms"

.field public static final blacklist WEAR_ACTIVITY_AUTO_RESUME_TIMEOUT_SET_BY_USER:Ljava/lang/String; = "wear_activity_auto_resume_timeout_set_by_user"

.field public static final blacklist WEAR_OS_VERSION_STRING:Ljava/lang/String; = "wear_os_version_string"

.field public static final blacklist WEAR_PLATFORM_MR_NUMBER:Ljava/lang/String; = "wear_platform_mr_number"

.field public static final blacklist WET_MODE_ON:Ljava/lang/String; = "wet_mode_on"

.field public static final blacklist WIFI_POWER_SAVE:Ljava/lang/String; = "wifi_power_save"

.field public static final blacklist WRIST_ORIENTATION_MODE:Ljava/lang/String; = "wear_wrist_orientation_mode"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 17149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
