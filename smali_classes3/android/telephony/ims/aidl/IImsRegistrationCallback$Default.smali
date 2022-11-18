.class public Landroid/telephony/ims/aidl/IImsRegistrationCallback$Default;
.super Ljava/lang/Object;
.source "IImsRegistrationCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRegistrationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRegistrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 0
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 0
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 0
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
