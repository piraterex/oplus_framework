.class public Landroid/app/timezone/IRulesManager$Default;
.super Ljava/lang/Object;
.source "IRulesManager.java"

# interfaces
.implements Landroid/app/timezone/IRulesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezone/IRulesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRulesState()Landroid/app/timezone/RulesState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I
    .locals 1
    .param p1, "distroFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "checkToken"    # [B
    .param p3, "callback"    # Landroid/app/timezone/ICallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestNothing([BZ)V
    .locals 0
    .param p1, "token"    # [B
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist requestUninstall([BLandroid/app/timezone/ICallback;)I
    .locals 1
    .param p1, "checkToken"    # [B
    .param p2, "callback"    # Landroid/app/timezone/ICallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return v0
.end method
