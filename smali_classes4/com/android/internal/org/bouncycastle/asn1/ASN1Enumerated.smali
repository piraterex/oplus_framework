.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Enumerated.java"


# static fields
.field private static blacklist cache:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;


# instance fields
.field private final blacklist bytes:[B

.field private final blacklist start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 184
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "value"    # I

    .line 81
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 82
    if-ltz p1, :cond_0

    .line 87
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 89
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enumerated must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 97
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 105
    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enumerated must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 113
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 114
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->isMalformed([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 123
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    .line 124
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->signBytesToSkip([B)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 125
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enumerated must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "malformed enumerated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 4
    .param p0, "enc"    # [B

    .line 188
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 190
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    return-object v0

    .line 193
    :cond_0
    array-length v0, p0

    if-eqz v0, :cond_3

    .line 197
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 199
    .local v0, "value":I
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 201
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    return-object v1

    .line 204
    :cond_1
    aget-object v2, v1, v0

    .line 206
    .local v2, "possibleMatch":Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    if-nez v2, :cond_2

    .line 208
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v3, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    aput-object v3, v1, v0

    move-object v2, v3

    .line 211
    :cond_2
    return-object v2

    .line 195
    .end local v0    # "value":I
    .end local v2    # "possibleMatch":Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ENUMERATED has zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 2
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 65
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_1

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    return-object v1

    .line 67
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 29
    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 38
    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 169
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    return v0

    .line 174
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 176
    .local v0, "other":Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    .line 164
    return-void
.end method

.method blacklist encodedLength()I
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getValue()Ljava/math/BigInteger;
    .locals 2

    .line 129
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public blacklist hasValue(Ljava/math/BigInteger;)Z
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 134
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    const/4 v2, -0x1

    .line 136
    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public blacklist intValueExact()I
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    array-length v1, v0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    sub-int/2addr v1, v2

    .line 143
    .local v1, "count":I
    const/4 v3, 0x4

    if-gt v1, v3, :cond_0

    .line 148
    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    return v0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v2, "ASN.1 Enumerated out of int range"

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method
