.class public Landroid/telephony/ims/stub/ImsConfigImplBase;
.super Ljava/lang/Object;
.source "ImsConfigImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsConfigImplBase$SetConfigResult;,
        Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
    }
.end annotation


# static fields
.field public static final whitelist CONFIG_RESULT_FAILED:I = 0x1

.field public static final whitelist CONFIG_RESULT_SUCCESS:I = 0x0

.field public static final whitelist CONFIG_RESULT_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsConfigImplBase"


# instance fields
.field private final blacklist mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsConfigCallback;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

.field private final blacklist mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IRcsConfigCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRcsConfigData:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyConfigChanged(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyConfigChanged(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNotifyRcsAutoConfigurationReceived(Landroid/telephony/ims/stub/ImsConfigImplBase;[BZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->onNotifyRcsAutoConfigurationReceived([BZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNotifyRcsAutoConfigurationRemoved(Landroid/telephony/ims/stub/ImsConfigImplBase;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->onNotifyRcsAutoConfigurationRemoved()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 538
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 561
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    .line 562
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 538
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 557
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    .line 558
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 538
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 550
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    .line 551
    return-void
.end method

.method private greylist-max-o addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 570
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 571
    return-void
.end method

.method private blacklist addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 618
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 619
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    if-eqz v0, :cond_0

    .line 621
    :try_start_0
    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationChanged([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder to call onConfigurationChanged, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$notifyAutoConfigurationErrorReceived$4(ILjava/lang/String;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .param p0, "errorCode"    # I
    .param p1, "errorString"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 815
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onAutoConfigurationErrorReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    goto :goto_0

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyAutoConfigurationErrorReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$notifyConfigChanged$0(IILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 3
    .param p0, "item"    # I
    .param p1, "value"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 593
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsConfigCallback;->onIntConfigChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyConfigChanged(int): dead binder in notify, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$notifyConfigChanged$1(ILjava/lang/String;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 3
    .param p0, "item"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 609
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsConfigCallback;->onStringConfigChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyConfigChanged(string): dead binder in notify, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$notifyPreProvisioningReceived$5([BLandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .param p0, "configXml"    # [B
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 841
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onPreProvisioningReceived([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    goto :goto_0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyPreProvisioningReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$onNotifyRcsAutoConfigurationRemoved$3(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .param p0, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 661
    :try_start_0
    invoke-interface {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    goto :goto_0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyRcsAutoConfigurationRemoved, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private final greylist-max-o notifyConfigChanged(II)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 587
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_0

    .line 588
    return-void

    .line 590
    :cond_0
    monitor-enter v0

    .line 591
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 598
    monitor-exit v0

    .line 599
    return-void

    .line 598
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o notifyConfigChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 603
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_0

    .line 604
    return-void

    .line 606
    :cond_0
    monitor-enter v0

    .line 607
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 614
    monitor-exit v0

    .line 615
    return-void

    .line 614
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onNotifyRcsAutoConfigurationReceived([BZ)V
    .locals 3
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z

    .line 634
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/telephony/ims/RcsConfig;->decompressGzip([B)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    move-object p1, v0

    .line 635
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    return-void

    .line 638
    :cond_1
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    .line 641
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-eqz v0, :cond_2

    .line 642
    monitor-enter v0

    .line 643
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 650
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 652
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyRcsAutoConfigurationReceived([BZ)V

    .line 653
    return-void
.end method

.method private blacklist onNotifyRcsAutoConfigurationRemoved()V
    .locals 3

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    .line 657
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-eqz v0, :cond_0

    .line 658
    monitor-enter v0

    .line 659
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 666
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 668
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyRcsAutoConfigurationRemoved()V

    .line 669
    return-void
.end method

.method private greylist-max-o removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 578
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 579
    return-void
.end method

.method private blacklist removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 629
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 630
    return-void
.end method


# virtual methods
.method public whitelist getConfigInt(I)I
    .locals 1
    .param p1, "item"    # I

    .line 762
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getConfigString(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I

    .line 773
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;
    .locals 1

    .line 674
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-object v0
.end method

.method synthetic blacklist lambda$onNotifyRcsAutoConfigurationReceived$2$android-telephony-ims-stub-ImsConfigImplBase(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 645
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationChanged([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyRcsAutoConfigurationReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public final whitelist notifyAutoConfigurationErrorReceived(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 809
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_0

    .line 810
    return-void

    .line 812
    :cond_0
    monitor-enter v0

    .line 813
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 820
    monitor-exit v0

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist notifyPreProvisioningReceived([B)V
    .locals 3
    .param p1, "configXml"    # [B

    .line 835
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_0

    .line 836
    return-void

    .line 838
    :cond_0
    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 846
    monitor-exit v0

    .line 847
    return-void

    .line 846
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist notifyProvisionedValueChanged(II)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 685
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(II)V

    .line 688
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    goto :goto_0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyProvisionedValueChanged(int): Framework connection is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public final whitelist notifyProvisionedValueChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 703
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;)V

    .line 706
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyProvisionedValueChanged(string): Framework connection is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist notifyRcsAutoConfigurationReceived([BZ)V
    .locals 0
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z

    .line 721
    return-void
.end method

.method public whitelist notifyRcsAutoConfigurationRemoved()V
    .locals 0

    .line 727
    return-void
.end method

.method public whitelist setConfig(II)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 738
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setConfig(ILjava/lang/String;)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 750
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 856
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 857
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$fputmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/Executor;)V

    .line 859
    :cond_0
    return-void
.end method

.method public whitelist setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 0
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 790
    return-void
.end method

.method public whitelist triggerAutoConfiguration()V
    .locals 0

    .line 798
    return-void
.end method

.method public blacklist updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 781
    return-void
.end method
