.class public Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;
.super Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
.source "NetscapeCertType.java"


# static fields
.field public static final blacklist objectSigning:I = 0x10

.field public static final blacklist objectSigningCA:I = 0x1

.field public static final blacklist reserved:I = 0x8

.field public static final blacklist smime:I = 0x20

.field public static final blacklist smimeCA:I = 0x2

.field public static final blacklist sslCA:I = 0x4

.field public static final blacklist sslClient:I = 0x80

.field public static final blacklist sslServer:I = 0x40


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "usage"    # I

    .line 43
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V
    .locals 2
    .param p1, "usage"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 49
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetscapeCertType: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;->data:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
