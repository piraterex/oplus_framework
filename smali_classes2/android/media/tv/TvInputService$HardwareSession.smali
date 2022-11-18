.class public abstract Landroid/media/tv/TvInputService$HardwareSession;
.super Landroid/media/tv/TvInputService$Session;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HardwareSession"
.end annotation


# instance fields
.field private greylist-max-o mHardwareSession:Landroid/media/tv/TvInputManager$Session;

.field private final greylist-max-o mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

.field private greylist-max-o mProxySession:Landroid/media/tv/ITvInputSession;

.field private greylist-max-o mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

.field private greylist-max-o mServiceHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHardwareSession(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHardwareSessionCallback(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProxySession(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSession;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySession:Landroid/media/tv/ITvInputSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProxySessionCallback(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHardwareSession(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/TvInputManager$Session;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProxySession(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySession:Landroid/media/tv/ITvInputSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProxySessionCallback(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceHandler(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 2272
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session;-><init>(Landroid/content/Context;)V

    .line 2290
    new-instance v0, Landroid/media/tv/TvInputService$HardwareSession$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$HardwareSession$1;-><init>(Landroid/media/tv/TvInputService$HardwareSession;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    .line 2273
    return-void
.end method


# virtual methods
.method public abstract whitelist getHardwareInputId()Ljava/lang/String;
.end method

.method public whitelist onHardwareVideoAvailable()V
    .locals 0

    .line 2344
    return-void
.end method

.method public whitelist onHardwareVideoUnavailable(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 2359
    return-void
.end method

.method public final whitelist onSetSurface(Landroid/view/Surface;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2336
    const-string v0, "TvInputService"

    const-string v1, "onSetSurface() should not be called in HardwareProxySession."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o release()V
    .locals 1

    .line 2363
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    .line 2364
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->release()V

    .line 2365
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    .line 2367
    :cond_0
    invoke-super {p0}, Landroid/media/tv/TvInputService$Session;->release()V

    .line 2368
    return-void
.end method
