.class public Landroid/telephony/ims/aidl/IImsRcsController$Default;
.super Ljava/lang/Object;
.source "IImsRcsController.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRcsController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRcsController;
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

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Ljava/lang/String;Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "request"    # Landroid/telephony/ims/DelegateRequest;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "delegateState"    # Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;
    .param p5, "delegateMessage"    # Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist destroySipDelegate(ILandroid/telephony/ims/aidl/ISipDelegate;I)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "connection"    # Landroid/telephony/ims/aidl/ISipDelegate;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist getImsRcsRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "consumer"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist getImsRcsRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "consumer"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist getUcePublishState(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAvailable(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "radioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCapable(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "radioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSipDelegateSupported(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUceSettingEnabled(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist registerRcsFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist registerUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public blacklist requestAvailability(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "contactNumber"    # Landroid/net/Uri;
    .param p5, "c"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist requestCapabilities(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "c"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/IRcsUceControllerCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    .local p4, "contactNumbers":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    return-void
.end method

.method public blacklist setUceSettingEnabled(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist triggerNetworkRegistration(ILandroid/telephony/ims/aidl/ISipDelegate;ILjava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "connection"    # Landroid/telephony/ims/aidl/ISipDelegate;
    .param p3, "sipCode"    # I
    .param p4, "sipReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public blacklist unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public blacklist unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist unregisterUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method
