.class Landroid/telecom/RemoteConnectionService$1;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/RemoteConnectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnectionService;

    .line 53
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcel"    # Landroid/telecom/ParcelableConference;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 233
    new-instance v0, Landroid/telecom/RemoteConference;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOutgoingConnectionServiceRpc(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    .line 236
    .local v0, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection;

    .line 238
    .local v3, "c":Landroid/telecom/RemoteConnection;
    if-eqz v3, :cond_0

    .line 239
    invoke-virtual {v0, v3}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    .line 241
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "c":Landroid/telecom/RemoteConnection;
    :cond_0
    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 247
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionCapabilities()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    .line 248
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionProperties()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->setConnectionProperties(I)V

    .line 249
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 250
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConferenceById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 256
    .local v1, "newExtras":Landroid/os/Bundle;
    const-string v2, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    nop

    .line 259
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 258
    const-string v3, "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 262
    new-instance v2, Landroid/telecom/RemoteConnectionService$1$1;

    invoke-direct {v2, p0, p1}, Landroid/telecom/RemoteConnectionService$1$1;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;)V

    .line 270
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telecom/ConnectionService;->addRemoteConference(Landroid/telecom/RemoteConference;)V

    .line 271
    return-void
.end method

.method public blacklist addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .locals 12
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 378
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "addExistingConnection: callId=%s, conn=%s"

    invoke-static {v0, v5, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "callingPackage":Ljava/lang/String;
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/ConnectionService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 384
    .local v2, "callingTargetSdkVersion":I
    new-instance v11, Landroid/telecom/RemoteConnection;

    iget-object v5, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v5}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOutgoingConnectionServiceRpc(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v7

    move-object v5, v11

    move-object v6, p1

    move-object v8, p2

    move-object v9, v0

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;Ljava/lang/String;I)V

    .line 388
    .local v5, "remoteConnection":Landroid/telecom/RemoteConnection;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v6, "newExtras":Landroid/os/Bundle;
    nop

    .line 390
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    .line 389
    const-string v8, "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 391
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getParentCallId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 392
    iget-object v7, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v7}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConferenceById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getParentCallId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/RemoteConference;

    .line 399
    .local v7, "parentConf":Landroid/telecom/RemoteConference;
    if-eqz v7, :cond_0

    .line 400
    invoke-virtual {v7}, Landroid/telecom/RemoteConference;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.telecom.extra.ADD_TO_CONFERENCE_ID"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    new-array v1, v1, [Ljava/lang/Object;

    .line 402
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getParentCallId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v3

    invoke-virtual {v7}, Landroid/telecom/RemoteConference;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 401
    const-string v3, "addExistingConnection: stash parent of %s as %s"

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    .end local v7    # "parentConf":Landroid/telecom/RemoteConference;
    :cond_0
    invoke-virtual {v5, v6}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    .line 406
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v1, Landroid/telecom/RemoteConnectionService$1$2;

    invoke-direct {v1, p0, p1}, Landroid/telecom/RemoteConnectionService$1$2;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;)V

    .line 414
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/telecom/ConnectionService;->addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V

    .line 415
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 353
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "parcel"    # Landroid/telecom/ParcelableConference;
    .param p4, "info"    # Landroid/telecom/Logging/Session$Info;

    .line 109
    return-void
.end method

.method public blacklist handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "parcel"    # Landroid/telecom/ParcelableConnection;
    .param p4, "info"    # Landroid/telecom/Logging/Session$Info;

    .line 60
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 61
    const-string/jumbo v1, "handleCreateConnectionSuccessful"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 62
    .local v0, "connection":Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-$$Nest$sfgetNULL_CONNECTION()Landroid/telecom/RemoteConnection;

    move-result-object v1

    if-eq v0, v1, :cond_8

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmPendingConnections(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 63
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmPendingConnections(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    .line 66
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionProperties()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setConnectionProperties(I)V

    .line 67
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 71
    :cond_1
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 72
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 73
    :cond_2
    nop

    .line 74
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v3

    .line 73
    invoke-virtual {v0, v1, v3}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 78
    :cond_3
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 79
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 83
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConferenceableConnectionIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 85
    .local v4, "confId":Ljava/lang/String;
    iget-object v5, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v5}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 86
    iget-object v5, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v5}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/RemoteConnection;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v4    # "confId":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 89
    :cond_6
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    .line 90
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 91
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->getState()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 94
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .line 96
    :cond_7
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 97
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setIsVoipAudioMode(Z)V

    .line 98
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setRingbackRequested(Z)V

    .line 99
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    .line 101
    .end local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    :cond_8
    return-void
.end method

.method public blacklist onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 448
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onConnectionEvent"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 452
    :cond_0
    return-void
.end method

.method public blacklist onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V
    .locals 0
    .param p1, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 228
    return-void
.end method

.method public blacklist onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "pHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 225
    return-void
.end method

.method public blacklist onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 292
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onPostDialChar"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->onPostDialChar(C)V

    .line 294
    return-void
.end method

.method public blacklist onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 286
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onPostDialWait"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setPostDialWait(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public blacklist onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onRemoteRttRequest"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->onRemoteRttRequest()V

    goto :goto_0

    .line 494
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onRemoteRttRequest called on a remote conference"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    :goto_0
    return-void
.end method

.method public blacklist onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onRttInitiationFailure"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 470
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->onRttInitiationFailure(I)V

    goto :goto_0

    .line 472
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onRttInitiationFailure called on a remote conference"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    :goto_0
    return-void
.end method

.method public blacklist onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onRttInitiationSuccess"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->onRttInitiationSuccess()V

    goto :goto_0

    .line 461
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onRttInitiationSuccess called on a remote conference"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    :goto_0
    return-void
.end method

.method public blacklist onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onRttSessionRemotelyTerminated"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->onRttSessionRemotelyTerminated()V

    goto :goto_0

    .line 483
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onRttSessionRemotelyTerminated called on a remote conference"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    :goto_0
    return-void
.end method

.method public blacklist putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 419
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "putExtras"

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 424
    :goto_0
    return-void
.end method

.method public blacklist queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 300
    return-void
.end method

.method public blacklist removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 275
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "removeCall"

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/telecom/RemoteConference;->setDestroyed()V

    .line 282
    :goto_0
    return-void
.end method

.method public blacklist removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    .line 428
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "removeExtra"

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->removeExtras(Ljava/util/List;)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->removeExtras(Ljava/util/List;)V

    .line 433
    :goto_0
    return-void
.end method

.method public blacklist resetConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 501
    return-void
.end method

.method public blacklist setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 113
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const-string/jumbo v2, "setActive"

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 120
    :goto_0
    return-void
.end method

.method public blacklist setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 340
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setAddress"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 342
    return-void
.end method

.method public blacklist setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "audioRoute"    # I
    .param p3, "bluetoothAddress"    # Ljava/lang/String;
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 438
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    .line 443
    return-void
.end method

.method public blacklist setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "direction"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 512
    return-void
.end method

.method public blacklist setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 347
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setCallerDisplayName"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 348
    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 349
    return-void
.end method

.method public blacklist setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 220
    return-void
.end method

.method public blacklist setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isConference"    # Z
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 507
    return-void
.end method

.method public final blacklist setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    .line 359
    .local p2, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v0, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 361
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 366
    :cond_1
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "setConferenceableConnections"

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1, p1, v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v1

    .line 368
    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_1

    .line 370
    :cond_2
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1, p1, v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v1

    .line 371
    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConference;->setConferenceableConnections(Ljava/util/List;)V

    .line 373
    :goto_1
    return-void
.end method

.method public blacklist setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionCapabilities"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 172
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "setConnectionCapabilities"

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    .line 179
    :goto_0
    return-void
.end method

.method public blacklist setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionProperties"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 184
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "setConnectionProperties"

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setConnectionProperties(I)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setConnectionProperties(I)V

    .line 191
    :goto_0
    return-void
.end method

.method public blacklist setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 130
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setDialing"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 131
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 132
    return-void
.end method

.method public blacklist setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 143
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "setDisconnected"

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 150
    :goto_0
    return-void
.end method

.method public blacklist setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 197
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 198
    const-string/jumbo v1, "setIsConferenced"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 199
    .local v0, "connection":Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-$$Nest$sfgetNULL_CONNECTION()Landroid/telecom/RemoteConnection;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 200
    if-nez p2, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConference;->removeConnection(Landroid/telecom/RemoteConnection;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 207
    invoke-static {v2, p2, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v1

    .line 208
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-$$Nest$sfgetNULL_CONFERENCE()Landroid/telecom/RemoteConference;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 209
    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    .line 213
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 326
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setIsVoipAudioMode"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setIsVoipAudioMode(Z)V

    .line 328
    return-void
.end method

.method public blacklist setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 154
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const-string/jumbo v2, "setOnHold"

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 161
    :goto_0
    return-void
.end method

.method public blacklist setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 136
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setPulling"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 137
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 138
    return-void
.end method

.method public blacklist setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringing"    # Z
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 165
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setRingbackRequested"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setRingbackRequested(Z)V

    .line 167
    return-void
.end method

.method public blacklist setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 124
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setRinging"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 125
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 126
    return-void
.end method

.method public blacklist setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 333
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setStatusHints"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 334
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 335
    return-void
.end method

.method public blacklist setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 306
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "callingPackage":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/ConnectionService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 309
    .local v1, "targetSdkVersion":I
    const/4 v2, 0x0

    .line 310
    .local v2, "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    if-eqz p2, :cond_0

    .line 311
    new-instance v3, Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-direct {v3, p2, v0, v1}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V

    move-object v2, v3

    .line 314
    :cond_0
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v4, "setVideoProvider"

    invoke-static {v3, p1, v4}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v3

    .line 315
    invoke-virtual {v3, v2}, Landroid/telecom/RemoteConnection;->setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V

    .line 316
    return-void
.end method

.method public blacklist setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 320
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setVideoState"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 322
    return-void
.end method
