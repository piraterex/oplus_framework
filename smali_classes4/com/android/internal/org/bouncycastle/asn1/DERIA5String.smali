.class public Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "DERIA5String.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private final blacklist string:[B


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    .line 109
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 110
    if-eqz p1, :cond_2

    .line 114
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->isIA5String(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'string\' contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->string:[B

    .line 120
    return-void

    .line 112
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    .line 84
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->string:[B

    .line 86
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;
    .locals 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 68
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_1

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>([B)V

    return-object v1

    .line 70
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 32
    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 41
    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
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

    .line 49
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

    .line 34
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public static blacklist isIA5String(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 184
    .local v2, "ch":C
    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    .line 186
    const/4 v1, 0x0

    return v1

    .line 180
    .end local v2    # "ch":C
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 190
    .end local v0    # "i":I
    :cond_1
    return v1
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 160
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    .line 167
    .local v0, "s":Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->string:[B

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->string:[B

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

    .line 149
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->string:[B

    const/16 v1, 0x16

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    .line 150
    return-void
.end method

.method blacklist encodedLength()I
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->string:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getOctets()[B
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->string:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getString()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->string:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->string:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
