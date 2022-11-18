.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;
.super Ljava/lang/Object;
.source "NSRIObjectIdentifiers.java"


# static fields
.field public static final blacklist id_algorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria128_cbc:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria128_ccm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria128_cfb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria128_cmac:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria128_ctr:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria128_ecb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria128_gcm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria128_kw:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria128_kwp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria128_ocb2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria128_ofb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria192_cbc:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria192_ccm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria192_cfb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria192_cmac:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria192_ctr:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria192_ecb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria192_gcm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria192_kw:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria192_kwp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria192_ocb2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria192_ofb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria256_cbc:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria256_ccm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria256_cfb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria256_cmac:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria256_ctr:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria256_ecb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria256_gcm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria256_kw:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria256_kwp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria256_ocb2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_aria256_ofb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_pad:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_pad_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_pad_null:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_sea:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist nsri:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.410.200046"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->nsri:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 13
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_algorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_sea:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    const-string v3, "2"

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_pad:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    const-string v4, "0"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_pad_null:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_pad_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria128_ecb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria128_cbc:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    const-string v0, "3"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria128_cfb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    const-string v0, "4"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria128_ofb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    const-string v0, "5"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria128_ctr:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    const-string v0, "6"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria192_ecb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    const-string v0, "7"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria192_cbc:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    const-string v0, "8"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria192_cfb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    const-string v0, "9"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria192_ofb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    const-string v0, "10"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria192_ctr:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    const-string v0, "11"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria256_ecb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    const-string v0, "12"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria256_cbc:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    const-string v0, "13"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria256_cfb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    const-string v0, "14"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria256_ofb:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    const-string v0, "15"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria256_ctr:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    const-string v0, "21"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria128_cmac:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    const-string v0, "22"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria192_cmac:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    const-string v0, "23"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria256_cmac:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 43
    const-string v0, "31"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria128_ocb2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    const-string v0, "32"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria192_ocb2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    const-string v0, "33"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria256_ocb2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    const-string v0, "34"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria128_gcm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    const-string v0, "35"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria192_gcm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    const-string v0, "36"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria256_gcm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 51
    const-string v0, "37"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria128_ccm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    const-string v0, "38"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria192_ccm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    const-string v0, "39"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria256_ccm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    const-string v0, "40"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria128_kw:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    const-string v0, "41"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria192_kw:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    const-string v0, "42"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria256_kw:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    const-string v0, "43"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria128_kwp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    const-string v0, "44"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria192_kwp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 61
    const-string v0, "45"

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria256_kwp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
