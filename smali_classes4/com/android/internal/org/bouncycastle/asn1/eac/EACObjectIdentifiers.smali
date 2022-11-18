.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;
.super Ljava/lang/Object;
.source "EACObjectIdentifiers.java"


# static fields
.field public static final blacklist bsi_de:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_CA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_CA_DH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_CA_DH_3DES_CBC_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_CA_ECDH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_CA_ECDH_3DES_CBC_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_EAC_ePassport:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_PK:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_PK_DH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_PK_ECDH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_ECDSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_ECDSA_SHA_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_ECDSA_SHA_224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_ECDSA_SHA_256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_ECDSA_SHA_384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_ECDSA_SHA_512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_RSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_RSA_PSS_SHA_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_RSA_PSS_SHA_256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_RSA_PSS_SHA_512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_RSA_v1_5_SHA_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_RSA_v1_5_SHA_256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_TA_RSA_v1_5_SHA_512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "0.4.0.127.0.7"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->bsi_de:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    const-string v1, "2.2.1"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_PK:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_PK_DH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    const-string v3, "2"

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_PK_ECDH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    const-string v1, "2.2.3"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA_DH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    invoke-virtual {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA_DH_3DES_CBC_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA_ECDH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA_ECDH_3DES_CBC_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 74
    const-string v1, "2.2.2"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 79
    invoke-virtual {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 81
    invoke-virtual {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 83
    const-string v5, "3"

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    sput-object v6, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_PSS_SHA_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 85
    const-string v6, "4"

    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    sput-object v7, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_PSS_SHA_256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 87
    const-string v7, "5"

    invoke-virtual {v4, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    sput-object v8, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    const-string v8, "6"

    invoke-virtual {v4, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_PSS_SHA_512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 91
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 93
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 95
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 99
    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 101
    invoke-virtual {v1, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 111
    const-string v1, "3.1.2.1"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_EAC_ePassport:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
