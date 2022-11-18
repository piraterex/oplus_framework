.class public Landroid/content/pm/IOnAppsChangedListener$Default;
.super Ljava/lang/Object;
.source "IOnAppsChangedListener.java"

# interfaces
.implements Landroid/content/pm/IOnAppsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOnAppsChangedListener;
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

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onPackageLoadingProgressChanged(Landroid/os/UserHandle;Ljava/lang/String;F)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "progress"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "launcherExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortcuts"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
