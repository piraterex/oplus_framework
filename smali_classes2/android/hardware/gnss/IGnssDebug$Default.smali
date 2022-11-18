.class public Landroid/hardware/gnss/IGnssDebug$Default;
.super Ljava/lang/Object;
.source "IGnssDebug.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssDebug;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssDebug;
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

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDebugData()Landroid/hardware/gnss/IGnssDebug$DebugData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 25
    const/4 v0, 0x0

    return v0
.end method
