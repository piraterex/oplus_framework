.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Boolean.java"


# static fields
.field public static final blacklist FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

.field private static final blacklist FALSE_VALUE:B = 0x0t

.field public static final blacklist TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

.field private static final blacklist TRUE_VALUE:B = -0x1t


# instance fields
.field private final blacklist value:B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    .line 25
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method private constructor blacklist <init>(B)V
    .locals 0
    .param p1, "value"    # B

    .line 116
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 117
    iput-byte p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->value:B

    .line 118
    return-void
.end method

.method static blacklist fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .locals 2
    .param p0, "value"    # [B

    .line 169
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 175
    .local v0, "b":B
    packed-switch v0, :pswitch_data_0

    .line 179
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    return-object v1

    .line 177
    :pswitch_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-object v1

    .line 178
    :pswitch_1
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-object v1

    .line 171
    .end local v0    # "b":B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BOOLEAN value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getInstance(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .locals 1
    .param p0, "value"    # I

    .line 77
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .locals 2
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 105
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_1

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    return-object v1

    .line 107
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 39
    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 46
    move-object v0, p0

    check-cast v0, [B

    .line 49
    .local v0, "enc":[B
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 51
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct boolean from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    .end local v0    # "enc":[B
    .end local v1    # "e":Ljava/io/IOException;
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

    .line 41
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-object v0
.end method

.method public static blacklist getInstance(Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .locals 1
    .param p0, "value"    # Z

    .line 67
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    return-object v0
.end method

.method public static blacklist getInstance([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .locals 1
    .param p0, "octets"    # [B

    .line 87
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    return-object v0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 142
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 144
    return v1

    .line 147
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    .line 149
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
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

    .line 137
    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->value:B

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZIB)V

    .line 138
    return-void
.end method

.method blacklist encodedLength()I
    .locals 1

    .line 132
    const/4 v0, 0x3

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    return v0
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTrue()Z
    .locals 1

    .line 122
    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->value:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0
.end method
