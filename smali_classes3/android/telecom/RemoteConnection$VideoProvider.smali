.class public Landroid/telecom/RemoteConnection$VideoProvider;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    }
.end annotation


# instance fields
.field private final greylist-max-o mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/RemoteConnection$VideoProvider$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCallingPackage:Ljava/lang/String;

.field private final greylist-max-o mTargetSdkVersion:I

.field private final greylist-max-o mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

.field private final greylist-max-o mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

.field private final greylist-max-o mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V
    .locals 5
    .param p1, "videoProviderBinder"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "targetSdkVersion"    # I

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider$1;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection$VideoProvider$1;-><init>(Landroid/telecom/RemoteConnection$VideoProvider;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    .line 448
    new-instance v1, Landroid/telecom/VideoCallbackServant;

    invoke-direct {v1, v0}, Landroid/telecom/VideoCallbackServant;-><init>(Lcom/android/internal/telecom/IVideoCallback;)V

    iput-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    .line 462
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x8

    const v3, 0x3f666666    # 0.9f

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    .line 468
    iput-object p1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    .line 469
    iput-object p2, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallingPackage:Ljava/lang/String;

    .line 470
    iput p3, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mTargetSdkVersion:I

    .line 472
    :try_start_0
    invoke-virtual {v1}, Landroid/telecom/VideoCallbackServant;->getStub()Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telecom/IVideoProvider;->addVideoCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 475
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist registerCallback(Landroid/telecom/RemoteConnection$VideoProvider$Callback;)V
    .locals 1
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 483
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    return-void
.end method

.method public whitelist requestCallDataUsage()V
    .locals 1

    .line 615
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 618
    :goto_0
    return-void
.end method

.method public whitelist requestCameraCapabilities()V
    .locals 1

    .line 602
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 605
    :goto_0
    return-void
.end method

.method public whitelist sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 575
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 578
    :goto_0
    return-void
.end method

.method public whitelist sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 589
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 592
    :goto_0
    return-void
.end method

.method public whitelist setCamera(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 505
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallingPackage:Ljava/lang/String;

    iget v2, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mTargetSdkVersion:I

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 508
    :goto_0
    return-void
.end method

.method public whitelist setDeviceOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .line 547
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 550
    :goto_0
    return-void
.end method

.method public whitelist setDisplaySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 533
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 536
    :goto_0
    return-void
.end method

.method public whitelist setPauseImage(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 628
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 631
    :goto_0
    return-void
.end method

.method public whitelist setPreviewSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 519
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 522
    :goto_0
    return-void
.end method

.method public whitelist setZoom(F)V
    .locals 1
    .param p1, "value"    # F

    .line 560
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 563
    :goto_0
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/telecom/RemoteConnection$VideoProvider$Callback;)V
    .locals 1
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 492
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 493
    return-void
.end method
