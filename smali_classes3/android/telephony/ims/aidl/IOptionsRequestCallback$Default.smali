.class public Landroid/telephony/ims/aidl/IOptionsRequestCallback$Default;
.super Ljava/lang/Object;
.source "IOptionsRequestCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IOptionsRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IOptionsRequestCallback;
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

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist respondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    .locals 0
    .param p1, "ownCapabilities"    # Landroid/telephony/ims/RcsContactUceCapability;
    .param p2, "isBlocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist respondToCapabilityRequestWithError(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
