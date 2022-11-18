.class public interface abstract Landroid/convert/ICustomizeTransformHelper;
.super Ljava/lang/Object;
.source "ICustomizeTransformHelper.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist ACTION_POWER_BUTTON_ENDS_ALARMCLOCK:Ljava/lang/String; = "oplus.intent.action.POWER_BUTTON_ENDS_ALARMCLOCK"

.field public static final whitelist ALARMCLOCK_PKG:Ljava/lang/String; = "com.oplus.alarmclock"

.field public static final whitelist CAMERA_PKG:Ljava/lang/String; = "com.oplus.camera"

.field public static final whitelist CHILDREN_SPACE_PKG:Ljava/lang/String; = "com.oplus.childrenspace"

.field public static final whitelist CUSTOMIZE_FLIPED_FONT_FILE_NAME:Ljava/lang/String; = "customize_fliped_font_file_name"

.field public static final whitelist CUSTOMIZE_LAUNCHER_PKG_NAME:Ljava/lang/String; = "customize_launcher_pkg_name"

.field public static final whitelist CUSTOMIZE_THEME_ICON_PKG_NAME:Ljava/lang/String; = "customize_theme_icon_pkg_name"

.field public static final whitelist CUSTOMIZE_VERSION_ROOT_PATH:Ljava/lang/String; = "customize_version_root_path"

.field public static final whitelist DEFAULT:Landroid/convert/ICustomizeTransformHelper;

.field public static final whitelist LEGACY_PREFIX:Ljava/lang/String; = "legacy_prefix"

.field public static final whitelist NAME:Ljava/lang/String; = "ICustomizeTransformHelper"

.field public static final whitelist OEM_DDS_SWITCH_NO_TRIGGER_PKGS:Ljava/lang/String; = "oem_dds_switch_no_trigger_pkgs"

.field public static final whitelist OEM_PACKAGE_BLACKLISTAPP:Ljava/lang/String; = "oem_package_blacklistapp"

.field public static final whitelist OEM_PACKAGE_CTAUTOREGIST:Ljava/lang/String; = "oem_package_ctautoregist"

.field public static final whitelist OEM_PACKAGE_FINDMYPHONE:Ljava/lang/String; = "oem_findmyphone"

.field public static final whitelist OEM_PACKAGE_HEALTHCHECK:Ljava/lang/String; = "oem_package_healthcheck"

.field public static final whitelist OEM_PACKAGE_MO_SMS_NOT_SHOW_IN_UI:Ljava/lang/String; = "config_oem_package_mo_sms_not_show_in_ui"

.field public static final whitelist OEM_PACKAGE_REGSERVICE:Ljava/lang/String; = "oem_package_regservice"

.field public static final whitelist OLD_ACTION_KEY_LOCK:Ljava/lang/String; = "com.oplus.intent.action.KEY_LOCK_MODE"

.field public static final whitelist OPLUS_BACKUPRESTORE:Ljava/lang/String; = "oem_package_backuprestore"

.field public static final whitelist OPLUS_BROWSER:Ljava/lang/String; = "oem_package_browser"

.field public static final whitelist OPLUS_INCALL_ACTION:Ljava/lang/String; = "oplus.intent.action.incallui.HIDE_INCOMING_FULL_UI"

.field public static final whitelist OPLUS_INCALL_SCREEN:Ljava/lang/String; = "com.android.incallui/com.android.incallui.OplusInCallActivity"

.field public static final whitelist OPLUS_OSHARE:Ljava/lang/String; = "oem_package_oshare"

.field public static final whitelist OPLUS_PACKAGE_FLOATASSISTANT:Ljava/lang/String; = "oplus_package_floatassistant"

.field public static final whitelist OPLUS_TRANSMISSION_PKG:Ljava/lang/String; = "config_oplus_transmission_pkg"

.field public static final whitelist OPLUS_WIFISECUREDETECT:Ljava/lang/String; = "oem_package_wifisecuredetect"

.field public static final whitelist OPLUS_WINDOW_UTILS_DIRECT_APPS:Ljava/lang/String; = "oplus_window_utils_direct_apps"

.field public static final whitelist QUICK_LAUNCH_CAMERA_KEY:Ljava/lang/String; = "com.oplus.camera quick launch"

.field public static final whitelist SHOW_DEVICE_LOCKED:Ljava/lang/String; = "oplus_show_device_locked"

.field public static final whitelist SILENCE_ACTION_FOR_OPLUS_SPEECH:Ljava/lang/String; = "SILENCE_ACTION_FOR_OPLUS_SPEECH"

.field public static final whitelist SOS_ACTIVITY1:Ljava/lang/String; = "com.oplus.sos.ui.EmergencyCallDetailActivity"

.field public static final whitelist SOS_ACTIVITY2:Ljava/lang/String; = "com.oplus.sos.ui.EmergencyAutoCallActivity"

.field public static final whitelist SOS_ACTIVITY3:Ljava/lang/String; = "com.oplus.sos.ui.MessageSendConfirmActivity"

.field public static final whitelist STR_POWER_BUTTON_ENDS_ALARMCLOCK:Ljava/lang/String; = "oplus_power_button_ends_alarm_clock"

.field public static final whitelist TITLE_EDGE_FLOATBAR:Ljava/lang/String; = "OplusOSEdgeFloatBar"

.field public static final whitelist TITLE_EDGE_PANEL:Ljava/lang/String; = "OplusOSEdgePanel"

.field public static final whitelist WAKEUP_NUM:Ljava/lang/String; = "oplus.dt.wakeupnum"

.field public static final whitelist mTransfromCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroid/convert/ICustomizeTransformHelper$1;

    invoke-direct {v0}, Landroid/convert/ICustomizeTransformHelper$1;-><init>()V

    sput-object v0, Landroid/convert/ICustomizeTransformHelper;->DEFAULT:Landroid/convert/ICustomizeTransformHelper;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/convert/ICustomizeTransformHelper;->mTransfromCache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 113
    sget-object v0, Landroid/convert/ICustomizeTransformHelper;->DEFAULT:Landroid/convert/ICustomizeTransformHelper;

    return-object v0
.end method

.method public whitelist getTransfromCacheFeature(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "transformKey"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 108
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->ICustomizeTransformHelper:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method
