.class public Landroid/hardware/radio/config/IRadioConfigIndication$Default;
.super Ljava/lang/Object;
.source "IRadioConfigIndication.java"

# interfaces
.implements Landroid/hardware/radio/config/IRadioConfigIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/IRadioConfigIndication;
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

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 27
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist simSlotsStatusChanged(I[Landroid/hardware/radio/config/SimSlotStatus;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "slotStatus"    # [Landroid/hardware/radio/config/SimSlotStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
