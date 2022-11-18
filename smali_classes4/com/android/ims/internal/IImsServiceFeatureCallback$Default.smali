.class public Lcom/android/ims/internal/IImsServiceFeatureCallback$Default;
.super Ljava/lang/Object;
.source "IImsServiceFeatureCallback.java"

# interfaces
.implements Lcom/android/ims/internal/IImsServiceFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsServiceFeatureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist imsFeatureCreated(Lcom/android/ims/ImsFeatureContainer;I)V
    .locals 0
    .param p1, "feature"    # Lcom/android/ims/ImsFeatureContainer;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist imsFeatureRemoved(I)V
    .locals 0
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist imsStatusChanged(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist updateCapabilities(J)V
    .locals 0
    .param p1, "capabilities"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method
