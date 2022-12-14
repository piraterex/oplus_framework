.class public final Landroid/security/net/config/CertificatesEntryRef;
.super Ljava/lang/Object;
.source "CertificatesEntryRef.java"


# instance fields
.field private final greylist-max-o mOverridesPins:Z

.field private final greylist-max-o mSource:Landroid/security/net/config/CertificateSource;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/security/net/config/CertificateSource;Z)V
    .locals 0
    .param p1, "source"    # Landroid/security/net/config/CertificateSource;
    .param p2, "overridesPins"    # Z

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    .line 30
    iput-boolean p2, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    .line 31
    return-void
.end method


# virtual methods
.method public greylist-max-o findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    invoke-interface {v0, p1}, Landroid/security/net/config/CertificateSource;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 56
    iget-object v0, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    invoke-interface {v0, p1}, Landroid/security/net/config/CertificateSource;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 57
    .local v0, "foundCert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    .line 58
    const/4 v1, 0x0

    return-object v1

    .line 61
    :cond_0
    new-instance v1, Landroid/security/net/config/TrustAnchor;

    iget-boolean v2, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    invoke-direct {v1, v0, v2}, Landroid/security/net/config/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;Z)V

    return-object v1
.end method

.method public greylist-max-o findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 47
    iget-object v0, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    invoke-interface {v0, p1}, Landroid/security/net/config/CertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 48
    .local v0, "foundCert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    .line 49
    const/4 v1, 0x0

    return-object v1

    .line 52
    :cond_0
    new-instance v1, Landroid/security/net/config/TrustAnchor;

    iget-boolean v2, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    invoke-direct {v1, v0, v2}, Landroid/security/net/config/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;Z)V

    return-object v1
.end method

.method public greylist-max-o getTrustAnchors()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 40
    .local v0, "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    iget-object v1, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    invoke-interface {v1}, Landroid/security/net/config/CertificateSource;->getCertificates()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 41
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v3, Landroid/security/net/config/TrustAnchor;

    iget-boolean v4, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    invoke-direct {v3, v2, v4}, Landroid/security/net/config/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;Z)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 43
    :cond_0
    return-object v0
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .locals 1

    .line 69
    iget-object v0, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    invoke-interface {v0}, Landroid/security/net/config/CertificateSource;->handleTrustStorageUpdate()V

    .line 70
    return-void
.end method

.method greylist-max-o overridesPins()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    return v0
.end method
