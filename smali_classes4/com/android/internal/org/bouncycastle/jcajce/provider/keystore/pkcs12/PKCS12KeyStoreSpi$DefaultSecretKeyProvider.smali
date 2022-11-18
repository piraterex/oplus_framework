.class Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;
.super Ljava/lang/Object;
.source "PKCS12KeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSecretKeyProvider"
.end annotation


# instance fields
.field private final blacklist KEY_SIZES:Ljava/util/Map;


# direct methods
.method constructor blacklist <init>()V
    .locals 5

    .line 1901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1902
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1904
    .local v0, "keySizes":Ljava/util/Map;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.2.840.113533.7.66.10"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v3, 0xc0

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0x100

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->KEY_SIZES:Ljava/util/Map;

    .line 1923
    return-void
.end method


# virtual methods
.method public blacklist getKeySize(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I
    .locals 2
    .param p1, "algorithmIdentifier"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 1928
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->KEY_SIZES:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1930
    .local v0, "keySize":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1932
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1935
    :cond_0
    const/4 v1, -0x1

    return v1
.end method
