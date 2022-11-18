.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "DSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 7
    .param p1, "provider"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 30
    const-string v0, "AlgorithmParameters.DSA"

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "AlgorithmParameterGenerator.DSA"

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParameterGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "KeyPairGenerator.DSA"

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "KeyFactory.DSA"

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "Signature.SHA1withDSA"

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$stdDSA"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "Alg.Alias.Signature.DSA"

    const-string v6, "SHA1withDSA"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "Signature.NONEWITHDSA"

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$noneDSA"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "Alg.Alias.Signature.RAWDSA"

    const-string v1, "NONEWITHDSA"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA224"

    const-string v3, "DSA"

    const-string v4, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa224"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 69
    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA256"

    const-string v3, "DSA"

    const-string v4, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa256"

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 83
    const-string v0, "Alg.Alias.Signature.SHA/DSA"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "Alg.Alias.Signature.SHA1withDSA"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "Alg.Alias.Signature.SHA1WITHDSA"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.1"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.3"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "Alg.Alias.Signature.DSAwithSHA1"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "Alg.Alias.Signature.DSAWITHSHA1"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "Alg.Alias.Signature.SHA1WithDSA"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "Alg.Alias.Signature.DSAWithSHA1"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;-><init>()V

    .line 96
    .local v0, "keyFact":Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alg.Alias.Signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aget-object v2, v2, v1

    const-string v3, "DSA"

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;->registerOid(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 103
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;->registerOidAlgorithmParameterGenerator(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
