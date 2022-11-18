.class public Landroid/hardware/radio/modem/IRadioModemResponse$Default;
.super Ljava/lang/Object;
.source "IRadioModemResponse.java"

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModemResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModemResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeRequest(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enableModemResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist getBasebandVersionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist getDeviceIdentityResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "imeisv"    # Ljava/lang/String;
    .param p4, "esn"    # Ljava/lang/String;
    .param p5, "meid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist getHardwareConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/modem/HardwareConfig;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "config"    # [Landroid/hardware/radio/modem/HardwareConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getModemActivityInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/ActivityStatsInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "activityInfo"    # Landroid/hardware/radio/modem/ActivityStatsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist getModemStackStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist getRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "rc"    # Landroid/hardware/radio/modem/RadioCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist nvReadItemResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist nvResetConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist nvWriteCdmaPrlResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist nvWriteItemResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist requestShutdownResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist sendDeviceStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist setRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "rc"    # Landroid/hardware/radio/modem/RadioCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist setRadioPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method
