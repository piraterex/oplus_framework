.class public Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Default;
.super Ljava/lang/Object;
.source "IBiometricEnabledOnKeyguardCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
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

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onChanged(ZI)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
