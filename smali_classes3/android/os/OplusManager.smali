.class public final Landroid/os/OplusManager;
.super Ljava/lang/Object;
.source "OplusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OplusManager$QualityEventId;,
        Landroid/os/OplusManager$StampId;,
        Landroid/os/OplusManager$IStampCallBack;,
        Landroid/os/OplusManager$StampEvent;
    }
.end annotation


# static fields
.field public static final whitelist ANDROID_MSG_INPUTMETHOD_FAILD:I = 0x3ec

.field public static final whitelist ANDROID_MSG_INSTALL_FAILD:I = 0x3eb

.field public static final whitelist ANDROID_MSG_LAUNCHACTIVITY:I = 0x3ea

.field public static final whitelist ANDROID_MSG_SKIPFRAMES:I = 0x3e9

.field public static final whitelist ANDROID_PANIC_TAG:Ljava/lang/String; = "SYSTEM_SERVER"

.field public static final whitelist ANDROID_PANIC_TAG_BEGIN:Ljava/lang/String; = "<android-panic-begin>\n"

.field public static final whitelist ANDROID_PANIC_TAG_END:Ljava/lang/String; = "<android-panic-end>\n"

.field public static final whitelist ANDROID_TAG:Ljava/lang/String; = "ANDROID"

.field public static final whitelist CAMERA_TAG:Ljava/lang/String; = "CAMERA"

.field public static final whitelist CONNECT_TAG:Ljava/lang/String; = "CONNECTIVITY"

.field private static final blacklist DATA_SIZE:I = 0x10

.field private static final blacklist DEBUG:Z = true

.field public static final whitelist DO_GR_CHECK_INTERNET:Ljava/lang/String; = "DO_GR_CHECK_INTERNET"

.field public static final whitelist DO_GR_INSTALL_TALKBACK:Ljava/lang/String; = "DO_GR_INSTALL_TALKBACK"

.field public static final whitelist DO_GR_TALKBACK_SUCC:Ljava/lang/String; = "DO_GR_TALKBACK_SUCC"

.field public static final whitelist ENGINEERINGMODE_TEST_BEGIN:Ljava/lang/String; = "<engineeringmode-test-begin>\n"

.field public static final whitelist ENGINEERINGMODE_TEST_END:Ljava/lang/String; = "<engineeringmode-test-end>\n"

.field public static final whitelist ENGINEERINGMODE_TEST_TAG:Ljava/lang/String; = "ENGINEERINGMODE_TEST"

.field public static final whitelist GMAP_PNAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final blacklist INIT_TRY_TIMES:I = 0x3

.field public static final whitelist ISSUE_ANDROID_ADSP_CRASH:Ljava/lang/String; = "adsp_crash"

.field public static final whitelist ISSUE_ANDROID_AVERAGE_CURRENT_EVENT:Ljava/lang/String; = "average_current_event"

.field public static final whitelist ISSUE_ANDROID_CHARGER_PLUGIN_625:Ljava/lang/String; = "charger_plugin"

.field public static final whitelist ISSUE_ANDROID_CHARGER_PLUGOUT_626:Ljava/lang/String; = "charger_plugout"

.field public static final whitelist ISSUE_ANDROID_CRASH:Ljava/lang/String; = "crash"

.field public static final whitelist ISSUE_ANDROID_FP_DIE:Ljava/lang/String; = "fp_die"

.field public static final whitelist ISSUE_ANDROID_FP_HW_ERROR:Ljava/lang/String; = "fp_hw_error"

.field public static final whitelist ISSUE_ANDROID_FP_RESET_BYHM:Ljava/lang/String; = "fp_reset_byhm"

.field public static final whitelist ISSUE_ANDROID_INPUTMETHOD_FAIL:Ljava/lang/String; = "inputmethod_fail"

.field public static final whitelist ISSUE_ANDROID_INSTALL_FAIL:Ljava/lang/String; = "install_fail"

.field public static final whitelist ISSUE_ANDROID_LAUNCH_ACTIVITY:Ljava/lang/String; = "launch_activity"

.field public static final whitelist ISSUE_ANDROID_MODEM_CRASH:Ljava/lang/String; = "modem_crash"

.field public static final whitelist ISSUE_ANDROID_OTA_UPGRADE:Ljava/lang/String; = "ota_upgrade"

.field public static final whitelist ISSUE_ANDROID_PM_50:Ljava/lang/String; = "scan_event"

.field public static final whitelist ISSUE_ANDROID_PM_51:Ljava/lang/String; = "wifi_discounnect_event"

.field public static final whitelist ISSUE_ANDROID_PM_52:Ljava/lang/String; = "key_exchange_event"

.field public static final whitelist ISSUE_ANDROID_PM_53:Ljava/lang/String; = "dhcp_relet_event"

.field public static final whitelist ISSUE_ANDROID_PM_54:Ljava/lang/String; = "data_call_count"

.field public static final whitelist ISSUE_ANDROID_PM_55:Ljava/lang/String; = "no_service_time"

.field public static final whitelist ISSUE_ANDROID_PM_56:Ljava/lang/String; = "reselect_per_min"

.field public static final whitelist ISSUE_ANDROID_PM_57:Ljava/lang/String; = "sms_send_count"

.field public static final whitelist ISSUE_ANDROID_PM_58:Ljava/lang/String; = "background_music"

.field public static final whitelist ISSUE_ANDROID_PM_59:Ljava/lang/String; = "background_download"

.field public static final whitelist ISSUE_ANDROID_PM_60:Ljava/lang/String; = "wifi_wakeup"

.field public static final whitelist ISSUE_ANDROID_PM_61:Ljava/lang/String; = "modem_wakeup"

.field public static final whitelist ISSUE_ANDROID_PM_62:Ljava/lang/String; = "alarm_wakeup"

.field public static final whitelist ISSUE_ANDROID_PM_63:Ljava/lang/String; = "base_subsystem"

.field public static final whitelist ISSUE_ANDROID_PM_64:Ljava/lang/String; = "power_other"

.field public static final whitelist ISSUE_ANDROID_REBOOT_FROM_BLOCKED:Ljava/lang/String; = "reboot_from_blocked"

.field public static final whitelist ISSUE_ANDROID_SKIP_FRAMES:Ljava/lang/String; = "skip_frames"

.field public static final whitelist ISSUE_ANDROID_SYSTEM_REBOOT_FROM_BLOCKED:Ljava/lang/String; = "system_server_reboot_from_blocked"

.field public static final whitelist ISSUE_ANDROID_VENUS_CRASH:Ljava/lang/String; = "venus_crash"

.field public static final whitelist ISSUE_ANDROID_WCN_CRASH:Ljava/lang/String; = "wcn_crash"

.field public static final whitelist ISSUE_KERNEL_HANG:Ljava/lang/String; = "HANG"

.field public static final whitelist ISSUE_KERNEL_HARDWARE_REBOOT:Ljava/lang/String; = "Hardware Reboot"

.field public static final whitelist ISSUE_KERNEL_HWT:Ljava/lang/String; = "HWT"

.field public static final whitelist ISSUE_KERNEL_PANIC:Ljava/lang/String; = "panic"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_AS_FAILED:Ljava/lang/String; = "as_failed"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_AUTHENTICATION_REJECT:Ljava/lang/String; = "authentication_reject"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_CARD_DROP_RX_BREAK:Ljava/lang/String; = "card_drop_rx_break"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_CARD_DROP_TIME_OUT:Ljava/lang/String; = "card_drop_time_out"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_DATA_NOT_ALLOWED:Ljava/lang/String; = "data_no_allowed"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_DATA_NO_AVAILABLE_APN:Ljava/lang/String; = "data_no_acailable_apn"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_DATA_SET_UP_DATA_ERROR:Ljava/lang/String; = "data_set_up_data_error"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_GSM_T3126_EXPIRED:Ljava/lang/String; = "gsm_t3126_expired"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_LTE_AS_FAILED:Ljava/lang/String; = "lte_as_failed"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_LTE_REG_REJECT:Ljava/lang/String; = "ltc_reg_reject"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_LTE_REG_WITHOUT_LTE:Ljava/lang/String; = "lte_reg_without_lte"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_MCFG_ICCID_FAILED:Ljava/lang/String; = "mcfg_iccid_failed"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_MO_DROP:Ljava/lang/String; = "mo_drop"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_MT_CSFB:Ljava/lang/String; = "mt_csfb"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_MT_PCH:Ljava/lang/String; = "mt_pch"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_MT_RACH:Ljava/lang/String; = "mt_rach"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_MT_REJECT:Ljava/lang/String; = "mt_reject"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_MT_RLF:Ljava/lang/String; = "mt_rlf"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_MT_RRC:Ljava/lang/String; = "mt_rrc"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_REG_REJECT:Ljava/lang/String; = "reg_rejetc"

.field public static final whitelist ISSUE_SYS_OEM_NW_DIAG_CAUSE_RF_MIPI_HW_FAILED:Ljava/lang/String; = "rf_mipi_hw_failed"

.field public static final whitelist ISSUE_WIFI_CONNECTING_FAILURE:Ljava/lang/String; = "wifi_connecting_failure"

.field public static final whitelist ISSUE_WIFI_LOAD_DRIVER_FAILURE:Ljava/lang/String; = "wifi_load_driver_failure"

.field public static final whitelist ISSUE_WIFI_TURN_ON_OFF_FAILURE:Ljava/lang/String; = "wifi_turn_on_off_failure"

.field public static final whitelist KERNEL_PANIC_TAG:Ljava/lang/String; = "SYSTEM_LAST_KMSG"

.field public static final whitelist KERNEL_PANIC_TAG_BEGIN:Ljava/lang/String; = "<kernel-panic-begin>\n"

.field public static final whitelist KERNEL_PANIC_TAG_END:Ljava/lang/String; = "<kernel-panic-end>\n"

.field public static final whitelist KERNEL_TAG:Ljava/lang/String; = "KERNEL"

.field private static final blacklist LOG_STRING_LOCALE:Ljava/util/Locale;

.field public static final whitelist MULTIMEDIA_TAG:Ljava/lang/String; = "MULTIMEDIA"

.field public static final whitelist NETWORK_TAG:Ljava/lang/String; = "NETWORK"

.field public static final whitelist SERVICE_NAME:Ljava/lang/String; = "additionald"

.field public static final whitelist SHUTDOWN_TAG:Ljava/lang/String; = "SYSTEM_SHUTDOWN"

.field public static final whitelist SHUTDOWN_TAG_BEGIN:Ljava/lang/String; = "<shutdown-begin>\n"

.field public static final whitelist SHUTDOWN_TAG_END:Ljava/lang/String; = "<shutdown-end>\n"

.field public static final whitelist SPMI_BEGIN:Ljava/lang/String; = "<spmi-begin>\n"

.field public static final whitelist SPMI_END:Ljava/lang/String; = "<spmi-end>\n"

.field public static final whitelist SPMI_TAG:Ljava/lang/String; = "SPMI"

.field private static final blacklist STAMP_EVENT_STASH_LIMIT:I = 0x32

.field private static final blacklist STAMP_STASH_LIST:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/OplusManager$StampEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STAMP_SYNC_LOCK:Ljava/lang/Object;

.field public static final whitelist TAG:Ljava/lang/String; = "OplusManager"

.field public static final whitelist TYEP_Android_VER:I = 0x2

.field public static final whitelist TYEP_BUILD_VER:I = 0x3

.field public static final whitelist TYEP_DEVICE:I = 0x4

.field public static final whitelist TYEP_PHONE_IMEI:I = 0x1

.field public static final whitelist TYPE_ANDROID_ADSP_CRASH:I = 0x2c

.field public static final whitelist TYPE_ANDROID_AVERAGE_CURRENT_EVENT:I = 0x25

.field public static final whitelist TYPE_ANDROID_BACK_KEY:I = 0x21

.field public static final whitelist TYPE_ANDROID_CAMERA:I = 0x1c

.field public static final whitelist TYPE_ANDROID_CHARGER_PLUGIN_625:I = 0x271

.field public static final whitelist TYPE_ANDROID_CHARGER_PLUGOUT_626:I = 0x272

.field public static final whitelist TYPE_ANDROID_CRASH:I = 0x16

.field public static final whitelist TYPE_ANDROID_FP_DIE:I = 0x2f

.field public static final whitelist TYPE_ANDROID_FP_HW_ERROR:I = 0x31

.field public static final whitelist TYPE_ANDROID_FP_RESET_BYHM:I = 0x30

.field public static final whitelist TYPE_ANDROID_HOME_KEY:I = 0x1f

.field public static final whitelist TYPE_ANDROID_INPUTMETHOD_FAIL:I = 0x2b

.field public static final whitelist TYPE_ANDROID_INSTALL_FAILD:I = 0x28

.field public static final whitelist TYPE_ANDROID_LAUNCH_ACTIVITY:I = 0x27

.field public static final whitelist TYPE_ANDROID_MENU_KEY:I = 0x20

.field public static final whitelist TYPE_ANDROID_OTA_FAILD:I = 0x29

.field public static final whitelist TYPE_ANDROID_OTA_UPGRADE:I = 0x1d

.field public static final whitelist TYPE_ANDROID_PM_EVENT_50:I = 0x32

.field public static final whitelist TYPE_ANDROID_PM_EVENT_51:I = 0x33

.field public static final whitelist TYPE_ANDROID_PM_EVENT_52:I = 0x34

.field public static final whitelist TYPE_ANDROID_PM_EVENT_53:I = 0x35

.field public static final whitelist TYPE_ANDROID_PM_EVENT_54:I = 0x36

.field public static final whitelist TYPE_ANDROID_PM_EVENT_55:I = 0x37

.field public static final whitelist TYPE_ANDROID_PM_EVENT_56:I = 0x38

.field public static final whitelist TYPE_ANDROID_PM_EVENT_57:I = 0x39

.field public static final whitelist TYPE_ANDROID_PM_EVENT_58:I = 0x3a

.field public static final whitelist TYPE_ANDROID_PM_EVENT_59:I = 0x3b

.field public static final whitelist TYPE_ANDROID_PM_EVENT_60:I = 0x3c

.field public static final whitelist TYPE_ANDROID_PM_EVENT_61:I = 0x3d

.field public static final whitelist TYPE_ANDROID_PM_EVENT_62:I = 0x3e

.field public static final whitelist TYPE_ANDROID_PM_EVENT_63:I = 0x3f

.field public static final whitelist TYPE_ANDROID_PM_EVENT_64:I = 0x40

.field public static final whitelist TYPE_ANDROID_POWER_KEY:I = 0x24

.field public static final whitelist TYPE_ANDROID_REBOOT_HANG:I = 0x7a

.field public static final whitelist TYPE_ANDROID_REBOOT_HARDWARE_REBOOT:I = 0x79

.field public static final whitelist TYPE_ANDROID_REBOOT_HWT:I = 0x78

.field public static final whitelist TYPE_ANDROID_SKIPFRAMES:I = 0x26

.field public static final whitelist TYPE_ANDROID_SPMI:I = 0x18

.field public static final whitelist TYPE_ANDROID_SYSTEM_REBOOT_FROM_BLOCKED:I = 0x1a

.field public static final whitelist TYPE_ANDROID_UNKNOWN_REBOOT:I = 0x2a

.field public static final whitelist TYPE_ANDROID_USB:I = 0x1e

.field public static final whitelist TYPE_ANDROID_VENUS_CRASH:I = 0x2d

.field public static final whitelist TYPE_ANDROID_VOLDOWN_KEY:I = 0x23

.field public static final whitelist TYPE_ANDROID_VOLUP_KEY:I = 0x22

.field public static final whitelist TYPE_ANDROID_WCN_CRASH:I = 0x2e

.field public static final whitelist TYPE_BATTERY_CHARGE_HISTORY:I = 0x8

.field public static final whitelist TYPE_CRITICAL_DATA_SIZE:I = 0x200

.field private static final blacklist TYPE_DATA_DEFAULT_SIZE:I = 0x100

.field private static final blacklist TYPE_DATA_SIZE_OFFSET:I = 0xa

.field public static final whitelist TYPE_HW_SHUTDOWN:I = 0x5

.field private static final blacklist TYPE_INDEX:I = 0x13

.field public static final whitelist TYPE_LOGSIZE:I = 0x3fe

.field public static final whitelist TYPE_LOGVER:I = 0x0

.field public static final whitelist TYPE_MODERN:I = 0x17

.field private static final blacklist TYPE_OFFSET:I = 0x400

.field public static final whitelist TYPE_OTA_FLAG:I = 0x6

.field public static final whitelist TYPE_PANIC:I = 0x258

.field public static final whitelist TYPE_REBOOT:I = 0x15

.field public static final whitelist TYPE_REBOOT_FROM_BLOCKED:I = 0x1b

.field public static final whitelist TYPE_RESMON:I = 0x19

.field public static final whitelist TYPE_ROOT_FLAG:I = 0x7

.field public static final whitelist TYPE_SHUTDOWN:I = 0x14

.field public static final whitelist TYPE_SYMBOL_VERSION_DISAGREE:I = 0x323

.field public static final whitelist TYPE_WDI_EXCEPTION:I = 0x324

.field public static final whitelist TYPE_WIFI_CONNECT_FAILED:I = 0x320

.field private static blacklist sService:Landroid/os/IOplusService;

.field private static blacklist sStampService:Lcom/oplus/exsystemservice/postman/IOplusStampService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 195
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Landroid/os/OplusManager;->LOG_STRING_LOCALE:Ljava/util/Locale;

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/OplusManager;->STAMP_SYNC_LOCK:Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/os/OplusManager;->STAMP_STASH_LIST:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist cleanItem(I)I
    .locals 1
    .param p0, "id"    # I

    .line 640
    invoke-static {p0}, Landroid/os/OplusManager;->nativeCleanItem(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getBuildVersion()Ljava/lang/String;
    .locals 2

    .line 347
    const-string/jumbo v0, "ro.build.version.ota"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "ver":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    return-object v0

    .line 349
    :cond_1
    :goto_0
    const-string/jumbo v1, "null"

    return-object v1
.end method

.method public static whitelist getLongCheck(JJ)J
    .locals 2
    .param p0, "val"    # J
    .param p2, "def"    # J

    .line 827
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method

.method public static whitelist getOplusRomVersion()Ljava/lang/String;
    .locals 1

    .line 343
    sget-object v0, Lcom/oplus/os/OplusBuild$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getTime()Ljava/lang/String;
    .locals 7

    .line 325
    const-string v0, ""

    .line 327
    .local v0, "strTime":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 328
    .local v1, "time":J
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 329
    .local v3, "format":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 330
    .local v4, "d1":Ljava/util/Date;
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static whitelist getVersionFOrAndroid()Ljava/lang/String;
    .locals 1

    .line 335
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string/jumbo v0, "null"

    return-object v0

    .line 338
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist incrementCriticalData(ILjava/lang/String;)I
    .locals 1
    .param p0, "type"    # I
    .param p1, "desc"    # Ljava/lang/String;

    .line 520
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0, p1}, Landroid/os/OplusManager;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final whitelist init()Z
    .locals 4

    .line 206
    sget-object v0, Landroid/os/OplusManager;->sService:Landroid/os/IOplusService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 207
    return v1

    .line 209
    :cond_0
    const/4 v0, 0x3

    .line 212
    .local v0, "times":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to get additionald service instance! times = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v2, "additionald"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOplusService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusService;

    move-result-object v2

    sput-object v2, Landroid/os/OplusManager;->sService:Landroid/os/IOplusService;

    .line 215
    if-eqz v2, :cond_1

    .line 216
    return v1

    .line 218
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    .line 219
    const/4 v1, 0x0

    return v1

    .line 218
    :cond_2
    goto :goto_0
.end method

.method private static blacklist initStampService()Z
    .locals 4

    .line 223
    sget-object v0, Landroid/os/OplusManager;->sStampService:Lcom/oplus/exsystemservice/postman/IOplusStampService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 224
    return v1

    .line 226
    :cond_0
    const/4 v0, 0x3

    .line 229
    .local v0, "times":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to get stamp service instance! times = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string/jumbo v2, "stamp_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/exsystemservice/postman/IOplusStampService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/exsystemservice/postman/IOplusStampService;

    move-result-object v2

    sput-object v2, Landroid/os/OplusManager;->sStampService:Lcom/oplus/exsystemservice/postman/IOplusStampService;

    .line 232
    if-eqz v2, :cond_1

    .line 233
    return v1

    .line 235
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    .line 236
    const/4 v1, 0x0

    return v1

    .line 235
    :cond_2
    goto :goto_0
.end method

.method public static whitelist isEmmcLimit(I)Z
    .locals 8
    .param p0, "type"    # I

    .line 611
    const-string v0, "OplusManager"

    const/16 v1, 0x1388

    .line 613
    .local v1, "EMMCLIMIT":I
    add-int/lit16 v2, p0, 0x400

    const/16 v3, 0x100

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/OplusManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "ref":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, "refSplit":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 617
    :try_start_1
    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 618
    .local v5, "count":I
    const/16 v6, 0x1388

    if-ge v5, v6, :cond_0

    .line 619
    return v4

    .line 623
    .end local v5    # "count":I
    :cond_0
    goto :goto_0

    .line 621
    :catch_0
    move-exception v5

    .line 622
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "catch e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 623
    nop

    .line 632
    .end local v2    # "ref":Ljava/lang/String;
    .end local v3    # "refSplit":[Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "limit to record type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v0, 0x1

    return v0

    .line 626
    .restart local v2    # "ref":Ljava/lang/String;
    .restart local v3    # "refSplit":[Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string/jumbo v5, "the refs is not formative"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 627
    return v4

    .line 629
    .end local v2    # "ref":Ljava/lang/String;
    .end local v3    # "refSplit":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 630
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEmmcLimit exception e = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return v4
.end method

.method private static native blacklist nativeCleanItem(I)I
.end method

.method private static native blacklist nativeReadCriticalData(II)Ljava/lang/String;
.end method

.method private static native blacklist nativeReadRawPartition(II)Ljava/lang/String;
.end method

.method private static native blacklist nativeSyncCahceToEmmc()I
.end method

.method private static native blacklist nativeTestFunc(II)Ljava/lang/String;
.end method

.method private static native blacklist nativeUpdateConfig()I
.end method

.method private static native blacklist nativeWriteCriticalData(ILjava/lang/String;)I
.end method

.method private static native blacklist nativeWriteRawPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static whitelist onDeleteStampId(Ljava/lang/String;)V
    .locals 4
    .param p0, "eventId"    # Ljava/lang/String;

    .line 733
    sget-object v0, Landroid/os/OplusManager;->sStampService:Lcom/oplus/exsystemservice/postman/IOplusStampService;

    const-string v1, "OplusManager"

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/OplusManager;->initStampService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    const-string v0, "can not init stamp service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void

    .line 738
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/OplusManager;->sStampService:Lcom/oplus/exsystemservice/postman/IOplusStampService;

    if-eqz v0, :cond_1

    .line 739
    invoke-interface {v0, p0}, Lcom/oplus/exsystemservice/postman/IOplusStampService;->sendDeleteStampId(Ljava/lang/String;)V

    .line 740
    const-string/jumbo v0, "send on delete stamp success"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :cond_1
    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static whitelist onStamp(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p0, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 671
    .local p1, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/os/OplusManager;->sStampService:Lcom/oplus/exsystemservice/postman/IOplusStampService;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/OplusManager;->initStampService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    sget-object v0, Landroid/os/OplusManager;->STAMP_STASH_LIST:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_0

    .line 673
    new-instance v1, Landroid/os/OplusManager$StampEvent;

    invoke-direct {v1}, Landroid/os/OplusManager$StampEvent;-><init>()V

    .line 674
    .local v1, "stampEvent":Landroid/os/OplusManager$StampEvent;
    iput-object p0, v1, Landroid/os/OplusManager$StampEvent;->eventId:Ljava/lang/String;

    .line 675
    iput-object p1, v1, Landroid/os/OplusManager$StampEvent;->logMap:Ljava/util/Map;

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/OplusManager$StampEvent;->timestamp:Ljava/lang/String;

    .line 677
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 679
    .end local v1    # "stampEvent":Landroid/os/OplusManager$StampEvent;
    :cond_0
    const-string v0, "OplusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to send on stamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-void

    .line 684
    :cond_1
    :try_start_0
    sget-object v0, Landroid/os/OplusManager;->sStampService:Lcom/oplus/exsystemservice/postman/IOplusStampService;

    if-eqz v0, :cond_2

    .line 685
    const-wide/16 v1, -0x1

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/oplus/exsystemservice/postman/IOplusStampService;->sendOnStampEvent(Ljava/lang/String;Ljava/util/Map;J)I

    .line 686
    const-string v0, "OplusManager"

    const-string/jumbo v1, "send on stamp success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :cond_2
    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Landroid/os/OplusManager;->STAMP_SYNC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_1
    sget-object v1, Landroid/os/OplusManager;->STAMP_STASH_LIST:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/OplusManager$StampEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    .local v2, "stampEvent":Landroid/os/OplusManager$StampEvent;
    :try_start_2
    sget-object v3, Landroid/os/OplusManager;->sStampService:Lcom/oplus/exsystemservice/postman/IOplusStampService;

    if-eqz v3, :cond_3

    .line 696
    iget-object v4, v2, Landroid/os/OplusManager$StampEvent;->eventId:Ljava/lang/String;

    iget-object v5, v2, Landroid/os/OplusManager$StampEvent;->logMap:Ljava/util/Map;

    iget-object v6, v2, Landroid/os/OplusManager$StampEvent;->timestamp:Ljava/lang/String;

    .line 697
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 696
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/oplus/exsystemservice/postman/IOplusStampService;->sendOnStampEvent(Ljava/lang/String;Ljava/util/Map;J)I

    .line 698
    const-string v3, "OplusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "send on stamp success "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/os/OplusManager$StampEvent;->eventId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 702
    :cond_3
    goto :goto_2

    .line 700
    :catch_1
    move-exception v3

    .line 701
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "OplusManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    .end local v2    # "stampEvent":Landroid/os/OplusManager$StampEvent;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 704
    :cond_4
    sget-object v1, Landroid/os/OplusManager;->STAMP_STASH_LIST:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 705
    monitor-exit v0

    .line 706
    return-void

    .line 705
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static whitelist rawQueryEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "selectQuery"    # Ljava/lang/String;

    .line 725
    sget-object v0, Landroid/os/OplusManager;->sStampService:Lcom/oplus/exsystemservice/postman/IOplusStampService;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/OplusManager;->initStampService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    const-string v0, "OplusManager"

    const-string v1, "can not init stamp service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return-void

    .line 730
    :cond_0
    return-void
.end method

.method public static whitelist readAllStamp(Ljava/lang/String;Landroid/os/OplusManager$IStampCallBack;)V
    .locals 2
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "cb"    # Landroid/os/OplusManager$IStampCallBack;

    .line 709
    sget-object v0, Landroid/os/OplusManager;->sStampService:Lcom/oplus/exsystemservice/postman/IOplusStampService;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/OplusManager;->initStampService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    const-string v0, "OplusManager"

    const-string v1, "can not init stamp service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void

    .line 714
    :cond_0
    return-void
.end method

.method public static whitelist readCriticalData(I)I
    .locals 5
    .param p0, "type"    # I

    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "res":I
    const/16 v1, 0x10

    invoke-static {p0, v1}, Landroid/os/OplusManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "dataString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 278
    return v0

    .line 280
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 285
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    .line 290
    goto :goto_0

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read critical data failed!! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 282
    :cond_2
    :goto_1
    return v0
.end method

.method public static whitelist readCriticalData(II)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I
    .param p1, "size"    # I

    .line 295
    const/4 v0, 0x0

    .line 298
    .local v0, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/OplusManager;->nativeReadCriticalData(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 304
    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusManager"

    const-string/jumbo v3, "read Critical Data exception!\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static whitelist readLastStamp(Ljava/lang/String;ILandroid/os/OplusManager$IStampCallBack;)V
    .locals 2
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "lastDays"    # I
    .param p2, "cb"    # Landroid/os/OplusManager$IStampCallBack;

    .line 717
    sget-object v0, Landroid/os/OplusManager;->sStampService:Lcom/oplus/exsystemservice/postman/IOplusStampService;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/OplusManager;->initStampService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    const-string v0, "OplusManager"

    const-string v1, "can not init stamp service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return-void

    .line 722
    :cond_0
    return-void
.end method

.method public static whitelist readRawPartition(II)Ljava/lang/String;
    .locals 4
    .param p0, "offset"    # I
    .param p1, "size"    # I

    .line 246
    const/4 v0, 0x0

    .line 249
    .local v0, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/OplusManager;->nativeReadRawPartition(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 254
    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusManager"

    const-string/jumbo v3, "read Raw Partition exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static whitelist recordEventForLog(ILjava/lang/String;)V
    .locals 4
    .param p0, "event"    # I
    .param p1, "log"    # Ljava/lang/String;

    .line 441
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 449
    :pswitch_1
    const/16 v0, 0x2b

    const-string v1, "ANDROID"

    const-string/jumbo v2, "inputmethod_fail"

    const-string/jumbo v3, "type_issue_inputmethod_fail"

    invoke-static {v0, p1, v1, v2, v3}, Landroid/os/OplusManager;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    goto :goto_0

    .line 447
    :pswitch_2
    goto :goto_0

    .line 444
    :pswitch_3
    nop

    .line 460
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static whitelist sendQualityDCSEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 786
    .local p1, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/os/OplusManager;->sService:Landroid/os/IOplusService;

    const-string v1, "OplusManager"

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/OplusManager;->init()Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    const-string/jumbo v0, "sendOnQualityDCSEvent failed. Can not init the service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void

    .line 791
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/OplusManager;->sService:Landroid/os/IOplusService;

    invoke-interface {v0, p0, p1}, Landroid/os/IOplusService;->sendQualityDCSEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 792
    const-string/jumbo v0, "sendOnQualityDCSEvent success"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static whitelist syncCacheToEmmc()I
    .locals 1

    .line 644
    invoke-static {}, Landroid/os/OplusManager;->nativeSyncCahceToEmmc()I

    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist testFunc(II)I
    .locals 1
    .param p0, "id"    # I
    .param p1, "size"    # I

    .line 654
    invoke-static {p0, p1}, Landroid/os/OplusManager;->nativeTestFunc(II)Ljava/lang/String;

    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist updateConfig()I
    .locals 1

    .line 649
    invoke-static {}, Landroid/os/OplusManager;->nativeUpdateConfig()I

    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist updateLogReference(ILjava/lang/String;Z)I
    .locals 16
    .param p0, "type"    # I
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "isBackup"    # Z

    .line 562
    move/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, -0x1

    .line 563
    .local v3, "res":I
    const/4 v4, 0x0

    .line 565
    .local v4, "ref":Ljava/lang/String;
    const-string v5, "catch e = "

    const/16 v0, 0x100

    const-string v6, "OplusManager"

    if-eqz p2, :cond_0

    .line 566
    add-int/lit16 v7, v1, 0x400

    :try_start_0
    invoke-static {v7, v0}, Landroid/os/OplusManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateLogReference read backup type="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit16 v7, v1, 0x400

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ref="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_0
    invoke-static {v1, v0}, Landroid/os/OplusManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ref = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 576
    :goto_0
    nop

    .line 578
    const/4 v7, 0x0

    const/4 v8, 0x3

    const-string v9, "%d:%s:%d"

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 581
    :cond_1
    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 582
    .local v12, "refSplit":[Ljava/lang/String;
    if-eqz v12, :cond_3

    array-length v0, v12

    if-lt v0, v10, :cond_3

    .line 584
    :try_start_1
    aget-object v0, v12, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 585
    .local v0, "count":I
    aget-object v13, v12, v11

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 586
    sget-object v13, Landroid/os/OplusManager;->LOG_STRING_LOCALE:Ljava/util/Locale;

    new-array v14, v8, [Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v7

    aput-object v2, v14, v11

    add-int/lit8 v15, v0, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v10

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 588
    :cond_2
    sget-object v13, Landroid/os/OplusManager;->LOG_STRING_LOCALE:Ljava/util/Locale;

    new-array v14, v8, [Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v7

    aput-object v2, v14, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v10

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    goto :goto_1

    .line 591
    .end local v0    # "count":I
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    sget-object v5, Landroid/os/OplusManager;->LOG_STRING_LOCALE:Ljava/util/Locale;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v7

    aput-object v2, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v10

    invoke-static {v5, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 594
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_3

    .line 597
    :cond_3
    const-string/jumbo v0, "update can not get any keyword"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    sget-object v0, Landroid/os/OplusManager;->LOG_STRING_LOCALE:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    aput-object v2, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v10

    invoke-static {v0, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 579
    .end local v12    # "refSplit":[Ljava/lang/String;
    :cond_4
    :goto_2
    sget-object v0, Landroid/os/OplusManager;->LOG_STRING_LOCALE:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    aput-object v2, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v10

    invoke-static {v0, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 601
    :goto_3
    if-eqz p2, :cond_5

    .line 602
    add-int/lit16 v0, v1, 0x400

    invoke-static {v0, v4}, Landroid/os/OplusManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v0

    .end local v3    # "res":I
    .local v0, "res":I
    goto :goto_4

    .line 604
    .end local v0    # "res":I
    .restart local v3    # "res":I
    :cond_5
    invoke-static {v1, v4}, Landroid/os/OplusManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v0

    .line 606
    .end local v3    # "res":I
    .restart local v0    # "res":I
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLogReference res="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return v0

    .line 573
    .end local v0    # "res":I
    .restart local v3    # "res":I
    :catch_1
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v5, -0x1

    return v5
.end method

.method public static whitelist writeCriticalData(ILjava/lang/String;)I
    .locals 4
    .param p0, "id"    # I
    .param p1, "content"    # Ljava/lang/String;

    .line 309
    const/4 v0, -0x1

    .line 312
    .local v0, "res":I
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f6

    if-le v1, v2, :cond_0

    .line 313
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 315
    :cond_0
    invoke-static {p0, p1}, Landroid/os/OplusManager;->nativeWriteCriticalData(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 319
    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusManager"

    const-string/jumbo v3, "write Critical Data exception!\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static whitelist writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 20
    .param p0, "type"    # I
    .param p1, "logstring"    # Ljava/lang/String;
    .param p2, "tagString"    # Ljava/lang/String;
    .param p3, "issue"    # Ljava/lang/String;
    .param p4, "isOnlyAddToDropbox"    # I

    .line 470
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const/4 v11, -0x1

    .line 471
    .local v11, "res":I
    if-nez v9, :cond_0

    .line 472
    return v11

    .line 474
    :cond_0
    const-string v0, ""

    .line 475
    .local v0, "tagbegin":Ljava/lang/String;
    const-string v1, ""

    .line 476
    .local v1, "tagend":Ljava/lang/String;
    sget-object v2, Landroid/os/OplusManager;->LOG_STRING_LOCALE:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/OplusManager;->getTime()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "log-time: %s"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 477
    .local v12, "time":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "log-buildTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ro.build.version.ota"

    const-string v7, "UNKNOWN"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 478
    .local v13, "buildTime":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "log-romVersion: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/OplusManager;->getOplusRomVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 479
    .local v14, "romVersion":Ljava/lang/String;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "LOGTYPE: %d\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 481
    .local v15, "logType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeLogToPartition: logType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v8, p3

    goto :goto_1

    .line 485
    :cond_2
    :goto_0
    move-object/from16 v2, p2

    move-object v8, v2

    .line 487
    .end local p3    # "issue":Ljava/lang/String;
    .local v8, "issue":Ljava/lang/String;
    :goto_1
    const-string v2, "ANDROID"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "-end>\n"

    const-string v5, "-begin>\n"

    if-eqz v2, :cond_3

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<android-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n<android-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v0

    move-object v6, v1

    goto/16 :goto_2

    .line 490
    :cond_3
    const-string v2, "MULTIMEDIA"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<multimedia-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n<multimedia-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v0

    move-object v6, v1

    goto/16 :goto_2

    .line 493
    :cond_4
    const-string v2, "NETWORK"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<network-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n<network-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v0

    move-object v6, v1

    goto/16 :goto_2

    .line 496
    :cond_5
    const-string v2, "KERNEL"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<kernel-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n<kernel-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v0

    move-object v6, v1

    goto/16 :goto_2

    .line 499
    :cond_6
    const-string v2, "CONNECTIVITY"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<connectivity-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n<connectivity-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v0

    move-object v6, v1

    goto :goto_2

    .line 502
    :cond_7
    const-string v2, "CAMERA"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<camera-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n<camera-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v0

    move-object v6, v1

    .line 509
    .end local v0    # "tagbegin":Ljava/lang/String;
    .end local v1    # "tagend":Ljava/lang/String;
    .local v6, "tagend":Ljava/lang/String;
    .local v7, "tagbegin":Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 516
    .local v16, "log":Ljava/lang/String;
    move/from16 v0, p0

    move-object v1, v7

    move-object v2, v15

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v17, v6

    .end local v6    # "tagend":Ljava/lang/String;
    .local v17, "tagend":Ljava/lang/String;
    move-object/from16 v6, p1

    move-object/from16 v18, v7

    .end local v7    # "tagbegin":Ljava/lang/String;
    .local v18, "tagbegin":Ljava/lang/String;
    move-object/from16 v7, v17

    move-object/from16 v19, v8

    .end local v8    # "issue":Ljava/lang/String;
    .local v19, "issue":Ljava/lang/String;
    move/from16 v8, p4

    invoke-static/range {v0 .. v8}, Landroid/os/OplusManager;->writeRawPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 506
    .end local v16    # "log":Ljava/lang/String;
    .end local v17    # "tagend":Ljava/lang/String;
    .end local v18    # "tagbegin":Ljava/lang/String;
    .end local v19    # "issue":Ljava/lang/String;
    .restart local v0    # "tagbegin":Ljava/lang/String;
    .restart local v1    # "tagend":Ljava/lang/String;
    .restart local v8    # "issue":Ljava/lang/String;
    :cond_8
    const-string/jumbo v2, "the invalid tag"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return v11
.end method

.method public static whitelist writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "type"    # I
    .param p1, "logstring"    # Ljava/lang/String;
    .param p2, "tagString"    # Ljava/lang/String;
    .param p3, "issue"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 530
    const/4 v0, -0x1

    .line 531
    .local v0, "res":I
    const/4 v1, -0x1

    .line 533
    .local v1, "upRes":I
    const/4 v2, -0x1

    if-nez p1, :cond_0

    .line 534
    const/4 v0, 0x0

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 537
    invoke-static {p0, p1, p2, p3, v2}, Landroid/os/OplusManager;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 539
    :cond_1
    const-string v3, "OplusManager"

    const-string/jumbo v4, "log is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v0, 0x0

    .line 545
    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, p4, v3}, Landroid/os/OplusManager;->updateLogReference(ILjava/lang/String;Z)I

    move-result v1

    .line 546
    const/16 v3, 0x13

    const/4 v4, 0x1

    if-le p0, v3, :cond_2

    .line 547
    invoke-static {p0, p4, v4}, Landroid/os/OplusManager;->updateLogReference(ILjava/lang/String;Z)I

    move-result v1

    .line 550
    :cond_2
    if-ne v1, v2, :cond_3

    if-ne v0, v2, :cond_3

    .line 551
    const/4 v2, -0x3

    return v2

    .line 552
    :cond_3
    if-ne v1, v2, :cond_4

    if-eq v0, v2, :cond_4

    .line 553
    const/4 v2, -0x2

    return v2

    .line 554
    :cond_4
    if-eq v1, v2, :cond_5

    if-ne v0, v2, :cond_5

    .line 555
    return v2

    .line 557
    :cond_5
    return v4
.end method

.method public static whitelist writeLogToPartition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "logstring"    # Ljava/lang/String;
    .param p1, "tagString"    # Ljava/lang/String;
    .param p2, "issue"    # Ljava/lang/String;

    .line 464
    const-string v0, "OplusManager"

    const-string/jumbo v1, "this is the old api"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist writeRawPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p0, "type"    # I
    .param p1, "tagbegin"    # Ljava/lang/String;
    .param p2, "logType"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;
    .param p4, "buildTime"    # Ljava/lang/String;
    .param p5, "romVersion"    # Ljava/lang/String;
    .param p6, "logstring"    # Ljava/lang/String;
    .param p7, "tagend"    # Ljava/lang/String;
    .param p8, "isAddToDropbox"    # I

    .line 261
    const/4 v0, -0x1

    .line 264
    .local v0, "res":I
    :try_start_0
    invoke-static/range {p0 .. p8}, Landroid/os/OplusManager;->nativeWriteRawPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 269
    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusManager"

    const-string/jumbo v3, "write Raw Partition exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
