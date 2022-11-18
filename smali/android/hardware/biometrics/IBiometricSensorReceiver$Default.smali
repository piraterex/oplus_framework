.class public Landroid/hardware/biometrics/IBiometricSensorReceiver$Default;
.super Ljava/lang/Object;
.source "IBiometricSensorReceiver.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricSensorReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricSensorReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAcquired(III)V
    .locals 0
    .param p1, "sensorId"    # I
    .param p2, "acquiredInfo"    # I
    .param p3, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onAuthenticationFailed(I)V
    .locals 0
    .param p1, "sensorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(I[B)V
    .locals 0
    .param p1, "sensorId"    # I
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onError(IIII)V
    .locals 0
    .param p1, "sensorId"    # I
    .param p2, "cookie"    # I
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method
