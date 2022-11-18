.class public Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;
.super Ljava/lang/Object;
.source "CapabilityExchangeAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/stub/CapabilityExchangeEventListener;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CapExchangeListener"


# instance fields
.field private final blacklist mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "reasonCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 90
    .local v0, "listener":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    if-nez v0, :cond_0

    .line 91
    return-void

    .line 94
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    nop

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPublishUpdated exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapExchangeListener"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v2, Landroid/telephony/ims/ImsException;

    const/4 v3, 0x1

    const-string v4, "Remote is not available"

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .locals 6
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 110
    .local p2, "remoteCapabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 111
    .local v0, "listener":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    if-nez v0, :cond_0

    .line 112
    return-void

    .line 115
    :cond_0
    new-instance v1, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;

    invoke-direct {v1, p0, p3}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;-><init>(Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V

    .line 138
    .local v1, "internalCallback":Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v2, v1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    nop

    .line 145
    return-void

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote capability request exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CapExchangeListener"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v3, Landroid/telephony/ims/ImsException;

    const/4 v4, 0x1

    const-string v5, "Remote is not available"

    invoke-direct {v3, v5, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public whitelist onRequestPublishCapabilities(I)V
    .locals 5
    .param p1, "publishTriggerType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 54
    .local v0, "listener":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    if-nez v0, :cond_0

    .line 55
    return-void

    .line 58
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    nop

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request publish capabilities exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapExchangeListener"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v2, Landroid/telephony/ims/ImsException;

    const/4 v3, 0x1

    const-string v4, "Remote is not available"

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist onUnpublish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 71
    .local v0, "listener":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    if-nez v0, :cond_0

    .line 72
    return-void

    .line 75
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onUnpublish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 81
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unpublish exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapExchangeListener"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v2, Landroid/telephony/ims/ImsException;

    const/4 v3, 0x1

    const-string v4, "Remote is not available"

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
