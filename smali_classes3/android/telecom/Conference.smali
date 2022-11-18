.class public abstract Landroid/telecom/Conference;
.super Landroid/telecom/Conferenceable;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Conference$FailureSignalingConference;,
        Landroid/telecom/Conference$Listener;
    }
.end annotation


# static fields
.field public static final whitelist CONNECT_TIME_NOT_SPECIFIED:J = 0x0L

.field private static final blacklist DEBUG:Z = false


# instance fields
.field private blacklist mAddress:Landroid/net/Uri;

.field private blacklist mAddressPresentation:I

.field private greylist-max-o mCallAudioState:Landroid/telecom/CallAudioState;

.field private blacklist mCallDirection:I

.field private blacklist mCallerDisplayName:Ljava/lang/String;

.field private blacklist mCallerDisplayNamePresentation:I

.field private final greylist-max-o mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnectTimeMillis:J

.field private greylist-max-o mConnectionCapabilities:I

.field protected final greylist-max-o mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private greylist-max-o mConnectionProperties:I

.field private greylist-max-o mConnectionStartElapsedRealTime:J

.field private greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private greylist-max-o mDisconnectMessage:Ljava/lang/String;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mExtrasLock:Ljava/lang/Object;

.field private blacklist mIsMultiparty:Z

.field protected final greylist-max-o mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/Conference$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRingbackRequested:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConferenceableConnections(Landroid/telecom/Conference;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .line 133
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    .line 89
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    .line 90
    nop

    .line 91
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    .line 93
    nop

    .line 94
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/Conference;->mState:I

    .line 104
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    .line 105
    iput-wide v1, p0, Landroid/telecom/Conference;->mConnectionStartElapsedRealTime:J

    .line 109
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    .line 116
    iput-boolean v0, p0, Landroid/telecom/Conference;->mIsMultiparty:Z

    .line 119
    new-instance v0, Landroid/telecom/Conference$1;

    invoke-direct {v0, p0}, Landroid/telecom/Conference$1;-><init>(Landroid/telecom/Conference;)V

    iput-object v0, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 134
    iput-object p1, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 135
    return-void
.end method

.method private final greylist-max-o clearConferenceableList()V
    .locals 3

    .line 785
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 786
    .local v1, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 787
    .end local v1    # "c":Landroid/telecom/Connection;
    goto :goto_0

    .line 788
    :cond_0
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 789
    return-void
.end method

.method public static whitelist createFailedConference(Landroid/telecom/DisconnectCause;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Conference;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .line 781
    new-instance v0, Landroid/telecom/Conference$FailureSignalingConference;

    invoke-direct {v0, p0, p1}, Landroid/telecom/Conference$FailureSignalingConference;-><init>(Landroid/telecom/DisconnectCause;Landroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method

.method private greylist-max-o setState(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 744
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    if-eq v0, p1, :cond_0

    .line 745
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    .line 746
    .local v0, "oldState":I
    iput p1, p0, Landroid/telecom/Conference;->mState:I

    .line 747
    iget-object v1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 748
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0, v0, p1}, Landroid/telecom/Conference$Listener;->onStateChanged(Landroid/telecom/Conference;II)V

    .line 749
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 751
    .end local v0    # "oldState":I
    :cond_0
    return-void
.end method


# virtual methods
.method public final whitelist addConnection(Landroid/telecom/Connection;)Z
    .locals 4
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 460
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Connection=%s, connection="

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->setConference(Landroid/telecom/Conference;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onConnectionAdded(Landroid/telecom/Connection;)V

    .line 465
    iget-object v1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 466
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    .line 467
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 468
    :cond_0
    return v0

    .line 471
    :cond_1
    return v2
.end method

.method public final greylist-max-o addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    .line 597
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 598
    return-object p0
.end method

.method public final whitelist destroy()V
    .locals 6

    .line 570
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "destroying conference : %s"

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    iget-object v1, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 573
    .local v3, "connection":Landroid/telecom/Connection;
    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string/jumbo v5, "removing connection %s"

    invoke-static {p0, v5, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    invoke-virtual {p0, v3}, Landroid/telecom/Conference;->removeConnection(Landroid/telecom/Connection;)V

    .line 575
    .end local v3    # "connection":Landroid/telecom/Connection;
    goto :goto_0

    .line 578
    :cond_0
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 579
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "setting to disconnected"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 584
    :cond_1
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 585
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Conference$Listener;->onDestroyed(Landroid/telecom/Conference;)V

    .line 586
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_1

    .line 587
    :cond_2
    return-void
.end method

.method protected final greylist-max-o fireOnConferenceableConnectionsChanged()V
    .locals 3

    .line 554
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 555
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConferenceableConnections()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V

    .line 556
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 557
    :cond_0
    return-void
.end method

.method public final blacklist getAddress()Landroid/net/Uri;
    .locals 1

    .line 1109
    iget-object v0, p0, Landroid/telecom/Conference;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final blacklist getAddressPresentation()I
    .locals 1

    .line 1128
    iget v0, p0, Landroid/telecom/Conference;->mAddressPresentation:I

    return v0
.end method

.method public final whitelist getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final whitelist getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .line 237
    iget-object v0, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final blacklist getCallDirection()I
    .locals 1

    .line 1154
    iget v0, p0, Landroid/telecom/Conference;->mCallDirection:I

    return v0
.end method

.method public final blacklist getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .line 1136
    iget-object v0, p0, Landroid/telecom/Conference;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist getCallerDisplayNamePresentation()I
    .locals 1

    .line 1145
    iget v0, p0, Landroid/telecom/Conference;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final whitelist getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getConnectTimeMillis()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConnectionTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getConnectionCapabilities()I
    .locals 1

    .line 205
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    return v0
.end method

.method public final whitelist getConnectionProperties()I
    .locals 1

    .line 215
    iget v0, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    return v0
.end method

.method public final whitelist getConnectionStartElapsedRealtimeMillis()J
    .locals 2

    .line 727
    iget-wide v0, p0, Landroid/telecom/Conference;->mConnectionStartElapsedRealTime:J

    return-wide v0
.end method

.method public final whitelist getConnectionTime()J
    .locals 2

    .line 709
    iget-wide v0, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .line 418
    iget-object v0, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 987
    iget-object v0, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public whitelist getPrimaryConnection()Landroid/telecom/Connection;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 622
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0

    .line 623
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getState()I
    .locals 1

    .line 186
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    return v0
.end method

.method public final whitelist getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .line 820
    iget-object v0, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final whitelist getTelecomCallId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/telecom/Conference;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVideoState()I
    .locals 1

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method final greylist-max-o handleExtrasChanged(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1196
    const/4 v0, 0x0

    .line 1197
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1198
    :try_start_0
    iput-object p1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    .line 1199
    if-eqz p1, :cond_0

    .line 1200
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    .line 1202
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 1204
    return-void

    .line 1202
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist isMultiparty()Z
    .locals 1

    .line 1060
    iget-boolean v0, p0, Landroid/telecom/Conference;->mIsMultiparty:Z

    return v0
.end method

.method public final whitelist isRingbackRequested()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    return v0
.end method

.method public whitelist onAddConferenceParticipants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 340
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    return-void
.end method

.method public final blacklist onAnswer()V
    .locals 1

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onAnswer(I)V

    .line 361
    return-void
.end method

.method public whitelist onAnswer(I)V
    .locals 0
    .param p1, "videoState"    # I

    .line 350
    return-void
.end method

.method public whitelist onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    return-void
.end method

.method public whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 327
    return-void
.end method

.method public whitelist onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 334
    return-void
.end method

.method public whitelist onDisconnect()V
    .locals 0

    .line 258
    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1000
    return-void
.end method

.method public whitelist onHold()V
    .locals 0

    .line 279
    return-void
.end method

.method public whitelist onMerge()V
    .locals 0

    .line 290
    return-void
.end method

.method public whitelist onMerge(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 274
    return-void
.end method

.method public whitelist onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    .line 303
    return-void
.end method

.method public whitelist onReject()V
    .locals 0

    .line 369
    return-void
.end method

.method public whitelist onSeparate(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 266
    return-void
.end method

.method public whitelist onStopDtmfTone()V
    .locals 0

    .line 308
    return-void
.end method

.method public whitelist onSwap()V
    .locals 0

    .line 296
    return-void
.end method

.method public whitelist onUnhold()V
    .locals 0

    .line 284
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 921
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 922
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 923
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 924
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 934
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 935
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 937
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 908
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 909
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 910
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 911
    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 880
    if-nez p1, :cond_0

    .line 881
    return-void

    .line 887
    :cond_0
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 888
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 889
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    .line 891
    :cond_1
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 892
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 893
    .local v1, "listenersBundle":Landroid/os/Bundle;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 896
    .local v2, "l":Landroid/telecom/Conference$Listener;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p0, v3}, Landroid/telecom/Conference$Listener;->onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V

    .line 897
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 898
    :cond_2
    return-void

    .line 893
    .end local v1    # "listenersBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final whitelist removeConnection(Landroid/telecom/Connection;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 480
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "removing %s from %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p1}, Landroid/telecom/Connection;->resetConference()V

    .line 483
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 484
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    .line 485
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 487
    :cond_0
    return-void
.end method

.method public final whitelist removeExtras(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 945
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 949
    :cond_0
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 951
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 952
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 953
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 955
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 958
    .local v0, "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 959
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0, v0}, Landroid/telecom/Conference$Listener;->onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V

    .line 960
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_1

    .line 961
    :cond_2
    return-void

    .line 955
    .end local v0    # "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 946
    :cond_3
    :goto_2
    return-void
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .line 969
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->removeExtras(Ljava/util/List;)V

    .line 970
    return-void
.end method

.method public final greylist-max-o removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    .line 609
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 610
    return-object p0
.end method

.method public whitelist sendConferenceEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1256
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1257
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Conference$Listener;->onConnectionEvent(Landroid/telecom/Conference;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1258
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 1259
    :cond_0
    return-void
.end method

.method public final whitelist setActive()V
    .locals 1

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setRingbackRequested(Z)V

    .line 397
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 398
    return-void
.end method

.method public final whitelist setAddress(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1088
    iput-object p1, p0, Landroid/telecom/Conference;->mAddress:Landroid/net/Uri;

    .line 1089
    iput p2, p0, Landroid/telecom/Conference;->mAddressPresentation:I

    .line 1090
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1091
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Conference$Listener;->onAddressChanged(Landroid/telecom/Conference;Landroid/net/Uri;I)V

    .line 1092
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 1093
    :cond_0
    return-void
.end method

.method final greylist-max-o setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 2
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 737
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "setCallAudioState %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    iput-object p1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 739
    invoke-virtual {p0}, Landroid/telecom/Conference;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 740
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 741
    return-void
.end method

.method public final blacklist setCallDirection(I)V
    .locals 3
    .param p1, "callDirection"    # I

    .line 1041
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "setDirection %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    iput p1, p0, Landroid/telecom/Conference;->mCallDirection:I

    .line 1043
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1044
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onCallDirectionChanged(Landroid/telecom/Conference;I)V

    .line 1045
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 1046
    :cond_0
    return-void
.end method

.method public final whitelist setCallerDisplayName(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1182
    iput-object p1, p0, Landroid/telecom/Conference;->mCallerDisplayName:Ljava/lang/String;

    .line 1183
    iput p2, p0, Landroid/telecom/Conference;->mCallerDisplayNamePresentation:I

    .line 1184
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1185
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Conference$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Conference;Ljava/lang/String;I)V

    .line 1186
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 1187
    :cond_0
    return-void
.end method

.method public whitelist setConferenceState(Z)V
    .locals 2
    .param p1, "isConference"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1024
    iput-boolean p1, p0, Landroid/telecom/Conference;->mIsMultiparty:Z

    .line 1025
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1026
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onConferenceStateChanged(Landroid/telecom/Conference;Z)V

    .line 1027
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 1028
    :cond_0
    return-void
.end method

.method public final whitelist setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .line 495
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-direct {p0}, Landroid/telecom/Conference;->clearConferenceableList()V

    .line 496
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 499
    .local v1, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 501
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    .end local v1    # "c":Landroid/telecom/Connection;
    :cond_0
    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    .line 505
    return-void
.end method

.method public final whitelist setConnectTimeMillis(J)V
    .locals 0
    .param p1, "connectTimeMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 635
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Conference;->setConnectionTime(J)V

    .line 636
    return-void
.end method

.method public final whitelist setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    .line 428
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    if-eq p1, v0, :cond_0

    .line 429
    iput p1, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 431
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 432
    .local v1, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V

    .line 433
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 435
    :cond_0
    return-void
.end method

.method public final whitelist setConnectionProperties(I)V
    .locals 3
    .param p1, "connectionProperties"    # I

    .line 444
    iget v0, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    if-eq p1, v0, :cond_0

    .line 445
    iput p1, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    .line 447
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 448
    .local v1, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V

    .line 449
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 451
    :cond_0
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealTime(J)V
    .locals 0
    .param p1, "connectionStartElapsedRealTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 670
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Conference;->setConnectionStartElapsedRealtimeMillis(J)V

    .line 671
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealtimeMillis(J)V
    .locals 0
    .param p1, "connectionStartElapsedRealTime"    # J

    .line 688
    iput-wide p1, p0, Landroid/telecom/Conference;->mConnectionStartElapsedRealTime:J

    .line 689
    return-void
.end method

.method public final whitelist setConnectionTime(J)V
    .locals 0
    .param p1, "connectionTimeMillis"    # J

    .line 651
    iput-wide p1, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    .line 652
    return-void
.end method

.method public final whitelist setDialing()V
    .locals 1

    .line 382
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 383
    return-void
.end method

.method public final whitelist setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 3
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 407
    iput-object p1, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 408
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 409
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 410
    .local v1, "l":Landroid/telecom/Conference$Listener;
    iget-object v2, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V

    .line 411
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 412
    :cond_0
    return-void
.end method

.method public final whitelist setExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 840
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 842
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 845
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 846
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .local v1, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 848
    .local v3, "oldKey":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 849
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    .end local v3    # "oldKey":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 853
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 854
    invoke-virtual {p0, v1}, Landroid/telecom/Conference;->removeExtras(Ljava/util/List;)V

    .line 860
    .end local v1    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v1, :cond_4

    .line 861
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    .line 863
    :cond_4
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 864
    if-eqz p1, :cond_5

    .line 865
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 867
    :cond_5
    monitor-exit v0

    .line 868
    return-void

    .line 867
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist setOnHold()V
    .locals 1

    .line 375
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 376
    return-void
.end method

.method public final whitelist setRingbackRequested(Z)V
    .locals 2
    .param p1, "ringback"    # Z

    .line 514
    iget-boolean v0, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    if-eq v0, p1, :cond_0

    .line 515
    iput-boolean p1, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    .line 516
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 517
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onRingbackRequested(Landroid/telecom/Conference;Z)V

    .line 518
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 520
    :cond_0
    return-void
.end method

.method public final whitelist setRinging()V
    .locals 1

    .line 389
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 390
    return-void
.end method

.method public final whitelist setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 2
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .line 810
    iput-object p1, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    .line 811
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 812
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V

    .line 813
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 814
    :cond_0
    return-void
.end method

.method public final greylist-max-o setTelecomCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "telecomCallId"    # Ljava/lang/String;

    .line 159
    iput-object p1, p0, Landroid/telecom/Conference;->mTelecomCallId:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public final whitelist setVideoProvider(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 545
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const-string/jumbo v1, "setVideoProvider Conference: %s Connection: %s VideoState: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 548
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V

    .line 549
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 550
    :cond_0
    return-void
.end method

.method public final whitelist setVideoState(Landroid/telecom/Connection;I)V
    .locals 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .line 532
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 533
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 532
    const-string/jumbo v1, "setVideoState Conference: %s Connection: %s VideoState: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 535
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoStateChanged(Landroid/telecom/Conference;I)V

    .line 536
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 793
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/telecom/Conference;->mState:I

    .line 796
    invoke-static {v2}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 797
    invoke-static {v2}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 798
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 799
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 800
    invoke-virtual {p0}, Landroid/telecom/Conference;->isRingbackRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Y"

    goto :goto_0

    :cond_0
    const-string v2, "N"

    :goto_0
    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    .line 801
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 793
    const-string v2, "[State: %s,Capabilites: %s, VideoState: %s, VideoProvider: %s,isRingbackRequested: %s, ThisObject %s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
