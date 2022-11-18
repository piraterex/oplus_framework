.class public final Landroid/media/projection/MediaProjection;
.super Ljava/lang/Object;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjection$CallbackRecord;,
        Landroid/media/projection/MediaProjection$MediaProjectionCallback;,
        Landroid/media/projection/MediaProjection$Callback;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaProjection"


# instance fields
.field private final greylist-max-o mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/projection/MediaProjection$Callback;",
            "Landroid/media/projection/MediaProjection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mImpl:Landroid/media/projection/IMediaProjection;

.field private blacklist mProjectionService:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/media/projection/MediaProjection;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "impl"    # Landroid/media/projection/IMediaProjection;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/projection/MediaProjection;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 59
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    .line 63
    :try_start_0
    new-instance v1, Landroid/media/projection/MediaProjection$MediaProjectionCallback;

    invoke-direct {v1, p0, v0}, Landroid/media/projection/MediaProjection$MediaProjectionCallback;-><init>(Landroid/media/projection/MediaProjection;Landroid/media/projection/MediaProjection$MediaProjectionCallback-IA;)V

    invoke-interface {p2, v1}, Landroid/media/projection/IMediaProjection;->start(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 67
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to start media projection"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_0

    .line 211
    nop

    .line 212
    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/media/projection/MediaProjection;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v0
.end method


# virtual methods
.method public blacklist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig$Builder;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 10
    .param p1, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .param p2, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    .line 176
    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->getTaskRecordingWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v0

    .line 177
    .local v0, "taskWindowContainerToken":Landroid/window/WindowContainerToken;
    const/4 v1, 0x0

    .line 179
    .local v1, "windowContext":Landroid/content/Context;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 180
    iget-object v3, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v3

    move-object v1, v3

    .line 182
    nop

    .line 183
    invoke-virtual {v1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v3

    .line 182
    invoke-static {v3}, Landroid/view/ContentRecordingSession;->createDisplaySession(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;

    move-result-object v3

    .local v3, "session":Landroid/view/ContentRecordingSession;
    goto :goto_0

    .line 185
    .end local v3    # "session":Landroid/view/ContentRecordingSession;
    :cond_0
    nop

    .line 186
    invoke-virtual {v0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 185
    invoke-static {v3}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;

    move-result-object v3

    .line 188
    .restart local v3    # "session":Landroid/view/ContentRecordingSession;
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setWindowManagerMirroring(Z)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 189
    iget-object v4, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    const-class v5, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 190
    .local v4, "dm":Landroid/hardware/display/DisplayManager;
    nop

    .line 191
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v6

    .line 190
    move-object v5, p0

    move-object v7, p2

    move-object v8, p3

    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Landroid/content/Context;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v5

    .line 192
    .local v5, "virtualDisplay":Landroid/hardware/display/VirtualDisplay;
    if-nez v5, :cond_1

    .line 197
    return-object v2

    .line 199
    :cond_1
    invoke-virtual {v5}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/ContentRecordingSession;->setDisplayId(I)Landroid/view/ContentRecordingSession;

    .line 201
    invoke-direct {p0}, Landroid/media/projection/MediaProjection;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    iget-object v6, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    invoke-interface {v2, v3, v6}, Landroid/media/projection/IMediaProjectionManager;->setContentRecordingSession(Landroid/view/ContentRecordingSession;Landroid/media/projection/IMediaProjection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    return-object v5

    .line 203
    .end local v0    # "taskWindowContainerToken":Landroid/window/WindowContainerToken;
    .end local v1    # "windowContext":Landroid/content/Context;
    .end local v3    # "session":Landroid/view/ContentRecordingSession;
    .end local v4    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v5    # "virtualDisplay":Landroid/hardware/display/VirtualDisplay;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dpi"    # I
    .param p5, "flags"    # I
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    .line 147
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 148
    invoke-virtual {v0, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v0

    .line 149
    .local v0, "builder":Landroid/hardware/display/VirtualDisplayConfig$Builder;
    if-eqz p6, :cond_0

    .line 150
    invoke-virtual {v0, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 152
    :cond_0
    invoke-virtual {p0, v0, p7, p8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig$Builder;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    .line 153
    .local v1, "virtualDisplay":Landroid/hardware/display/VirtualDisplay;
    return-object v1
.end method

.method public greylist-max-o createVirtualDisplay(Ljava/lang/String;IIIZLandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dpi"    # I
    .param p5, "isSecure"    # Z
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    .line 107
    const/16 v0, 0x12

    .line 109
    .local v0, "flags":I
    if-eqz p5, :cond_0

    .line 110
    or-int/lit8 v0, v0, 0x4

    .line 112
    :cond_0
    new-instance v1, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 113
    invoke-virtual {v1, v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v1

    .line 114
    .local v1, "builder":Landroid/hardware/display/VirtualDisplayConfig$Builder;
    if-eqz p6, :cond_1

    .line 115
    invoke-virtual {v1, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 117
    :cond_1
    invoke-virtual {p0, v1, p7, p8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig$Builder;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v2

    .line 118
    .local v2, "virtualDisplay":Landroid/hardware/display/VirtualDisplay;
    return-object v2
.end method

.method public greylist-max-o getProjection()Landroid/media/projection/IMediaProjection;
    .locals 1

    .line 233
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    return-object v0
.end method

.method public whitelist registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/MediaProjection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 79
    if-eqz p1, :cond_1

    .line 82
    if-nez p2, :cond_0

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    new-instance v1, Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/media/projection/MediaProjection$CallbackRecord;-><init>(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stop()V
    .locals 3

    .line 222
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjection"

    const-string v2, "Unable to stop projection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/MediaProjection$Callback;

    .line 95
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
