.class public Landroid/hardware/location/IActivityRecognitionHardwareClient$Default;
.super Ljava/lang/Object;
.source "IActivityRecognitionHardwareClient.java"

# interfaces
.implements Landroid/hardware/location/IActivityRecognitionHardwareClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IActivityRecognitionHardwareClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V
    .locals 0
    .param p1, "isSupported"    # Z
    .param p2, "instance"    # Landroid/hardware/location/IActivityRecognitionHardware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
