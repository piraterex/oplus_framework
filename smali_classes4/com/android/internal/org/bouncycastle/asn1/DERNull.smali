.class public Lcom/android/internal/org/bouncycastle/asn1/DERNull;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;
.source "DERNull.java"


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

.field private static final blacklist zeroBytes:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERNull;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    .line 36
    return-void
.end method

.method blacklist encodedLength()I
    .locals 1

    .line 30
    const/4 v0, 0x2

    return v0
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 25
    const/4 v0, 0x0

    return v0
.end method
