.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ObjectIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    }
.end annotation


# static fields
.field private static final blacklist LONG_LIMIT:J = 0xffffffffffff80L

.field private static final blacklist pool:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist body:[B

.field private final blacklist identifier:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 446
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "branchID"    # Ljava/lang/String;

    .line 198
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 199
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 205
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a valid OID branch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 178
    if-eqz p1, :cond_1

    .line 182
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 189
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not an OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'identifier\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([B)V
    .locals 15
    .param p1, "bytes"    # [B

    .line 94
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 95
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v2, "objId":Ljava/lang/StringBuffer;
    const-wide/16 v3, 0x0

    .line 97
    .local v3, "value":J
    const/4 v5, 0x0

    .line 98
    .local v5, "bigValue":Ljava/math/BigInteger;
    const/4 v6, 0x1

    .line 100
    .local v6, "first":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v1

    if-eq v7, v8, :cond_8

    .line 102
    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xff

    .line 104
    .local v8, "b":I
    const-wide v9, 0xffffffffffff80L

    cmp-long v9, v3, v9

    const/16 v10, 0x32

    const-wide/16 v13, 0x50

    if-gtz v9, :cond_4

    .line 106
    and-int/lit8 v9, v8, 0x7f

    int-to-long v11, v9

    add-long/2addr v3, v11

    .line 107
    and-int/lit16 v9, v8, 0x80

    if-nez v9, :cond_3

    .line 109
    if-eqz v6, :cond_2

    .line 111
    const-wide/16 v11, 0x28

    cmp-long v9, v3, v11

    if-gez v9, :cond_0

    .line 113
    const/16 v9, 0x30

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 115
    :cond_0
    cmp-long v9, v3, v13

    if-gez v9, :cond_1

    .line 117
    const/16 v9, 0x31

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    sub-long/2addr v3, v11

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    sub-long/2addr v3, v13

    .line 125
    :goto_1
    const/4 v6, 0x0

    .line 128
    :cond_2
    const/16 v9, 0x2e

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 130
    const-wide/16 v3, 0x0

    goto :goto_2

    .line 134
    :cond_3
    const/4 v9, 0x7

    shl-long/2addr v3, v9

    goto :goto_2

    .line 139
    :cond_4
    if-nez v5, :cond_5

    .line 141
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 143
    :cond_5
    and-int/lit8 v9, v8, 0x7f

    int-to-long v11, v9

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 144
    and-int/lit16 v9, v8, 0x80

    if-nez v9, :cond_7

    .line 146
    if-eqz v6, :cond_6

    .line 148
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 150
    const/4 v6, 0x0

    .line 153
    :cond_6
    const/16 v9, 0x2e

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 155
    const/4 v5, 0x0

    .line 156
    const-wide/16 v3, 0x0

    goto :goto_2

    .line 160
    :cond_7
    const/4 v9, 0x7

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 100
    .end local v8    # "b":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 166
    .end local v7    # "i":I
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 167
    invoke-static/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B

    .line 168
    return-void
.end method

.method private blacklist doOutput(Ljava/io/ByteArrayOutputStream;)V
    .locals 9
    .param p1, "aOut"    # Ljava/io/ByteArrayOutputStream;

    .line 280
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "tok":Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    .line 283
    .local v1, "first":I
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "secondToken":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    if-gt v3, v4, :cond_0

    .line 286
    int-to-long v5, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-direct {p0, p1, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_0

    .line 290
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 293
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v4, :cond_1

    .line 298
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {p0, p1, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_1

    .line 302
    :cond_1
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 304
    .end local v3    # "token":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 305
    :cond_2
    return-void
.end method

.method static blacklist fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3
    .param p0, "enc"    # [B

    .line 477
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;-><init>([B)V

    .line 478
    .local v0, "hdl":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 479
    .local v1, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v1, :cond_0

    .line 481
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    return-object v2

    .line 483
    :cond_0
    return-object v1
.end method

.method private declared-synchronized blacklist getBody()[B
    .locals 2

    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 313
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    .line 315
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B

    .line 318
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 80
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_1

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    return-object v1

    .line 82
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 33
    if-eqz p0, :cond_3

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    .line 40
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 42
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_1

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v1

    .line 48
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 50
    move-object v0, p0

    check-cast v0, [B

    .line 53
    .local v0, "enc":[B
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 55
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct object identifier from byte[]: "

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

    .line 61
    .end local v0    # "enc":[B
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
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

    .line 35
    :cond_3
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method private static blacklist isValidBranchID(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "branchID"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "digitCount":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 371
    .local v1, "pos":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, p1, :cond_4

    .line 373
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 375
    .local v5, "ch":C
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    .line 377
    if-eqz v0, :cond_1

    if-le v0, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 378
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_0

    goto :goto_1

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 380
    :cond_1
    :goto_1
    return v3

    .line 385
    :cond_2
    if-gt v2, v5, :cond_3

    const/16 v2, 0x39

    if-gt v5, v2, :cond_3

    .line 387
    add-int/lit8 v0, v0, 0x1

    .line 393
    .end local v5    # "ch":C
    :goto_2
    goto :goto_0

    .line 391
    .restart local v5    # "ch":C
    :cond_3
    return v3

    .line 395
    .end local v5    # "ch":C
    :cond_4
    if-eqz v0, :cond_6

    if-le v0, v4, :cond_5

    add-int/lit8 v5, v1, 0x1

    .line 396
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_5

    goto :goto_3

    .line 401
    :cond_5
    return v4

    .line 398
    :cond_6
    :goto_3
    return v3
.end method

.method private static blacklist isValidIdentifier(Ljava/lang/String;)Z
    .locals 3
    .param p0, "identifier"    # Ljava/lang/String;

    .line 407
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 413
    .local v0, "first":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x32

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 415
    :cond_2
    :goto_0
    return v1

    .line 409
    .end local v0    # "first":C
    :cond_3
    :goto_1
    return v1
.end method

.method private blacklist writeField(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "fieldValue"    # J

    .line 244
    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 245
    .local v0, "result":[B
    const/16 v1, 0x8

    .line 246
    .local v1, "pos":I
    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 247
    :goto_0
    const-wide/16 v2, 0x80

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    .line 249
    const/4 v2, 0x7

    shr-long/2addr p2, v2

    .line 250
    add-int/lit8 v1, v1, -0x1

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 252
    :cond_0
    rsub-int/lit8 v2, v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 253
    return-void
.end method

.method private blacklist writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 7
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "fieldValue"    # Ljava/math/BigInteger;

    .line 259
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x7

    div-int/2addr v0, v1

    .line 260
    .local v0, "byteCount":I
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 266
    :cond_0
    move-object v3, p2

    .line 267
    .local v3, "tmpValue":Ljava/math/BigInteger;
    new-array v4, v0, [B

    .line 268
    .local v4, "tmp":[B
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 270
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x7f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 271
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 268
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 273
    .end local v5    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    aget-byte v5, v4, v1

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 274
    array-length v1, v4

    invoke-virtual {p1, v4, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 276
    .end local v3    # "tmpValue":Ljava/math/BigInteger;
    .end local v4    # "tmp":[B
    :goto_1
    return-void
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 2
    .param p1, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 347
    if-ne p1, p0, :cond_0

    .line 349
    const/4 v0, 0x1

    return v0

    .line 352
    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_1

    .line 354
    const/4 v0, 0x0

    return v0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p1, "branchID"    # Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-object v0
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

    .line 336
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    .line 337
    return-void
.end method

.method blacklist encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v0

    array-length v0, v0

    .line 331
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public blacklist getId()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3

    .line 433
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;-><init>([B)V

    .line 434
    .local v0, "hdl":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 435
    .local v2, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v2, :cond_0

    .line 437
    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 438
    if-nez v2, :cond_0

    .line 440
    move-object v2, p0

    .line 443
    :cond_0
    return-object v2
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist on(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 4
    .param p1, "stem"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "stemId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
