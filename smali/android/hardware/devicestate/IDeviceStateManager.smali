.class public interface abstract Landroid/hardware/devicestate/IDeviceStateManager;
.super Ljava/lang/Object;
.source "IDeviceStateManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/IDeviceStateManager$Stub;,
        Landroid/hardware/devicestate/IDeviceStateManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.devicestate.IDeviceStateManager"


# virtual methods
.method public abstract blacklist cancelStateRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestState(Landroid/os/IBinder;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
