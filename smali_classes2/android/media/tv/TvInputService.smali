.class public abstract Landroid/media/tv/TvInputService;
.super Landroid/app/Service;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputService$ServiceHandler;,
        Landroid/media/tv/TvInputService$HardwareSession;,
        Landroid/media/tv/TvInputService$RecordingSession;,
        Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;,
        Landroid/media/tv/TvInputService$Session;,
        Landroid/media/tv/TvInputService$PriorityHintUseCaseType;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DETACH_OVERLAY_VIEW_TIMEOUT_MS:I = 0x1388

.field public static final whitelist PRIORITY_HINT_USE_CASE_TYPE_BACKGROUND:I = 0x64

.field public static final whitelist PRIORITY_HINT_USE_CASE_TYPE_LIVE:I = 0x190

.field public static final whitelist PRIORITY_HINT_USE_CASE_TYPE_PLAYBACK:I = 0x12c

.field public static final whitelist PRIORITY_HINT_USE_CASE_TYPE_RECORD:I = 0x1f4

.field public static final whitelist PRIORITY_HINT_USE_CASE_TYPE_SCAN:I = 0xc8

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.media.tv.TvInputService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.media.tv.input"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvInputService"


# instance fields
.field private final greylist-max-o mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/tv/ITvInputServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mServiceHandler:Landroid/os/Handler;

.field private greylist-max-o mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPassthroughInput(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService;->isPassthroughInput(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 149
    new-instance v0, Landroid/media/tv/TvInputService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService$ServiceHandler-IA;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method public static greylist-max-o isNavigationKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 2373
    sparse-switch p0, :sswitch_data_0

    .line 2388
    const/4 v0, 0x0

    return v0

    .line 2386
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o isPassthroughInput(Ljava/lang/String;)Z
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 463
    iget-object v0, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_0

    .line 464
    const-string/jumbo v0, "tv_input"

    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 466
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 467
    .local v0, "info":Landroid/media/tv/TvInputInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->isPassthroughInput()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public whitelist createExtension()Landroid/os/IBinder;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAvailableExtensionInterfaceNames()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 157
    new-instance v0, Landroid/media/tv/TvInputService$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$1;-><init>(Landroid/media/tv/TvInputService;)V

    .line 249
    .local v0, "tvInputServiceBinder":Landroid/media/tv/ITvInputService$Stub;
    invoke-virtual {p0}, Landroid/media/tv/TvInputService;->createExtension()Landroid/os/IBinder;

    move-result-object v1

    .line 250
    .local v1, "ext":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v0, v1}, Landroid/media/tv/ITvInputService$Stub;->setExtension(Landroid/os/IBinder;)V

    .line 253
    :cond_0
    return-object v0
.end method

.method public whitelist onCreateRecordingSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;

    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateRecordingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 385
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService;->onCreateRecordingSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;
.end method

.method public whitelist onCreateSession(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 369
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService;->onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;
    .locals 1
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;
    .locals 1
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 441
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 0
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 460
    return-void
.end method
