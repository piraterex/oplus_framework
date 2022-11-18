.class public Landroid/hardware/radio/modem/IRadioModemIndication$Default;
.super Ljava/lang/Object;
.source "IRadioModemIndication.java"

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModemIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModemIndication;
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

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hardwareConfigChanged(I[Landroid/hardware/radio/modem/HardwareConfig;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "configs"    # [Landroid/hardware/radio/modem/HardwareConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist modemReset(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist radioCapabilityIndication(ILandroid/hardware/radio/modem/RadioCapability;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "rc"    # Landroid/hardware/radio/modem/RadioCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist radioStateChanged(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "radioState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist rilConnected(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method
