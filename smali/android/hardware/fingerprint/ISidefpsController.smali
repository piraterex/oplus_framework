.class public interface abstract Landroid/hardware/fingerprint/ISidefpsController;
.super Ljava/lang/Object;
.source "ISidefpsController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/ISidefpsController$Stub;,
        Landroid/hardware/fingerprint/ISidefpsController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.ISidefpsController"


# virtual methods
.method public abstract blacklist hide(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist show(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
