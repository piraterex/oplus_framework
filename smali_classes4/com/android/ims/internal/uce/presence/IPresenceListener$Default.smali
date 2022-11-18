.class public Lcom/android/ims/internal/uce/presence/IPresenceListener$Default;
.super Ljava/lang/Object;
.source "IPresenceListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist capInfoReceived(Ljava/lang/String;[Lcom/android/ims/internal/uce/presence/PresTupleInfo;)V
    .locals 0
    .param p1, "presentityURI"    # Ljava/lang/String;
    .param p2, "tupleInfo"    # [Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist cmdStatus(Lcom/android/ims/internal/uce/presence/PresCmdStatus;)V
    .locals 0
    .param p1, "cmdStatus"    # Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist getVersionCb(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist listCapInfoReceived(Lcom/android/ims/internal/uce/presence/PresRlmiInfo;[Lcom/android/ims/internal/uce/presence/PresResInfo;)V
    .locals 0
    .param p1, "rlmiInfo"    # Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    .param p2, "resInfo"    # [Lcom/android/ims/internal/uce/presence/PresResInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist publishTriggering(Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;)V
    .locals 0
    .param p1, "publishTrigger"    # Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .locals 0
    .param p1, "statusCode"    # Lcom/android/ims/internal/uce/common/StatusCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist serviceUnAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .locals 0
    .param p1, "statusCode"    # Lcom/android/ims/internal/uce/common/StatusCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist sipResponseReceived(Lcom/android/ims/internal/uce/presence/PresSipResponse;)V
    .locals 0
    .param p1, "sipResponse"    # Lcom/android/ims/internal/uce/presence/PresSipResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist unpublishMessageSent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method
