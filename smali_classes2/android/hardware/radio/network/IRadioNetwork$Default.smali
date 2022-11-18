.class public Landroid/hardware/radio/network/IRadioNetwork$Default;
.super Ljava/lang/Object;
.source "IRadioNetwork.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetwork;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllowedNetworkTypesBitmap(I)V
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

.method public blacklist getAvailableBandModes(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist getAvailableNetworks(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist getBarringInfo(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist getCdmaRoamingPreference(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist getCellInfoList(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist getDataRegistrationState(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist getImsRegistrationState(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 132
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNetworkSelectionMode(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist getOperator(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist getSignalStrength(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist getSystemSelectionChannels(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist getUsageSetting(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public blacklist getVoiceRadioTechnology(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist getVoiceRegistrationState(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist isNrDualConnectivityEnabled(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist setAllowedNetworkTypesBitmap(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "networkTypeBitmap"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist setBandMode(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist setCdmaRoamingPreference(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist setCellInfoListRate(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public blacklist setIndicationFilter(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "indicationFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteria(IIII[I[II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "hysteresisMs"    # I
    .param p3, "hysteresisDlKbps"    # I
    .param p4, "hysteresisUlKbps"    # I
    .param p5, "thresholdsDownlinkKbps"    # [I
    .param p6, "thresholdsUplinkKbps"    # [I
    .param p7, "accessNetwork"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public blacklist setLocationUpdates(IZ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomatic(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(ILjava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "ran"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public blacklist setNrDualConnectivityState(IB)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "nrDualConnectivityState"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/network/IRadioNetworkResponse;Landroid/hardware/radio/network/IRadioNetworkIndication;)V
    .locals 0
    .param p1, "radioNetworkResponse"    # Landroid/hardware/radio/network/IRadioNetworkResponse;
    .param p2, "radioNetworkIndication"    # Landroid/hardware/radio/network/IRadioNetworkIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteria(I[Landroid/hardware/radio/network/SignalThresholdInfo;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "signalThresholdInfos"    # [Landroid/hardware/radio/network/SignalThresholdInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist setSuppServiceNotifications(IZ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public blacklist setSystemSelectionChannels(IZ[Landroid/hardware/radio/network/RadioAccessSpecifier;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "specifyChannels"    # Z
    .param p3, "specifiers"    # [Landroid/hardware/radio/network/RadioAccessSpecifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist setUsageSetting(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "usageSetting"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist startNetworkScan(ILandroid/hardware/radio/network/NetworkScanRequest;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "request"    # Landroid/hardware/radio/network/NetworkScanRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public blacklist stopNetworkScan(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(ILjava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "netPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method
