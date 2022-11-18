.class public Landroid/security/IFileIntegrityService$Default;
.super Ljava/lang/Object;
.source "IFileIntegrityService.java"

# interfaces
.implements Landroid/security/IFileIntegrityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IFileIntegrityService;
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

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isApkVeritySupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAppSourceCertificateTrusted([BLjava/lang/String;)Z
    .locals 1
    .param p1, "certificateBytes"    # [B
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method
