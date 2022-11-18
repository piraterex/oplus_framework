.class public Lcom/android/internal/org/bouncycastle/jce/provider/CertStoreCollectionSpi;
.super Ljava/security/cert/CertStoreSpi;
.source "CertStoreCollectionSpi.java"


# instance fields
.field private blacklist params:Ljava/security/cert/CollectionCertStoreParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/security/cert/CertStoreParameters;)V
    .locals 3
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    .line 30
    instance-of v0, p1, Ljava/security/cert/CollectionCertStoreParameters;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p1

    check-cast v0, Ljava/security/cert/CollectionCertStoreParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertStoreCollectionSpi;->params:Ljava/security/cert/CollectionCertStoreParameters;

    .line 36
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.internal.org.bouncycastle.jce.provider.CertStoreCollectionSpi: parameter must be a CollectionCertStoreParameters object\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 4
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "col":Ljava/util/List;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertStoreCollectionSpi;->params:Ljava/security/cert/CollectionCertStoreParameters;

    invoke-virtual {v1}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    .local v1, "iter":Ljava/util/Iterator;
    if-nez p1, :cond_1

    .line 83
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 87
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/CRL;

    if-eqz v3, :cond_0

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 95
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 99
    .restart local v2    # "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/CRL;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Ljava/security/cert/CRL;

    invoke-interface {p1, v3}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    goto :goto_1

    .line 106
    :cond_3
    return-object v0
.end method

.method public whitelist test-api engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 4
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "col":Ljava/util/List;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertStoreCollectionSpi;->params:Ljava/security/cert/CollectionCertStoreParameters;

    invoke-virtual {v1}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 45
    .local v1, "iter":Ljava/util/Iterator;
    if-nez p1, :cond_1

    .line 47
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/Certificate;

    if-eqz v3, :cond_0

    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 63
    .restart local v2    # "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/Certificate;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-interface {p1, v3}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    goto :goto_1

    .line 70
    :cond_3
    return-object v0
.end method
