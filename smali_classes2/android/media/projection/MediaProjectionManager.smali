.class public final Landroid/media/projection/MediaProjectionManager;
.super Ljava/lang/Object;
.source "MediaProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionManager$CallbackDelegate;,
        Landroid/media/projection/MediaProjectionManager$Callback;
    }
.end annotation


# static fields
.field public static final greylist-max-o EXTRA_APP_TOKEN:Ljava/lang/String; = "android.media.projection.extra.EXTRA_APP_TOKEN"

.field public static final greylist-max-o EXTRA_MEDIA_PROJECTION:Ljava/lang/String; = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaProjectionManager"

.field public static final greylist-max-o TYPE_MIRRORING:I = 0x1

.field public static final greylist-max-o TYPE_PRESENTATION:I = 0x2

.field public static final greylist-max-o TYPE_SCREEN_CAPTURE:I


# instance fields
.field private greylist-max-o mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/projection/MediaProjectionManager$Callback;",
            "Landroid/media/projection/MediaProjectionManager$CallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mService:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    .line 63
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    .line 64
    return-void
.end method


# virtual methods
.method public greylist-max-o addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/projection/MediaProjectionManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 168
    if-eqz p1, :cond_0

    .line 171
    new-instance v0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    invoke-direct {v0, p1, p2}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;-><init>(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    .line 172
    .local v0, "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v1, v0}, Landroid/media/projection/IMediaProjectionManager;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaProjectionManager"

    const-string v3, "Unable to add callbacks to MediaProjection service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 169
    .end local v0    # "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createScreenCaptureIntent()Landroid/content/Intent;
    .locals 3

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104028d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 78
    .local v1, "mediaProjectionPermissionDialogComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 79
    return-object v0
.end method

.method public greylist-max-o getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 3

    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjectionManager"

    const-string v2, "Unable to get the active projection info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/content/Intent;

    .line 127
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    const-string v1, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 131
    .local v1, "projection":Landroid/os/IBinder;
    if-nez v1, :cond_1

    .line 132
    return-object v0

    .line 134
    :cond_1
    new-instance v0, Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    return-object v0

    .line 128
    .end local v1    # "projection":Landroid/os/IBinder;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public greylist-max-o removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/projection/MediaProjectionManager$Callback;

    .line 185
    if-eqz p1, :cond_1

    .line 188
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    .line 190
    .local v0, "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v1, v0}, Landroid/media/projection/IMediaProjectionManager;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaProjectionManager"

    const-string v3, "Unable to add callbacks to MediaProjection service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 195
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 196
    :goto_1
    return-void

    .line 186
    .end local v0    # "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o stopActiveProjection()V
    .locals 3

    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjection()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjectionManager"

    const-string v2, "Unable to stop the currently active media projection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
