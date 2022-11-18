.class public Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.super Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;,
        Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;
    }
.end annotation


# instance fields
.field private final greylist-max-o mDownloadCallbackDeathRecipients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDownloadProgressListenerBinderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/telephony/mbms/DownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDownloadStatusListenerBinderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/telephony/mbms/DownloadStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDownloadCallbackDeathRecipients(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDownloadProgressListenerBinderMap(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadProgressListenerBinderMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDownloadStatusListenerBinderMap(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadStatusListenerBinderMap:Ljava/util/Map;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadStatusListenerBinderMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadProgressListenerBinderMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public whitelist addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/DownloadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I
    .locals 6
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 396
    .local v0, "uid":I
    if-eqz p1, :cond_2

    .line 399
    if-eqz p2, :cond_1

    .line 403
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;

    invoke-direct {v1, p0, p2, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IDownloadProgressListener;ILandroid/telephony/mbms/DownloadRequest;)V

    .line 410
    .local v1, "exposedCallback":Landroid/telephony/mbms/DownloadProgressListener;
    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)I

    move-result v2

    .line 412
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 413
    new-instance v3, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;

    invoke-direct {v3, p0, v0, p1, p2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)V

    .line 421
    .local v3, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    iget-object v4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 423
    iget-object v4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadProgressListenerBinderMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .end local v3    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :cond_0
    return v2

    .line 400
    .end local v1    # "exposedCallback":Landroid/telephony/mbms/DownloadProgressListener;
    .end local v2    # "result":I
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Download request must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addServiceAnnouncement(I[B)I
    .locals 2
    .param p1, "subscriptionId"    # I
    .param p2, "contents"    # [B

    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addServiceAnnouncement not supported by this middleware."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/DownloadStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I
    .locals 6
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 283
    .local v0, "uid":I
    if-eqz p1, :cond_2

    .line 286
    if-eqz p2, :cond_1

    .line 290
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;

    invoke-direct {v1, p0, p2, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IDownloadStatusListener;ILandroid/telephony/mbms/DownloadRequest;)V

    .line 297
    .local v1, "exposedCallback":Landroid/telephony/mbms/DownloadStatusListener;
    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)I

    move-result v2

    .line 299
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 300
    new-instance v3, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;

    invoke-direct {v3, p0, v0, p1, p2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)V

    .line 308
    .local v3, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    iget-object v4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 310
    iget-object v4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadStatusListenerBinderMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .end local v3    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :cond_0
    return v2

    .line 287
    .end local v1    # "exposedCallback":Landroid/telephony/mbms/DownloadStatusListener;
    .end local v2    # "result":I
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Download request must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 579
    invoke-super {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dispose(I)V
    .locals 0
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    return-void
.end method

.method public whitelist download(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
    .locals 5
    .param p1, "subscriptionId"    # I
    .param p2, "callback"    # Landroid/telephony/mbms/IMbmsDownloadSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    if-eqz p2, :cond_1

    .line 125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 127
    .local v0, "uid":I
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;

    invoke-direct {v1, p0, p2, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IMbmsDownloadSessionCallback;II)V

    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->initialize(ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)I

    move-result v1

    .line 160
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 161
    invoke-interface {p2}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;

    invoke-direct {v3, p0, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;II)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 169
    :cond_0
    return v1

    .line 122
    .end local v0    # "uid":I
    .end local v1    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist initialize(ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)I
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "callback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist listPendingDownloads(I)Ljava/util/List;
    .locals 1
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onAppCallbackDied(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "subscriptionId"    # I

    .line 572
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    invoke-super {p0, p1, p2, p3, p4}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public whitelist removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/DownloadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I
    .locals 4
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    if-eqz p1, :cond_3

    .line 460
    if-eqz p2, :cond_2

    .line 464
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    .line 465
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    .line 466
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    const-string v1, "Unknown listener"

    if-eqz v0, :cond_1

    .line 470
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 472
    iget-object v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadProgressListenerBinderMap:Ljava/util/Map;

    .line 473
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadProgressListener;

    .line 474
    .local v2, "exposedCallback":Landroid/telephony/mbms/DownloadProgressListener;
    if-eqz v2, :cond_0

    .line 478
    invoke-virtual {p0, p1, v2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)I

    move-result v1

    return v1

    .line 475
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 467
    .end local v2    # "exposedCallback":Landroid/telephony/mbms/DownloadProgressListener;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 461
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Download request must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/DownloadStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I
    .locals 4
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    if-eqz p1, :cond_3

    .line 347
    if-eqz p2, :cond_2

    .line 351
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    .line 352
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    .line 353
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    const-string v1, "Unknown listener"

    if-eqz v0, :cond_1

    .line 357
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 359
    iget-object v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadStatusListenerBinderMap:Ljava/util/Map;

    .line 360
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadStatusListener;

    .line 361
    .local v2, "exposedCallback":Landroid/telephony/mbms/DownloadStatusListener;
    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {p0, p1, v2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)I

    move-result v1

    return v1

    .line 362
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 354
    .end local v2    # "exposedCallback":Landroid/telephony/mbms/DownloadStatusListener;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Download request must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist requestUpdateFileServices(ILjava/util/List;)I
    .locals 1
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    .local p2, "serviceClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setTempFileRootDirectory(ILjava/lang/String;)I
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "rootDirectoryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    return v0
.end method
