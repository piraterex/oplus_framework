.class public Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;
.super Landroid/app/PackageDeleteObserver;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegacyPackageDeleteObserver"
.end annotation


# instance fields
.field private final greylist-max-o mLegacy:Landroid/content/pm/IPackageDeleteObserver;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/IPackageDeleteObserver;)V
    .locals 0
    .param p1, "legacy"    # Landroid/content/pm/IPackageDeleteObserver;

    .line 9711
    invoke-direct {p0}, Landroid/app/PackageDeleteObserver;-><init>()V

    .line 9712
    iput-object p1, p0, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->mLegacy:Landroid/content/pm/IPackageDeleteObserver;

    .line 9713
    return-void
.end method


# virtual methods
.method public greylist-max-o onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 9717
    iget-object v0, p0, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->mLegacy:Landroid/content/pm/IPackageDeleteObserver;

    if-nez v0, :cond_0

    return-void

    .line 9719
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9721
    goto :goto_0

    .line 9720
    :catch_0
    move-exception v0

    .line 9722
    :goto_0
    return-void
.end method
