.class public Landroid/util/BoostFramework;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/BoostFramework$ScrollOptimizer;,
        Landroid/util/BoostFramework$WorkloadType;,
        Landroid/util/BoostFramework$Draw;,
        Landroid/util/BoostFramework$Launch;,
        Landroid/util/BoostFramework$Scroll;
    }
.end annotation


# static fields
.field public static final blacklist MPCTLV3_GPU_IS_APP_BG:I = 0x42824000

.field public static final blacklist MPCTLV3_GPU_IS_APP_FG:I = 0x42820000

.field private static final blacklist PERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.Performance"

.field private static final blacklist PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/QPerformance.jar"

.field public static final blacklist PERF_HAL_V22:F = 2.2f

.field public static final blacklist PERF_HAL_V23:F = 2.3f

.field private static final blacklist TAG:Ljava/lang/String; = "BoostFramework"

.field public static final blacklist UXE_EVENT_BINDAPP:I = 0x2

.field public static final blacklist UXE_EVENT_DISPLAYED_ACT:I = 0x3

.field public static final blacklist UXE_EVENT_GAME:I = 0x5

.field public static final blacklist UXE_EVENT_KILL:I = 0x4

.field public static final blacklist UXE_EVENT_PKG_INSTALL:I = 0x8

.field public static final blacklist UXE_EVENT_PKG_UNINSTALL:I = 0x7

.field public static final blacklist UXE_EVENT_SUB_LAUNCH:I = 0x6

.field public static final blacklist UXE_TRIGGER:I = 0x1

.field private static final blacklist UXPERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.UxPerformance"

.field private static final blacklist UXPERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/UxPerformance.jar"

.field public static final blacklist VENDOR_FEEDBACK_LAUNCH_END_POINT:I = 0x1602

.field public static final blacklist VENDOR_FEEDBACK_PA_FW:I = 0x1604

.field public static final blacklist VENDOR_FEEDBACK_WORKLOAD_TYPE:I = 0x1601

.field public static final blacklist VENDOR_HINT_ACTIVITY_BOOST:I = 0x1084

.field public static final blacklist VENDOR_HINT_ANIM_BOOST:I = 0x1083

.field public static final blacklist VENDOR_HINT_APP_UPDATE:I = 0x1092

.field public static final blacklist VENDOR_HINT_BINDAPP:I = 0x10a0

.field public static final blacklist VENDOR_HINT_BOOST_RENDERTHREAD:I = 0x1096

.field public static final blacklist VENDOR_HINT_DRAG_BOOST:I = 0x1087

.field public static final blacklist VENDOR_HINT_DRAG_END:I = 0x1052

.field public static final blacklist VENDOR_HINT_DRAG_START:I = 0x1051

.field public static final blacklist VENDOR_HINT_FIRST_DRAW:I = 0x1042

.field public static final blacklist VENDOR_HINT_FIRST_LAUNCH_BOOST:I = 0x1081

.field public static final blacklist VENDOR_HINT_KILL:I = 0x1093

.field public static final blacklist VENDOR_HINT_MTP_BOOST:I = 0x1086

.field public static final blacklist VENDOR_HINT_PACKAGE_INSTALL_BOOST:I = 0x1088

.field public static final blacklist VENDOR_HINT_PERFORMANCE_MODE:I = 0x1091

.field public static final blacklist VENDOR_HINT_PKG_INSTALL:I = 0x10a3

.field public static final blacklist VENDOR_HINT_PKG_UNINSTALL:I = 0x10a4

.field public static final blacklist VENDOR_HINT_ROTATION_ANIM_BOOST:I = 0x1090

.field public static final blacklist VENDOR_HINT_ROTATION_LATENCY_BOOST:I = 0x1089

.field public static final blacklist VENDOR_HINT_SCROLL_BOOST:I = 0x1080

.field public static final blacklist VENDOR_HINT_SUBSEQ_LAUNCH_BOOST:I = 0x1082

.field public static final blacklist VENDOR_HINT_TAP_EVENT:I = 0x1043

.field public static final blacklist VENDOR_HINT_TOUCH_BOOST:I = 0x1085

.field public static final blacklist VENDOR_HINT_WARM_LAUNCH:I = 0x10a1

.field public static final blacklist VENDOR_T_API_LEVEL:I = 0x20

.field private static blacklist sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

.field private static blacklist sAcquireFunc:Ljava/lang/reflect/Method;

.field private static blacklist sFeedbackFunc:Ljava/lang/reflect/Method;

.field private static blacklist sFeedbackFuncExtn:Ljava/lang/reflect/Method;

.field private static blacklist sIOPStart:Ljava/lang/reflect/Method;

.field private static blacklist sIOPStop:Ljava/lang/reflect/Method;

.field private static blacklist sIsLoaded:Z

.field private static blacklist sPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist sPerfEventFunc:Ljava/lang/reflect/Method;

.field private static blacklist sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

.field private static blacklist sPerfGetPropFunc:Ljava/lang/reflect/Method;

.field private static blacklist sPerfHintFunc:Ljava/lang/reflect/Method;

.field private static blacklist sPerfSyncRequest:Ljava/lang/reflect/Method;

.field private static blacklist sReleaseFunc:Ljava/lang/reflect/Method;

.field private static blacklist sReleaseHandlerFunc:Ljava/lang/reflect/Method;

.field private static blacklist sUXEngineEvents:Ljava/lang/reflect/Method;

.field private static blacklist sUXEngineTrigger:Ljava/lang/reflect/Method;

.field private static blacklist sUxIOPStart:Ljava/lang/reflect/Method;

.field private static blacklist sUxIsLoaded:Z

.field private static blacklist sUxPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

.field private static blacklist sperfHintRenewFunc:Ljava/lang/reflect/Method;


# instance fields
.field public final blacklist board_api_lvl:I

.field public final blacklist board_first_api_lvl:I

.field private blacklist mPerf:Ljava/lang/Object;

.field private blacklist mUxPerf:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/BoostFramework;->sIsLoaded:Z

    .line 59
    const/4 v1, 0x0

    sput-object v1, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    .line 60
    sput-object v1, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    .line 61
    sput-object v1, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    .line 62
    sput-object v1, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    .line 63
    sput-object v1, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    .line 64
    sput-object v1, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    .line 65
    sput-object v1, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    .line 66
    sput-object v1, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    .line 67
    sput-object v1, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    .line 68
    sput-object v1, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

    .line 69
    sput-object v1, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;

    .line 70
    sput-object v1, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    .line 71
    sput-object v1, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

    .line 72
    sput-object v1, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    .line 74
    sput-object v1, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    .line 75
    sput-object v1, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    .line 76
    sput-object v1, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    .line 77
    sput-object v1, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;

    .line 79
    sput-boolean v0, Landroid/util/BoostFramework;->sUxIsLoaded:Z

    .line 80
    sput-object v1, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    .line 81
    sput-object v1, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    .line 55
    const-string/jumbo v0, "ro.board.api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_api_lvl:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 85
    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    .line 172
    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    .line 175
    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 178
    :cond_0
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoostFramework() : Exception_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;Z)V

    .line 190
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isTrusted"    # Z

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    .line 55
    const-string/jumbo v0, "ro.board.api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_api_lvl:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 85
    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    .line 194
    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    .line 197
    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 198
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 199
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 200
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 202
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :cond_0
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 203
    if-eqz p2, :cond_2

    .line 204
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 205
    .restart local v0    # "cons":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_1

    .line 206
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    .line 207
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :cond_1
    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_3
    :goto_0
    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoostFramework() : Exception_3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 5
    .param p1, "isUntrustedDomain"    # Z

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    .line 55
    const-string/jumbo v0, "ro.board.api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_api_lvl:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 85
    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    .line 219
    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    .line 222
    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 223
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 224
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 225
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 227
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :cond_0
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_1
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoostFramework() : Exception_5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist initFunctions()V
    .locals 13

    .line 237
    const-class v0, [I

    const-class v1, Landroid/util/BoostFramework;

    monitor-enter v1

    .line 238
    :try_start_0
    sget-boolean v2, Landroid/util/BoostFramework;->sIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 240
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1
    const-string v6, "com.qualcomm.qti.Performance"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    .line 242
    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    aput-object v0, v6, v4

    .line 243
    .local v6, "argClasses":[Ljava/lang/Class;
    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfLockAcquire"

    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    .line 245
    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    move-object v6, v8

    .line 246
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfHint"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    .line 248
    new-array v8, v5, [Ljava/lang/Class;

    move-object v6, v8

    .line 249
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfLockRelease"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    .line 251
    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    move-object v6, v8

    .line 252
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfLockReleaseHandler"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    .line 254
    new-array v8, v3, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    move-object v6, v8

    .line 255
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetFeedback"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    .line 257
    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    aput-object v0, v8, v2

    move-object v6, v8

    .line 258
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetFeedbackExtn"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    .line 260
    new-array v8, v2, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    move-object v6, v8

    .line 261
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfIOPrefetchStart"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    .line 263
    new-array v8, v5, [Ljava/lang/Class;

    move-object v6, v8

    .line 264
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfIOPrefetchStop"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    .line 266
    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    move-object v6, v8

    .line 267
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetProp"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    .line 269
    const/4 v8, 0x5

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    aput-object v0, v9, v7

    move-object v6, v9

    .line 270
    sget-object v9, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v10, "perfLockAcqAndRelease"

    invoke-virtual {v9, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    .line 272
    new-array v9, v7, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    aput-object v0, v9, v2

    move-object v6, v9

    .line 273
    sget-object v9, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v10, "perfEvent"

    invoke-virtual {v9, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    .line 275
    new-array v9, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    move-object v6, v9

    .line 276
    sget-object v9, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v10, "perfSyncRequest"

    invoke-virtual {v9, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    .line 278
    const/4 v9, 0x7

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v4

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v8

    const/4 v11, 0x6

    aput-object v0, v10, v11

    move-object v6, v10

    .line 280
    sget-object v10, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v12, "perfHintAcqRel"

    invoke-virtual {v10, v12, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

    .line 282
    new-array v9, v9, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    aput-object v0, v9, v11

    move-object v0, v9

    .line 284
    .end local v6    # "argClasses":[Ljava/lang/Class;
    .local v0, "argClasses":[Ljava/lang/Class;
    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfHintRenew"

    invoke-virtual {v6, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :try_start_2
    new-array v6, v5, [Ljava/lang/Class;

    move-object v0, v6

    .line 288
    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetHalVer"

    invoke-virtual {v6, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    goto :goto_0

    .line 290
    :catch_0
    move-exception v6

    .line 291
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v9, "BoostFramework"

    const-string v10, "BoostFramework() : Exception_1 = perfGetHalVer not supported"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v9, 0x0

    sput-object v9, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_4
    new-array v6, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    move-object v0, v6

    .line 297
    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v7, "perfUXEngine_events"

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    .line 300
    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    move-object v0, v6

    .line 301
    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v7, "perfUXEngine_trigger"

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 305
    goto :goto_1

    .line 303
    :catch_1
    move-exception v6

    .line 304
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v7, "BoostFramework"

    const-string v8, "BoostFramework() : Exception_4 = PreferredApps not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    sput-boolean v4, Landroid/util/BoostFramework;->sIsLoaded:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 311
    .end local v0    # "argClasses":[Ljava/lang/Class;
    goto :goto_2

    .line 309
    :catch_2
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v6, "BoostFramework"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BoostFramework() : Exception_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 315
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    const-string v0, "com.qualcomm.qti.UxPerformance"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    .line 317
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v5

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v3

    .line 318
    .local v0, "argUxClasses":[Ljava/lang/Class;
    sget-object v2, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    const-string/jumbo v3, "perfIOPrefetchStart"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    .line 320
    sput-boolean v4, Landroid/util/BoostFramework;->sUxIsLoaded:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 324
    .end local v0    # "argUxClasses":[Ljava/lang/Class;
    goto :goto_3

    .line 322
    :catch_3
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoostFramework() Ux Perf: Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_3
    monitor-exit v1

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method


# virtual methods
.method public blacklist getPerfHalVersion()D
    .locals 5

    .line 397
    const-wide v0, 0x40019999a0000000L    # 2.200000047683716

    .line 399
    .local v0, "retVal":D
    :try_start_0
    sget-object v2, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 400
    iget-object v3, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 401
    .local v2, "ret":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 405
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 403
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoostFramework"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v0
.end method

.method public blacklist perfEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "eventId"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;

    .line 552
    const/4 v0, 0x0

    new-array v1, v0, [I

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;I[I)V

    .line 553
    return-void
.end method

.method public varargs blacklist perfEvent(ILjava/lang/String;I[I)V
    .locals 5
    .param p1, "eventId"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "numArgs"    # I
    .param p4, "list"    # [I

    .line 558
    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 559
    iget-object v1, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :cond_0
    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist perfGetFeedback(ILjava/lang/String;)I
    .locals 6
    .param p1, "req"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;

    .line 411
    const/4 v0, -0x1

    .line 413
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 414
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 415
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 419
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public varargs blacklist perfGetFeedbackExtn(ILjava/lang/String;I[I)I
    .locals 6
    .param p1, "req"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "numArgs"    # I
    .param p4, "list"    # [I

    .line 425
    const/4 v0, -0x1

    .line 427
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 428
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 429
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 433
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "prop_name"    # Ljava/lang/String;
    .param p2, "def_val"    # Ljava/lang/String;

    .line 522
    const-string v0, ""

    .line 524
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 525
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 526
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 527
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 528
    :cond_0
    move-object v0, p2

    .line 532
    :goto_0
    goto :goto_1

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public blacklist perfHint(ILjava/lang/String;)I
    .locals 1
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;

    .line 373
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfHint(ILjava/lang/String;I)I
    .locals 1
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;
    .param p3, "userData"    # I

    .line 378
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfHint(ILjava/lang/String;II)I
    .locals 6
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;
    .param p3, "userData1"    # I
    .param p4, "userData2"    # I

    .line 383
    const/4 v0, -0x1

    .line 385
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 386
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 387
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 391
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist perfHintAcqRel(IILjava/lang/String;)I
    .locals 9
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;

    .line 568
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfHintAcqRel(IILjava/lang/String;I)I
    .locals 9
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I

    .line 573
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfHintAcqRel(IILjava/lang/String;II)I
    .locals 9
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "hintType"    # I

    .line 578
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public varargs blacklist perfHintAcqRel(IILjava/lang/String;III[I)I
    .locals 6
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "hintType"    # I
    .param p6, "numArgs"    # I
    .param p7, "list"    # [I

    .line 584
    const/4 v0, -0x1

    .line 586
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 587
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    .line 588
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    .line 587
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 589
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 593
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 591
    :catch_0
    move-exception v1

    .line 592
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist perfHintRenew(IILjava/lang/String;)I
    .locals 9
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;

    .line 599
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintRenew(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfHintRenew(IILjava/lang/String;I)I
    .locals 9
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I

    .line 604
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintRenew(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfHintRenew(IILjava/lang/String;II)I
    .locals 9
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "hintType"    # I

    .line 609
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintRenew(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public varargs blacklist perfHintRenew(IILjava/lang/String;III[I)I
    .locals 6
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "hintType"    # I
    .param p6, "numArgs"    # I
    .param p7, "list"    # [I

    .line 615
    const/4 v0, -0x1

    .line 617
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 618
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    .line 619
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    .line 618
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 620
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 624
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 622
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;

    .line 439
    const-string v0, "BoostFramework"

    const/4 v1, -0x1

    .line 441
    .local v1, "ret":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    sget-object v6, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    iget-object v7, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object p2, v8, v3

    aput-object p3, v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 442
    .local v6, "retVal":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v7

    .line 445
    .end local v6    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 443
    :catch_0
    move-exception v6

    .line 444
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    sget-object v6, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    iget-object v7, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v4

    aput-object p2, v5, v3

    aput-object p3, v5, v2

    invoke-virtual {v6, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 448
    .local v2, "retVal":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v0

    .line 451
    .end local v2    # "retVal":Ljava/lang/Object;
    goto :goto_1

    .line 449
    :catch_1
    move-exception v2

    .line 450
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ux Perf Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method public blacklist perfIOPrefetchStop()I
    .locals 4

    .line 458
    const/4 v0, -0x1

    .line 460
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 461
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 464
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public varargs blacklist perfLockAcqAndRelease(IIII[I)I
    .locals 6
    .param p1, "handle"    # I
    .param p2, "duration"    # I
    .param p3, "numArgs"    # I
    .param p4, "reserveNumArgs"    # I
    .param p5, "list"    # [I

    .line 538
    const/4 v0, -0x1

    .line 540
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 541
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 542
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 546
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 544
    :catch_0
    move-exception v1

    .line 545
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public varargs blacklist perfLockAcquire(I[I)I
    .locals 6
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 331
    const/4 v0, -0x1

    .line 333
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 334
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 335
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 339
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist perfLockRelease()I
    .locals 4

    .line 345
    const/4 v0, -0x1

    .line 347
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 348
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 349
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 353
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist perfLockReleaseHandler(I)I
    .locals 6
    .param p1, "handle"    # I

    .line 359
    const/4 v0, -0x1

    .line 361
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 362
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 363
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 367
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist perfSyncRequest(I)Ljava/lang/String;
    .locals 6
    .param p1, "opcode"    # I

    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 510
    return-object v0

    .line 512
    :cond_0
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 513
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 516
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public blacklist perfUXEngine_events(IILjava/lang/String;I)I
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "lat"    # I

    .line 470
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "lat"    # I
    .param p5, "codePath"    # Ljava/lang/String;

    .line 475
    const/4 v0, -0x1

    .line 477
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 478
    return v0

    .line 481
    :cond_0
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 482
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 485
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 483
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist perfUXEngine_trigger(I)Ljava/lang/String;
    .locals 6
    .param p1, "opcode"    # I

    .line 492
    const/4 v0, 0x0

    .line 494
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 495
    return-object v0

    .line 497
    :cond_0
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 498
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 501
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
