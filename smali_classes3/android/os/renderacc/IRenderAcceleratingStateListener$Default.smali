.class public Landroid/os/renderacc/IRenderAcceleratingStateListener$Default;
.super Ljava/lang/Object;
.source "IRenderAcceleratingStateListener.java"

# interfaces
.implements Landroid/os/renderacc/IRenderAcceleratingStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/renderacc/IRenderAcceleratingStateListener;
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

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onStateReport(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method
