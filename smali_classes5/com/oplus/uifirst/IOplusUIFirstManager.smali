.class public interface abstract Lcom/oplus/uifirst/IOplusUIFirstManager;
.super Ljava/lang/Object;
.source "IOplusUIFirstManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist ANIMATION_END:Ljava/lang/String; = "0"

.field public static final whitelist ANIMATION_SCENE:I = 0x5

.field public static final whitelist APP_EXIT_ANIMATION:Ljava/lang/String; = "2"

.field public static final whitelist APP_START_ANIMATION:Ljava/lang/String; = "1"

.field public static final whitelist APP_STATUS_MOVE_TO_BG:I = 0x2

.field public static final whitelist APP_STATUS_MOVE_TO_FG:I = 0x1

.field public static final whitelist APP_STATUS_PROC_DIE:I = 0x3

.field public static final whitelist APP_STATUS_RESUME_ACTIVITY:I = 0x4

.field public static final whitelist APP_STATUS_START_ACTIVITY:I = 0x0

.field public static final whitelist BOOST_ANIMATION_TIMEOUT:I = 0xcf

.field public static final whitelist BOOST_COMMIT_TIMEOUT:I = 0xd2

.field public static final whitelist BOOST_FRAME_END:I = 0xcc

.field public static final whitelist BOOST_FRAME_TIMEOUT:I = 0xd4

.field public static final whitelist BOOST_INPUT_TIMEOUT:I = 0xce

.field public static final whitelist BOOST_INSETS_ANIMATION_TIMEOUT:I = 0xd0

.field public static final whitelist BOOST_OBTAIN_VIEW:I = 0xcb

.field public static final whitelist BOOST_SET_HWUITASK:I = 0xcd

.field public static final whitelist BOOST_TRAVERSAL_TIMEOUT:I = 0xd1

.field public static final whitelist DEFAULT:Lcom/oplus/uifirst/IOplusUIFirstManager;

.field public static final whitelist FRAME_BOOST_END:I = 0xd3

.field public static final whitelist FRAME_BOOST_FRAME_START:I = 0xc8

.field public static final whitelist FRAME_BOOST_MOVE_BG:I = 0xca

.field public static final whitelist FRAME_BOOST_MOVE_FG:I = 0xc9

.field public static final whitelist LAUNCHER_SCENE_SI:I = 0x4

.field public static final whitelist LAUNCHER_SI_START:Ljava/lang/String; = "4"

.field public static final whitelist NAME:Ljava/lang/String; = "IOplusUIFirstManager"

.field public static final whitelist SET_UX_SCENE:I = 0x6

.field public static final whitelist UIFIRST_OPT_CLEAR:I = 0x0

.field public static final whitelist UIFIRST_OPT_SET:I = 0x80

.field public static final whitelist UIFIRST_SCENE_ANIM:I = 0x10

.field public static final whitelist UIFIRST_SCENE_ANIM_START:I = 0x8

.field public static final whitelist UIFIRST_SCENE_CAMERA:I = 0x4

.field public static final whitelist UIFIRST_SCENE_INPUT:I = 0x20

.field public static final whitelist UIFIRST_SCENE_LAUNCH:I = 0x1

.field public static final whitelist UIFIRST_SCENE_OPT_CLEAR:I = 0x0

.field public static final whitelist UIFIRST_SCENE_OPT_SET:I = 0x80

.field public static final whitelist UIFIRST_SCENE_SLIDE:I = 0x2

.field public static final whitelist UIFIRST_TYPE_ANIMATOR_TASK:I = 0x4

.field public static final whitelist UIFIRST_TYPE_HEAVY_TASK:I = 0x2

.field public static final whitelist UIFIRST_TYPE_LIGHT_TASK:I = 0x1

.field public static final whitelist UIFIRST_TYPE_LISTPICK_TASK:I = 0x8


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/oplus/uifirst/IOplusUIFirstManager$1;

    invoke-direct {v0}, Lcom/oplus/uifirst/IOplusUIFirstManager$1;-><init>()V

    sput-object v0, Lcom/oplus/uifirst/IOplusUIFirstManager;->DEFAULT:Lcom/oplus/uifirst/IOplusUIFirstManager;

    return-void
.end method


# virtual methods
.method public blacklist acquireLaunchBoost()V
    .locals 0

    .line 95
    return-void
.end method

.method public blacklist acquireUxSceneBoost(Ljava/lang/String;I)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .line 97
    return-void
.end method

.method public blacklist addApplicationGlThread(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I

    .line 117
    return-void
.end method

.method public blacklist adjustTopApp(Ljava/lang/String;IILandroid/util/IntArray;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appPid"    # I
    .param p3, "renderThreadTid"    # I
    .param p4, "hwuiTasks"    # Landroid/util/IntArray;

    .line 139
    return-void
.end method

.method public blacklist adjustUxProcess(Ljava/lang/String;IIILandroid/util/IntArray;Ljava/util/Collection;Z)[I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "appPid"    # I
    .param p4, "renderThreadTid"    # I
    .param p5, "hwuiTasks"    # Landroid/util/IntArray;
    .param p7, "isRemoteAnimation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Landroid/util/IntArray;",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;Z)[I"
        }
    .end annotation

    .line 99
    .local p6, "glThreads":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist backfpsgoparam()V
    .locals 0

    .line 131
    return-void
.end method

.method public blacklist checkUxRemoteAnimationList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableUXTrace(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 105
    return-void
.end method

.method public blacklist getApplicationGlThreadValue(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 89
    sget-object v0, Lcom/oplus/uifirst/IOplusUIFirstManager;->DEFAULT:Lcom/oplus/uifirst/IOplusUIFirstManager;

    return-object v0
.end method

.method public blacklist getfpsgoparamforreserve()V
    .locals 0

    .line 129
    return-void
.end method

.method public blacklist handleProcessStart(Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "isolated"    # Z
    .param p5, "processName"    # Ljava/lang/String;

    .line 123
    return-void
.end method

.method public blacklist handleProcessStop(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 125
    return-void
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 85
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusUIFirstManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist notifyUiSwitched(Ljava/lang/String;I)V
    .locals 0
    .param p1, "uiInfo"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 143
    return-void
.end method

.method public blacklist ofbBoostHint(IIIIIIJJJ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "hwtid1"    # I
    .param p4, "hwtid2"    # I
    .param p5, "stage"    # I
    .param p6, "level"    # I
    .param p7, "fnumber"    # J
    .param p9, "sourceDelta"    # J
    .param p11, "targetDelta"    # J

    .line 135
    return-void
.end method

.method public blacklist ofbEndFrame(IIJ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "fnumber"    # J

    .line 137
    return-void
.end method

.method public blacklist ofbSetFps(IIJJ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "fpsNs"    # J
    .param p5, "vsyncNs"    # J

    .line 133
    return-void
.end method

.method public blacklist onAppStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .line 101
    return-void
.end method

.method public blacklist readProcNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeApplicationGlThread(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I

    .line 119
    return-void
.end method

.method public blacklist serviceReady()V
    .locals 0

    .line 151
    return-void
.end method

.method public blacklist setProcessUxValue(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "value"    # I

    .line 145
    return-void
.end method

.method public blacklist setRenderThreadTid(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I

    .line 147
    return-void
.end method

.method public blacklist setResumedApp(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 141
    return-void
.end method

.method public blacklist setTaskAnimation(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "pid"    # I
    .param p4, "renderTid"    # I
    .param p5, "uxValue"    # Ljava/lang/String;
    .param p6, "flag"    # Ljava/lang/String;

    .line 103
    return-void
.end method

.method public blacklist setTaskAsRemoteAnimationUx(IILandroid/util/IntArray;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "appPid"    # I
    .param p2, "renderThreadTid"    # I
    .param p3, "hwuiTasks"    # Landroid/util/IntArray;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "isRemoteAnimation"    # Z

    .line 115
    return-void
.end method

.method public whitelist setUxThreadValue(IILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 107
    return-void
.end method

.method public blacklist setfpsgoparamforperformance()V
    .locals 0

    .line 127
    return-void
.end method

.method public blacklist writeProcNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 109
    return-void
.end method
