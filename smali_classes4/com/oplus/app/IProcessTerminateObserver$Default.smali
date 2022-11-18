.class public Lcom/oplus/app/IProcessTerminateObserver$Default;
.super Ljava/lang/Object;
.source "IProcessTerminateObserver.java"

# interfaces
.implements Lcom/oplus/app/IProcessTerminateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/IProcessTerminateObserver;
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onProcessTerminate(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
