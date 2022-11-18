.class public Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;
.super Ljava/lang/Object;
.source "RcsPublishResponseAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;


# instance fields
.field private final blacklist mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/IPublishResponseCallback;)V
    .locals 0
    .param p1, "responseBinder"    # Landroid/telephony/ims/aidl/IPublishResponseCallback;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist onCommandError(I)V
    .locals 4
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 39
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onCommandError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    nop

    .line 43
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 48
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onNetworkResponse(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    nop

    .line 52
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onNetworkRespHeader(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    nop

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
