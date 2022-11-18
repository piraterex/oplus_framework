.class public interface abstract Landroid/os/ITheiaManagerExt;
.super Ljava/lang/Object;
.source "ITheiaManagerExt.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "ITheiaManagerExt"

.field public static final blacklist TEHIA_RUS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist THEIA_ACTIVITY_PAUSE_TIMEOUT_ENABLE:Ljava/lang/String; = "activityPauseTimedoutEvent"

.field public static final blacklist THEIA_APP_BOOT_TIMEOUT_ENABLE:Ljava/lang/String; = "appBootTimeoutEvent"

.field public static final blacklist THEIA_EVENT_ACTIVITY_PAUSE_TIMEOUT:J = 0x2L

.field public static final blacklist THEIA_EVENT_ALL_WIN_DRAW_TIMEOUT:J = 0x104L

.field public static final blacklist THEIA_EVENT_ANR:J = 0x3L

.field public static final blacklist THEIA_EVENT_APP_BOOT_TIMEOUT:J = 0x1L

.field public static final blacklist THEIA_EVENT_APP_TRANSITION_TIMEOUT:J = 0x103L

.field public static final blacklist THEIA_EVENT_BACKKEY_PANIC:J = 0xf03L

.field public static final blacklist THEIA_EVENT_FRAMEWORK_BLOCK:J = 0x302L

.field public static final blacklist THEIA_EVENT_HARDWARE_ERROR:J = 0x801L

.field public static final blacklist THEIA_EVENT_HECATE:J = 0x411L

.field public static final blacklist THEIA_EVENT_HOMEKEY_PANIC:J = 0xf02L

.field public static final blacklist THEIA_EVENT_HUNGTASK:J = 0x501L

.field public static final blacklist THEIA_EVENT_INIT_HANG:J = 0x503L

.field public static final blacklist THEIA_EVENT_INVAILD:I = -0x1

.field public static final blacklist THEIA_EVENT_LAUNCHER_ANR:J = 0x602L

.field public static final blacklist THEIA_EVENT_LAUNCHER_CRASH:J = 0x601L

.field public static final blacklist THEIA_EVENT_NFW:J = 0x101L

.field public static final blacklist THEIA_EVENT_PWK_LONGPRESS:J = 0xf04L

.field public static final blacklist THEIA_EVENT_PWK_MONITOR:J = 0x201L

.field public static final blacklist THEIA_EVENT_PWK_PANIC:J = 0xf01L

.field public static final blacklist THEIA_EVENT_SCREEN_FREEZE_TIMEOUT:J = 0x105L

.field public static final blacklist THEIA_EVENT_SENSOR_MONITOR_FAR:J = 0x204L

.field public static final blacklist THEIA_EVENT_SENSOR_MONITOR_NEAR:J = 0x203L

.field public static final blacklist THEIA_EVENT_SF_HANG:J = 0x402L

.field public static final blacklist THEIA_EVENT_SF_HANG_WARNING:J = 0x401L

.field public static final blacklist THEIA_EVENT_SYSTEMUI_ANR:J = 0x702L

.field public static final blacklist THEIA_EVENT_SYSTEMUI_CRASH:J = 0x701L

.field public static final blacklist THEIA_EVENT_SYSTEM_SERVER_HALF_WATCHDOG:J = 0x301L

.field public static final blacklist THEIA_EVENT_TOUCHPANEL_PANIC:J = 0xf05L

.field public static final blacklist THEIA_EVENT_TRANSPARENT_WINDOW:J = 0x102L

.field public static final blacklist THEIA_EVENT_TRIGGER_ERROR_UPLOAD:J = 0xe01L

.field public static final blacklist THEIA_EVENT_UITIMEOUT:J = 0x4L

.field public static final blacklist THEIA_EYE_FWK_BLOCK_ENABLE:Ljava/lang/String; = "eyeFrameworkBlockEvent"

.field public static final blacklist THEIA_HALF_WATCHDOG_ENABLE:Ljava/lang/String; = "halfWatchdogEvent"

.field public static final blacklist THEIA_LAUNCHER_ANR_ENABLE:Ljava/lang/String; = "launcherAnrEvent"

.field public static final blacklist THEIA_LAUNCHER_CRASH_ENABLE:Ljava/lang/String; = "launcherCrashEvent"

.field public static final blacklist THEIA_LOGINFO_ANDROID_LOG:I = 0x1

.field public static final blacklist THEIA_LOGINFO_ANR_TRACES:I = 0x4

.field public static final blacklist THEIA_LOGINFO_ANR_TRACES_ONLY_CP:I = 0x10000000

.field public static final blacklist THEIA_LOGINFO_APP_CRASH_HISTORY:I = 0x80

.field public static final blacklist THEIA_LOGINFO_BINDER_INFO:I = 0x20

.field public static final blacklist THEIA_LOGINFO_CPU_INFO:I = 0x100

.field public static final blacklist THEIA_LOGINFO_CPU_INFO_NUM_RAW:I = 0x200

.field public static final blacklist THEIA_LOGINFO_CPU_INFO_OVERALL_RAW:I = 0x400

.field public static final blacklist THEIA_LOGINFO_CPU_INFO_PER_PROCESS_RAW:I = 0x800

.field public static final blacklist THEIA_LOGINFO_DUMPSYS_ACTIVITY:I = 0x4000000

.field public static final blacklist THEIA_LOGINFO_DUMPSYS_MEMINFO:I = 0x10

.field public static final blacklist THEIA_LOGINFO_DUMPSYS_SF:I = 0x8

.field public static final blacklist THEIA_LOGINFO_DUMPSYS_WINDOW:I = 0x8000000

.field public static final blacklist THEIA_LOGINFO_EVENTS_LOG:I = 0x1000

.field public static final blacklist THEIA_LOGINFO_FROZEN_INFO:I = 0x2000

.field public static final blacklist THEIA_LOGINFO_INTERRUPTS_LOG:I = 0x4000

.field public static final blacklist THEIA_LOGINFO_IO_INFO:I = 0x8000

.field public static final blacklist THEIA_LOGINFO_IRQ_INFO:I = 0x10000

.field public static final blacklist THEIA_LOGINFO_KERNEL_LOG:I = 0x2

.field public static final blacklist THEIA_LOGINFO_NULL:I = 0x0

.field public static final blacklist THEIA_LOGINFO_PACKAGE_INFO:I = 0x20000

.field public static final blacklist THEIA_LOGINFO_PROC_MEM_INFO:I = 0x40000

.field public static final blacklist THEIA_LOGINFO_PROP_LOG:I = 0x80000

.field public static final blacklist THEIA_LOGINFO_RADIO_LOG:I = 0x100000

.field public static final blacklist THEIA_LOGINFO_SF_BACKTRACE:I = 0x200000

.field public static final blacklist THEIA_LOGINFO_SYSTRACE:I = 0x20000000

.field public static final blacklist THEIA_LOGINFO_THEIA_DUMPSTATE:I = 0x40

.field public static final blacklist THEIA_LOGINFO_THEIA_INFO:I = 0x400000

.field public static final blacklist THEIA_LOGINFO_THREAD_LIST_INFO:I = 0x800000

.field public static final blacklist THEIA_LOGINFO_TOP_INFO:I = 0x1000000

.field public static final blacklist THEIA_LOGINFO_VMALLOC_INFO:I = 0x2000000

.field public static final blacklist THEIA_NFW_ENABLE:Ljava/lang/String; = "noFocusWindowEvent"

.field public static final blacklist THEIA_SCREEN_FREEZE_TIMEOUT_ENABLE:Ljava/lang/String; = "screenFreezeTimeoutEvent"

.field public static final blacklist THEIA_SYSTEMUI_ANR_ENABLE:Ljava/lang/String; = "systemuiAnrEvent"

.field public static final blacklist THEIA_SYSTEMUI_CRASH_ENABLE:Ljava/lang/String; = "systemuiCrashEvent"

.field public static final blacklist THEIA_TRANSITION_TIMEOUT_ENABLE:Ljava/lang/String; = "transitionTimeoutEvent"

.field public static final blacklist THEIA_TRANSPARENT_WINDOW_ENABLE:Ljava/lang/String; = "transparentWindowEvent"

.field public static final blacklist THEIA_UITIMEOUT_ENABLE:Ljava/lang/String; = "uiTimeoutEvent"

.field public static final blacklist THEIA_WIN_DRAW_TIMEOUT_ENABLE:Ljava/lang/String; = "winDrawTimeoutEvent"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/ITheiaManagerExt;->TEHIA_RUS_MAP:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public blacklist getTheiaEventType(Ljava/lang/String;)J
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 113
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist sendEvent(JJIIJLjava/lang/String;)V
    .locals 0
    .param p1, "theiaID"    # J
    .param p3, "timeStamp"    # J
    .param p5, "pid"    # I
    .param p6, "uid"    # I
    .param p7, "logInfo"    # J
    .param p9, "extraInfo"    # Ljava/lang/String;

    .line 111
    return-void
.end method
