.class public Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "DERUniversalString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# static fields
.field private static final blacklist table:[C


# instance fields
.field private final blacklist string:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->table:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor blacklist <init>([B)V
    .locals 1
    .param p1, "string"    # [B

    .line 83
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->string:[B

    .line 85
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;
    .locals 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 66
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_1

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    return-object v1

    .line 68
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 30
    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 39
    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error getInstance: "

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

    .line 47
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

    .line 32
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    return-object v0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 2
    .param p1, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 138
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->string:[B

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->string:[B

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0
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

    .line 132
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->string:[B

    const/16 v1, 0x1c

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    .line 133
    return-void
.end method

.method blacklist encodedLength()I
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->string:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getOctets()[B
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->string:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getString()Ljava/lang/String;
    .locals 5

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "buf":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->getEncoded()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .local v1, "string":[B
    nop

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 103
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->table:[C

    aget-byte v4, v1, v2

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    aget-byte v4, v1, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 96
    .end local v1    # "string":[B
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    const-string v3, "internal error encoding UniversalString"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->string:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
