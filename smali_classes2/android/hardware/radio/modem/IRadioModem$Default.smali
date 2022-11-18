.class public Landroid/hardware/radio/modem/IRadioModem$Default;
.super Ljava/lang/Object;
.source "IRadioModem.java"

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModem;
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

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enableModem(IZ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist getBasebandVersion(I)V
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

.method public blacklist getDeviceIdentity(I)V
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

.method public blacklist getHardwareConfig(I)V
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

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getModemActivityInfo(I)V
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

.method public blacklist getModemStackStatus(I)V
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

.method public blacklist getRadioCapability(I)V
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

.method public blacklist nvReadItem(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "itemId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist nvResetConfig(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "resetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist nvWriteCdmaPrl(I[B)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "prl"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist nvWriteItem(ILandroid/hardware/radio/modem/NvWriteItem;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "item"    # Landroid/hardware/radio/modem/NvWriteItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist requestShutdown(I)V
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

.method public blacklist responseAcknowledgement()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist sendDeviceState(IIZ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "deviceStateType"    # I
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist setRadioCapability(ILandroid/hardware/radio/modem/RadioCapability;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "rc"    # Landroid/hardware/radio/modem/RadioCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist setRadioPower(IZZZ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "powerOn"    # Z
    .param p3, "forEmergencyCall"    # Z
    .param p4, "preferredForEmergencyCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/modem/IRadioModemResponse;Landroid/hardware/radio/modem/IRadioModemIndication;)V
    .locals 0
    .param p1, "radioModemResponse"    # Landroid/hardware/radio/modem/IRadioModemResponse;
    .param p2, "radioModemIndication"    # Landroid/hardware/radio/modem/IRadioModemIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method
