.class public Landroid/hardware/input/IInputSensorEventListener$Default;
.super Ljava/lang/Object;
.source "IInputSensorEventListener.java"

# interfaces
.implements Landroid/hardware/input/IInputSensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputSensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onInputSensorAccuracyChanged(III)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "sensorId"    # I
    .param p3, "accuracy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onInputSensorChanged(IIIJ[F)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "sensorId"    # I
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J
    .param p6, "values"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
