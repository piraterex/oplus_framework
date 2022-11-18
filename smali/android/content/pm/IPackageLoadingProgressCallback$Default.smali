.class public Landroid/content/pm/IPackageLoadingProgressCallback$Default;
.super Ljava/lang/Object;
.source "IPackageLoadingProgressCallback.java"

# interfaces
.implements Landroid/content/pm/IPackageLoadingProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageLoadingProgressCallback;
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

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onPackageLoadingProgressChanged(F)V
    .locals 0
    .param p1, "progress"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
