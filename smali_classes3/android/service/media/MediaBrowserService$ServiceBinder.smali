.class Landroid/service/media/MediaBrowserService$ServiceBinder;
.super Landroid/service/media/IMediaBrowserService$Stub;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field private blacklist mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/media/MediaBrowserService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/service/media/MediaBrowserService;)V
    .locals 1
    .param p1, "service"    # Landroid/service/media/MediaBrowserService;

    .line 219
    invoke-direct {p0}, Landroid/service/media/IMediaBrowserService$Stub;-><init>()V

    .line 220
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mService:Ljava/lang/ref/WeakReference;

    .line 221
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ServiceBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder;-><init>(Landroid/service/media/MediaBrowserService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 315
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService;

    .line 316
    .local v0, "service":Landroid/service/media/MediaBrowserService;
    if-nez v0, :cond_0

    .line 317
    return-void

    .line 320
    :cond_0
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Landroid/service/media/MediaBrowserService$ServiceBinder$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p4

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Landroid/service/media/MediaBrowserService$ServiceBinder$3;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method

.method public greylist-max-o addSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 310
    return-void
.end method

.method public greylist-max-o connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 15
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 226
    move-object/from16 v8, p1

    move-object v9, p0

    iget-object v0, v9, Landroid/service/media/MediaBrowserService$ServiceBinder;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/service/media/MediaBrowserService;

    .line 227
    .local v10, "service":Landroid/service/media/MediaBrowserService;
    if-nez v10, :cond_0

    .line 228
    return-void

    .line 231
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 232
    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 233
    .local v12, "uid":I
    invoke-static {v10, v8, v12}, Landroid/service/media/MediaBrowserService;->-$$Nest$misValidPackage(Landroid/service/media/MediaBrowserService;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-static {v10}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Landroid/service/media/MediaBrowserService$ServiceBinder$1;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, v10

    move-object/from16 v4, p1

    move v5, v11

    move v6, v12

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/media/MediaBrowserService$ServiceBinder$1;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void

    .line 234
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package/uid mismatch: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 3
    .param p1, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 287
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService;

    .line 288
    .local v0, "service":Landroid/service/media/MediaBrowserService;
    if-nez v0, :cond_0

    .line 289
    return-void

    .line 292
    :cond_0
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/media/MediaBrowserService$ServiceBinder$2;

    invoke-direct {v2, p0, p1, v0}, Landroid/service/media/MediaBrowserService$ServiceBinder$2;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method

.method public greylist-max-o getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 9
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 374
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService;

    .line 375
    .local v0, "service":Landroid/service/media/MediaBrowserService;
    if-nez v0, :cond_0

    .line 376
    return-void

    .line 379
    :cond_0
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Landroid/service/media/MediaBrowserService$ServiceBinder$5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/service/media/MediaBrowserService$ServiceBinder$5;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method public greylist-max-o removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 347
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService;

    .line 348
    .local v0, "service":Landroid/service/media/MediaBrowserService;
    if-nez v0, :cond_0

    .line 349
    return-void

    .line 352
    :cond_0
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Landroid/service/media/MediaBrowserService$ServiceBinder$4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/service/media/MediaBrowserService$ServiceBinder$4;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    return-void
.end method

.method public greylist-max-o removeSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 342
    return-void
.end method
