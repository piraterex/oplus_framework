.class public Landroid/hardware/gnss/IGnssAntennaInfo$Default;
.super Ljava/lang/Object;
.source "IGnssAntennaInfo.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssAntennaInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssAntennaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/IGnssAntennaInfoCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/gnss/IGnssAntennaInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
