.class public interface abstract Landroid/system/suspend/internal/ISuspendControlServiceInternal;
.super Ljava/lang/Object;
.source "ISuspendControlServiceInternal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;,
        Landroid/system/suspend/internal/ISuspendControlServiceInternal$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 257
    const-string v0, "android$system$suspend$internal$ISuspendControlServiceInternal"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist enableAutosuspend(Landroid/os/IBinder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist forceSuspend()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSuspendStats()Landroid/system/suspend/internal/SuspendInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getWakeLockStats()[Landroid/system/suspend/internal/WakeLockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getWakeupStats()[Landroid/system/suspend/internal/WakeupInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
