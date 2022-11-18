.class public Lcom/oplus/app/ITerminateObserver$Default;
.super Ljava/lang/Object;
.source "ITerminateObserver.java"

# interfaces
.implements Lcom/oplus/app/ITerminateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/ITerminateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 9
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

.method public whitelist onRequestTerminate(ILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public whitelist onTerminateStateChanged(IIZ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "isRegister"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
