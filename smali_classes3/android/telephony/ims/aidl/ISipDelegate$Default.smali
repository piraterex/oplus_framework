.class public Landroid/telephony/ims/aidl/ISipDelegate$Default;
.super Ljava/lang/Object;
.source "ISipDelegate.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISipDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipDelegate;
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

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cleanupSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist notifyMessageReceiveError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist notifyMessageReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .locals 0
    .param p1, "sipMessage"    # Landroid/telephony/ims/SipMessage;
    .param p2, "configVersion"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
