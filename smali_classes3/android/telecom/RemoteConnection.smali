.class public final Landroid/telecom/RemoteConnection;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$CallbackRecord;,
        Landroid/telecom/RemoteConnection$VideoProvider;,
        Landroid/telecom/RemoteConnection$Callback;
    }
.end annotation


# instance fields
.field private greylist-max-o mAddress:Landroid/net/Uri;

.field private greylist-max-o mAddressPresentation:I

.field private final greylist-max-o mCallbackRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/RemoteConnection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private greylist-max-o mCallerDisplayNamePresentation:I

.field private blacklist mCallingPackageAbbreviation:Ljava/lang/String;

.field private greylist-max-o mConference:Landroid/telecom/RemoteConference;

.field private final greylist-max-o mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnected:Z

.field private greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionId:Ljava/lang/String;

.field private greylist-max-o mConnectionProperties:I

.field private greylist-max-o mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mIsVoipAudioMode:Z

.field private greylist-max-o mRingbackRequested:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private final greylist-max-o mUnmodifiableconferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

.field private greylist-max-o mVideoState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/telecom/RemoteConnection;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnmodifiableconferenceableConnections(Landroid/telecom/RemoteConnection;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 644
    nop

    .line 645
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 647
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 733
    const-string v0, "NULL"

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 735
    const/4 v0, 0x6

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 736
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 737
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 644
    nop

    .line 645
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 647
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 672
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 673
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 674
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 675
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 676
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/telecom/Log;->getPackageAbbreviation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    .line 683
    .end local v0    # "callingPackage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;Ljava/lang/String;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "targetSdkVersion"    # I

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 644
    nop

    .line 645
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 647
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 690
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 691
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 692
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 693
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 694
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 695
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    .line 696
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    .line 697
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionProperties()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mConnectionProperties:I

    .line 698
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    .line 699
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v0

    .line 700
    .local v0, "videoProvider":Lcom/android/internal/telecom/IVideoProvider;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 701
    new-instance v2, Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-direct {v2, v0, p4, p5}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    goto :goto_0

    .line 704
    :cond_0
    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 706
    :goto_0
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    move-result v2

    iput-boolean v2, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    .line 707
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 708
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    .line 709
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v2

    iput v2, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    .line 710
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 711
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v2

    iput v2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    .line 712
    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    .line 713
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    .line 718
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 719
    .local v1, "newExtras":Landroid/os/Bundle;
    const-string v2, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0, v1}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    .line 721
    invoke-static {p4}, Landroid/telecom/Log;->getPackageAbbreviation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    .line 722
    return-void
.end method

.method public static greylist-max-o failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 1690
    new-instance v0, Landroid/telecom/RemoteConnection;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private blacklist getActiveOwnerInfo()Ljava/lang/String;
    .locals 2

    .line 1283
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    .line 1284
    .local v0, "info":Landroid/telecom/Logging/Session$Info;
    if-nez v0, :cond_0

    .line 1285
    const/4 v1, 0x0

    return-object v1

    .line 1287
    :cond_0
    iget-object v1, v0, Landroid/telecom/Logging/Session$Info;->ownerInfo:Ljava/lang/String;

    return-object v1
.end method

.method static synthetic blacklist lambda$onRemoteRttRequest$3(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p0, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 1675
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onRemoteRttRequest(Landroid/telecom/RemoteConnection;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRttInitiationFailure$1(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p0, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "reason"    # I

    .line 1655
    invoke-virtual {p0, p1, p2}, Landroid/telecom/RemoteConnection$Callback;->onRttInitiationFailure(Landroid/telecom/RemoteConnection;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onRttInitiationSuccess$0(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p0, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 1645
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onRttInitiationSuccess(Landroid/telecom/RemoteConnection;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRttSessionRemotelyTerminated$2(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p0, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 1665
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onRttSessionRemotelyTerminated(Landroid/telecom/RemoteConnection;)V

    return-void
.end method

.method private greylist-max-o notifyExtrasChanged()V
    .locals 6

    .line 1613
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1614
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1615
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1616
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$17;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/RemoteConnection$17;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1622
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1623
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist abort()V
    .locals 3

    .line 916
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.a"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->abort(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 924
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 925
    throw v0

    .line 922
    :catch_0
    move-exception v0

    .line 924
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 925
    nop

    .line 926
    return-void
.end method

.method public whitelist addConferenceParticipants(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1127
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    :cond_0
    goto :goto_0

    .line 1131
    :catch_0
    move-exception v0

    .line 1133
    :goto_0
    return-void
.end method

.method public whitelist answer()V
    .locals 3

    .line 932
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.an"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->answer(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 940
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 941
    throw v0

    .line 938
    :catch_0
    move-exception v0

    .line 940
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 941
    nop

    .line 942
    return-void
.end method

.method public greylist-max-o answer(I)V
    .locals 3
    .param p1, "videoState"    # I

    .line 950
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.an2"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    .line 954
    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    .line 953
    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->answerVideo(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 958
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 959
    throw v0

    .line 956
    :catch_0
    move-exception v0

    .line 958
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 959
    nop

    .line 960
    return-void
.end method

.method public whitelist disconnect()V
    .locals 3

    .line 1014
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.d"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1022
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1023
    throw v0

    .line 1020
    :catch_0
    move-exception v0

    .line 1022
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1023
    nop

    .line 1024
    return-void
.end method

.method public whitelist getAddress()Landroid/net/Uri;
    .locals 1

    .line 843
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getAddressPresentation()I
    .locals 1

    .line 853
    iget v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    return v0
.end method

.method public whitelist getCallerDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .line 862
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCallerDisplayNamePresentation()I
    .locals 1

    .line 873
    iget v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public whitelist getConference()Landroid/telecom/RemoteConference;
    .locals 1

    .line 1271
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    return-object v0
.end method

.method public whitelist getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getConnectionCapabilities()I
    .locals 1

    .line 804
    iget v0, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    return v0
.end method

.method public whitelist getConnectionProperties()I
    .locals 1

    .line 814
    iget v0, p0, Landroid/telecom/RemoteConnection;->mConnectionProperties:I

    return v0
.end method

.method greylist-max-o getConnectionService()Lcom/android/internal/telecom/IConnectionService;
    .locals 1

    .line 1297
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    return-object v0
.end method

.method public whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .line 794
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 899
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method greylist-max-o getId()Ljava/lang/String;
    .locals 1

    .line 1292
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getState()I
    .locals 1

    .line 783
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    return v0
.end method

.method public whitelist getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .line 833
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final whitelist getVideoProvider()Landroid/telecom/RemoteConnection$VideoProvider;
    .locals 1

    .line 890
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    return-object v0
.end method

.method public whitelist getVideoState()I
    .locals 1

    .line 882
    iget v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    return v0
.end method

.method public whitelist hold()V
    .locals 3

    .line 982
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.h"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 990
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 991
    throw v0

    .line 988
    :catch_0
    move-exception v0

    .line 990
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 991
    nop

    .line 992
    return-void
.end method

.method public whitelist isRingbackRequested()Z
    .locals 1

    .line 909
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    return v0
.end method

.method public whitelist isVoipAudioMode()Z
    .locals 1

    .line 823
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    return v0
.end method

.method public whitelist onCallFilteringCompleted(Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .locals 3
    .param p1, "completionInfo"    # Landroid/telecom/Connection$CallFilteringCompletionInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1213
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.oCFC"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->onCallFilteringCompleted(Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1221
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1222
    throw v0

    .line 1219
    :catch_0
    move-exception v0

    .line 1221
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1222
    nop

    .line 1223
    return-void
.end method

.method greylist-max-o onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1627
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1628
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v5, p0

    .line 1629
    .local v5, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v8

    .line 1630
    .local v8, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Landroid/telecom/RemoteConnection$18;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v8

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/telecom/RemoteConnection$18;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1636
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v5    # "connection":Landroid/telecom/RemoteConnection;
    .end local v8    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1637
    :cond_0
    return-void
.end method

.method greylist-max-o onPostDialChar(C)V
    .locals 6
    .param p1, "nextChar"    # C

    .line 1440
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1441
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1442
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1443
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$8;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$8;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;C)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1449
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1450
    :cond_0
    return-void
.end method

.method greylist-max-o onRemoteRttRequest()V
    .locals 6

    .line 1671
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1672
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1673
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1674
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3, v2}, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1676
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1677
    :cond_0
    return-void
.end method

.method greylist-max-o onRttInitiationFailure(I)V
    .locals 6
    .param p1, "reason"    # I

    .line 1651
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1652
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1653
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1654
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1656
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1657
    :cond_0
    return-void
.end method

.method greylist-max-o onRttInitiationSuccess()V
    .locals 6

    .line 1641
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1642
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1643
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1644
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v2}, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1646
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1647
    :cond_0
    return-void
.end method

.method greylist-max-o onRttSessionRemotelyTerminated()V
    .locals 6

    .line 1661
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1662
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1663
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1664
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v2}, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1666
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1667
    :cond_0
    return-void
.end method

.method public whitelist playDtmfTone(C)V
    .locals 3
    .param p1, "digit"    # C

    .line 1036
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.pDT"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1043
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1044
    throw v0

    .line 1041
    :catch_0
    move-exception v0

    .line 1043
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1044
    nop

    .line 1045
    return-void
.end method

.method public whitelist postDialContinue(Z)V
    .locals 3
    .param p1, "proceed"    # Z

    .line 1088
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.pDC"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->onPostDialContinue(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1097
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1098
    throw v0

    .line 1094
    :catch_0
    move-exception v0

    .line 1097
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1098
    nop

    .line 1099
    return-void
.end method

.method public whitelist pullExternalCall()V
    .locals 3

    .line 1107
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.pEC"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->pullExternalCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1114
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1115
    throw v0

    .line 1112
    :catch_0
    move-exception v0

    .line 1114
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1115
    nop

    .line 1116
    return-void
.end method

.method greylist-max-o putExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1585
    if-nez p1, :cond_0

    .line 1586
    return-void

    .line 1588
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 1589
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    .line 1592
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    goto :goto_0

    .line 1593
    :catch_0
    move-exception v0

    .line 1594
    .local v0, "bpe":Landroid/os/BadParcelableException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putExtras: could not unmarshal extras; exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1597
    .end local v0    # "bpe":Landroid/os/BadParcelableException;
    :goto_0
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->notifyExtrasChanged()V

    .line 1598
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .line 745
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    .line 746
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 755
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection;->unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V

    .line 756
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 757
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    new-instance v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/RemoteConnection$CallbackRecord;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_0
    return-void
.end method

.method public whitelist reject()V
    .locals 3

    .line 966
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.r"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->reject(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 974
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 975
    throw v0

    .line 972
    :catch_0
    move-exception v0

    .line 974
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 975
    nop

    .line 976
    return-void
.end method

.method greylist-max-o removeExtras(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1602
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1605
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1606
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1607
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1609
    :cond_1
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->notifyExtrasChanged()V

    .line 1610
    return-void

    .line 1603
    :cond_2
    :goto_1
    return-void
.end method

.method public greylist-max-o sendRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V
    .locals 5
    .param p1, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 1235
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.sRUR"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_1

    .line 1238
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1239
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v0, v0}, Lcom/android/internal/telecom/IConnectionService;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    goto :goto_0

    .line 1242
    :cond_0
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 1243
    invoke-virtual {p1}, Landroid/telecom/Connection$RttTextStream;->getFdFromInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telecom/Connection$RttTextStream;->getFdToInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1242
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/telecom/IConnectionService;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1249
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1250
    throw v0

    .line 1247
    :catch_0
    move-exception v0

    .line 1249
    :cond_1
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1250
    nop

    .line 1251
    return-void
.end method

.method greylist-max-o setAddress(Landroid/net/Uri;I)V
    .locals 11
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .line 1518
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    .line 1519
    iput p2, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    .line 1520
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1521
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v5, p0

    .line 1522
    .local v5, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v8

    .line 1523
    .local v8, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Landroid/telecom/RemoteConnection$13;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v8

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/telecom/RemoteConnection$13;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1529
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v5    # "connection":Landroid/telecom/RemoteConnection;
    .end local v8    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1530
    :cond_0
    return-void
.end method

.method public whitelist setAudioState(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1145
    new-instance v0, Landroid/telecom/CallAudioState;

    invoke-direct {v0, p1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConnection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 1146
    return-void
.end method

.method public whitelist setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 1154
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.sCAS"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1162
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1163
    throw v0

    .line 1160
    :catch_0
    move-exception v0

    .line 1162
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1163
    nop

    .line 1164
    return-void
.end method

.method greylist-max-o setCallerDisplayName(Ljava/lang/String;I)V
    .locals 11
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .line 1534
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 1535
    iput p2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    .line 1536
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1537
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v5, p0

    .line 1538
    .local v5, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v8

    .line 1539
    .local v8, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Landroid/telecom/RemoteConnection$14;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v8

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/telecom/RemoteConnection$14;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1546
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v5    # "connection":Landroid/telecom/RemoteConnection;
    .end local v8    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1547
    :cond_0
    return-void
.end method

.method greylist-max-o setConference(Landroid/telecom/RemoteConference;)V
    .locals 6
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .line 1568
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    if-eq v0, p1, :cond_0

    .line 1569
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    .line 1570
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1571
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1572
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1573
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$16;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$16;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1579
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1581
    :cond_0
    return-void
.end method

.method greylist-max-o setConferenceableConnections(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .line 1551
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1552
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1553
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1554
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1555
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1556
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$15;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/RemoteConnection$15;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1563
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1564
    :cond_0
    return-void
.end method

.method greylist-max-o setConnectionCapabilities(I)V
    .locals 6
    .param p1, "connectionCapabilities"    # I

    .line 1363
    iput p1, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    .line 1364
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1365
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1366
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1367
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$4;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$4;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1373
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1374
    :cond_0
    return-void
.end method

.method greylist-max-o setConnectionProperties(I)V
    .locals 6
    .param p1, "connectionProperties"    # I

    .line 1380
    iput p1, p0, Landroid/telecom/RemoteConnection;->mConnectionProperties:I

    .line 1381
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1382
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1383
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1384
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$5;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$5;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1390
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1391
    :cond_0
    return-void
.end method

.method greylist-max-o setDestroyed()V
    .locals 6

    .line 1397
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1399
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1400
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x1

    const-string v2, "Connection destroyed."

    invoke-direct {v0, v1, v2}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 1404
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1405
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1406
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1407
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$6;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/RemoteConnection$6;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1413
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1414
    :cond_1
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1416
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 1418
    :cond_2
    return-void
.end method

.method greylist-max-o setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 6
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 1323
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1324
    iput v1, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 1325
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1327
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1328
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1329
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1330
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$2;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$2;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1336
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1338
    :cond_0
    return-void
.end method

.method greylist-max-o setIsVoipAudioMode(Z)V
    .locals 6
    .param p1, "isVoip"    # Z

    .line 1488
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    .line 1489
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1490
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1491
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1492
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$11;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$11;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1498
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1499
    :cond_0
    return-void
.end method

.method greylist-max-o setPostDialWait(Ljava/lang/String;)V
    .locals 6
    .param p1, "remainingDigits"    # Ljava/lang/String;

    .line 1424
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1425
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1426
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1427
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$7;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$7;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1433
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1434
    :cond_0
    return-void
.end method

.method greylist-max-o setRingbackRequested(Z)V
    .locals 6
    .param p1, "ringback"    # Z

    .line 1344
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    if-eq v0, p1, :cond_0

    .line 1345
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    .line 1346
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1347
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1348
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1349
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$3;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$3;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1355
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1357
    :cond_0
    return-void
.end method

.method greylist-max-o setState(I)V
    .locals 6
    .param p1, "state"    # I

    .line 1304
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    if-eq v0, p1, :cond_0

    .line 1305
    iput p1, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 1306
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1307
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1308
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1309
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$1;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$1;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1315
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1317
    :cond_0
    return-void
.end method

.method greylist-max-o setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 6
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .line 1503
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 1504
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1505
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1506
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1507
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$12;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$12;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1513
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1514
    :cond_0
    return-void
.end method

.method greylist-max-o setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 6
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .line 1473
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 1474
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1475
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1476
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1477
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$10;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$10;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1483
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1484
    :cond_0
    return-void
.end method

.method greylist-max-o setVideoState(I)V
    .locals 6
    .param p1, "videoState"    # I

    .line 1456
    iput p1, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    .line 1457
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1458
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1459
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1460
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$9;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$9;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1466
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_0

    .line 1467
    :cond_0
    return-void
.end method

.method public greylist-max-o startRtt(Landroid/telecom/Connection$RttTextStream;)V
    .locals 5
    .param p1, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 1173
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.sR"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telecom/Connection$RttTextStream;->getFdFromInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1177
    invoke-virtual {p1}, Landroid/telecom/Connection$RttTextStream;->getFdToInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    .line 1176
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionService;->startRtt(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1181
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1182
    throw v0

    .line 1179
    :catch_0
    move-exception v0

    .line 1181
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1182
    nop

    .line 1183
    return-void
.end method

.method public whitelist stopDtmfTone()V
    .locals 3

    .line 1055
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.sDT"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1062
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1063
    throw v0

    .line 1060
    :catch_0
    move-exception v0

    .line 1062
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1063
    nop

    .line 1064
    return-void
.end method

.method public greylist-max-o stopRtt()V
    .locals 3

    .line 1191
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.stR"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->stopRtt(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1198
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1199
    throw v0

    .line 1196
    :catch_0
    move-exception v0

    .line 1198
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1199
    nop

    .line 1200
    return-void
.end method

.method public whitelist unhold()V
    .locals 3

    .line 998
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC.u"

    invoke-static {v1, v0}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1006
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1007
    throw v0

    .line 1004
    :catch_0
    move-exception v0

    .line 1006
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1007
    nop

    .line 1008
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .line 767
    if-eqz p1, :cond_1

    .line 768
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 769
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 770
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 771
    goto :goto_1

    .line 773
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    goto :goto_0

    .line 775
    :cond_1
    :goto_1
    return-void
.end method
