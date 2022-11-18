.class public Landroid/os/IProcessInfoService$Default;
.super Ljava/lang/Object;
.source "IProcessInfoService.java"

# interfaces
.implements Landroid/os/IProcessInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IProcessInfoService;
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

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProcessStatesAndOomScoresFromPids([I[I[I)V
    .locals 0
    .param p1, "pids"    # [I
    .param p2, "states"    # [I
    .param p3, "scores"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist getProcessStatesFromPids([I[I)V
    .locals 0
    .param p1, "pids"    # [I
    .param p2, "states"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
