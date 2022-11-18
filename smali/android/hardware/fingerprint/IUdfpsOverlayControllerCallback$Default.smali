.class public Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Default;
.super Ljava/lang/Object;
.source "IUdfpsOverlayControllerCallback.java"

# interfaces
.implements Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;
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

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onUserCanceled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
