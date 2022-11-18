.class public interface abstract Landroid/os/IExternalVibratorService;
.super Ljava/lang/Object;
.source "IExternalVibratorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IExternalVibratorService$Stub;,
        Landroid/os/IExternalVibratorService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IExternalVibratorService"

.field public static final blacklist SCALE_HIGH:I = 0x1

.field public static final blacklist SCALE_LOW:I = -0x1

.field public static final blacklist SCALE_MUTE:I = -0x64

.field public static final blacklist SCALE_NONE:I = 0x0

.field public static final blacklist SCALE_VERY_HIGH:I = 0x2

.field public static final blacklist SCALE_VERY_LOW:I = -0x2


# virtual methods
.method public abstract blacklist onExternalVibrationStart(Landroid/os/ExternalVibration;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
