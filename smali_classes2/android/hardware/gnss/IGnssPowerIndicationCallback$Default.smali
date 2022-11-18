.class public Landroid/hardware/gnss/IGnssPowerIndicationCallback$Default;
.super Ljava/lang/Object;
.source "IGnssPowerIndicationCallback.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssPowerIndicationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssPowerIndicationCallback;
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

.method public blacklist gnssPowerStatsCb(Landroid/hardware/gnss/GnssPowerStats;)V
    .locals 0
    .param p1, "gnssPowerStats"    # Landroid/hardware/gnss/GnssPowerStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist setCapabilitiesCb(I)V
    .locals 0
    .param p1, "capabilities"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
