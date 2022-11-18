.class public abstract Landroid/content/pm/LauncherApps$Callback;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract whitelist onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public whitelist onPackageLoadingProgressChanged(Ljava/lang/String;Landroid/os/UserHandle;F)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "progress"    # F

    .line 344
    return-void
.end method

.method public abstract whitelist onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract whitelist onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
.end method

.method public whitelist onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 278
    return-void
.end method

.method public whitelist onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "launcherExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps$Callback;->onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 303
    return-void
.end method

.method public abstract whitelist onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
.end method

.method public whitelist onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 315
    return-void
.end method

.method public whitelist onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 334
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    return-void
.end method
