.class public Landroid/telephony/ims/aidl/IImsRcsFeature$Default;
.super Ljava/lang/Object;
.source "IImsRcsFeature.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRcsFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRcsFeature;
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
.method public blacklist addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0
    .param p1, "r"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist getFeatureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V
    .locals 0
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IPublishResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist queryCapabilityStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "cb"    # Landroid/telephony/ims/aidl/IOptionsResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    .local p2, "myCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist subscribeForCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .locals 0
    .param p2, "cb"    # Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/ISubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    return-void
.end method
