.class Landroid/app/SystemServiceRegistry$124;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/security/attestationverification/AttestationVerificationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1457
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/security/attestationverification/AttestationVerificationManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1461
    const-string v0, "attestation_verification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1463
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/security/attestationverification/AttestationVerificationManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    .line 1464
    invoke-static {v0}, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/attestationverification/IAttestationVerificationManagerService;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/security/attestationverification/AttestationVerificationManager;-><init>(Landroid/content/Context;Landroid/security/attestationverification/IAttestationVerificationManagerService;)V

    .line 1463
    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1457
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$124;->createService(Landroid/app/ContextImpl;)Landroid/security/attestationverification/AttestationVerificationManager;

    move-result-object p1

    return-object p1
.end method
