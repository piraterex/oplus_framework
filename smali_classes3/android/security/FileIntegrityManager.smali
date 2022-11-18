.class public final Landroid/security/FileIntegrityManager;
.super Ljava/lang/Object;
.source "FileIntegrityManager.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/security/IFileIntegrityService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/security/IFileIntegrityService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/security/IFileIntegrityService;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/security/FileIntegrityManager;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Landroid/security/FileIntegrityManager;->mService:Landroid/security/IFileIntegrityService;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist isApkVeritySupported()Z
    .locals 2

    .line 51
    :try_start_0
    iget-object v0, p0, Landroid/security/FileIntegrityManager;->mService:Landroid/security/IFileIntegrityService;

    invoke-interface {v0}, Landroid/security/IFileIntegrityService;->isApkVeritySupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAppSourceCertificateTrusted(Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 74
    :try_start_0
    iget-object v0, p0, Landroid/security/FileIntegrityManager;->mService:Landroid/security/IFileIntegrityService;

    .line 75
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Landroid/security/FileIntegrityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-interface {v0, v1, v2}, Landroid/security/IFileIntegrityService;->isAppSourceCertificateTrusted([BLjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
