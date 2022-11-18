.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;
.super Ljava/lang/Object;
.source "TeleTrusTObjectIdentifiers.java"


# static fields
.field public static final blacklist brainpoolP160r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP160t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP192r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP192t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP224r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP224t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP256r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP256t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP320r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP320t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP384r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP384t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP512r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist brainpoolP512t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ecSign:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ecSignWithRipemd160:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ecSignWithSha1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ecc_brainpool:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ellipticCurve:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ripemd128:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ripemd160:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ripemd256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist rsaSignatureWithripemd128:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist rsaSignatureWithripemd160:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist rsaSignatureWithripemd256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist teleTrusTAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist teleTrusTRSAsignatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist versionOne:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.36.3"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    const-string v1, "2.2"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    const-string v1, "3.1"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTRSAsignatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    const-string v3, "3"

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    const-string v4, "4"

    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    const-string v1, "3.2"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSign:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    const-string v5, "1"

    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    sput-object v6, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSignWithSha1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSignWithRipemd160:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    const-string v1, "3.2.8"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecc_brainpool:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ellipticCurve:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP160r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP160t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP192r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP192t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP224r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP224t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    const-string v1, "7"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    const-string v1, "9"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP320r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    const-string v1, "10"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP320t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    const-string v1, "11"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 74
    const-string v1, "12"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    const-string v1, "13"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP512r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 78
    const-string v1, "14"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP512t1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
