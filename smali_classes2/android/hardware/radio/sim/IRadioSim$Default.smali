.class public Landroid/hardware/radio/sim/IRadioSim$Default;
.super Ljava/lang/Object;
.source "IRadioSim.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSim;
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
.method public blacklist areUiccApplicationsEnabled(I)V
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

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "oldPin2"    # Ljava/lang/String;
    .param p3, "newPin2"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "oldPin"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist enableUiccApplications(IZ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist getAllowedCarriers(I)V
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

.method public blacklist getCdmaSubscription(I)V
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

.method public blacklist getCdmaSubscriptionSource(I)V
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

.method public blacklist getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist getIccCardStatus(I)V
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

.method public blacklist getImsiForApp(ILjava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
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

.method public blacklist getSimPhonebookCapacity(I)V
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

.method public blacklist getSimPhonebookRecords(I)V
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

.method public blacklist iccCloseLogicalChannel(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist iccIoForApp(ILandroid/hardware/radio/sim/IccIo;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist iccOpenLogicalChannel(ILjava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "p2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist iccTransmitApduBasicChannel(ILandroid/hardware/radio/sim/SimApdu;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/sim/SimApdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(ILandroid/hardware/radio/sim/SimApdu;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/sim/SimApdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist reportStkServiceIsRunning(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "authContext"    # I
    .param p3, "authData"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist sendEnvelope(ILjava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(ILjava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public blacklist sendTerminalResponseToSim(ILjava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public blacklist setAllowedCarriers(ILandroid/hardware/radio/sim/CarrierRestrictions;I)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "carriers"    # Landroid/hardware/radio/sim/CarrierRestrictions;
    .param p3, "multiSimPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/sim/ImsiEncryptionInfo;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "imsiEncryptionInfo"    # Landroid/hardware/radio/sim/ImsiEncryptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public blacklist setCdmaSubscriptionSource(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "cdmaSub"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public blacklist setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "lockState"    # Z
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/sim/IRadioSimResponse;Landroid/hardware/radio/sim/IRadioSimIndication;)V
    .locals 0
    .param p1, "radioSimResponse"    # Landroid/hardware/radio/sim/IRadioSimResponse;
    .param p2, "radioSimIndication"    # Landroid/hardware/radio/sim/IRadioSimIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public blacklist setSimCardPower(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "powerUp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist setUiccSubscription(ILandroid/hardware/radio/sim/SelectUiccSub;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "uiccSub"    # Landroid/hardware/radio/sim/SelectUiccSub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public blacklist supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "pin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public blacklist supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "puk2"    # Ljava/lang/String;
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public blacklist supplySimDepersonalization(IILjava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "persoType"    # I
    .param p3, "controlKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist updateSimPhonebookRecords(ILandroid/hardware/radio/sim/PhonebookRecordInfo;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "recordInfo"    # Landroid/hardware/radio/sim/PhonebookRecordInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method
