.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Set.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;",
        "Lcom/android/internal/org/bouncycastle/util/Iterable<",
        "Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;",
        ">;"
    }
.end annotation


# instance fields
.field protected final blacklist elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

.field protected final blacklist isSorted:Z


# direct methods
.method protected constructor blacklist <init>()V
    .locals 1

    .line 229
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 230
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 232
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "element"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 239
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 240
    if-eqz p1, :cond_0

    .line 245
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 246
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 247
    return-void

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'element\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .locals 3
    .param p1, "elementVector"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "doSort"    # Z

    .line 255
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 256
    if-eqz p1, :cond_3

    .line 262
    const/4 v0, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 264
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 265
    .local v1, "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sort([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 269
    .end local v1    # "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 272
    .restart local v1    # "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 273
    if-nez p2, :cond_2

    array-length v2, v1

    if-ge v2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 274
    return-void

    .line 258
    .end local v1    # "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'elementVector\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "isSorted"    # Z
    .param p2, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 299
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 300
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 301
    if-nez p1, :cond_1

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 302
    return-void
.end method

.method protected constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .locals 3
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p2, "doSort"    # Z

    .line 282
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 283
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->isNullOrContainsNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 288
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 289
    .local v0, "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v1, 0x2

    if-eqz p2, :cond_0

    array-length v2, v0

    if-lt v2, v1, :cond_0

    .line 291
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sort([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 294
    :cond_0
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 295
    if-nez p2, :cond_2

    array-length v2, v0

    if-ge v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 296
    return-void

    .line 285
    .end local v0    # "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'elements\' cannot be null, or contain null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 507
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 509
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot encode object added to SET"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .locals 5
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 169
    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 185
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    if-eqz v1, :cond_2

    .line 189
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    .line 192
    :cond_2
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    .line 195
    :cond_3
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_5

    .line 197
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 199
    .local v1, "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    instance-of v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    if-eqz v2, :cond_4

    .line 201
    return-object v1

    .line 204
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v2

    .line 210
    .end local v1    # "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :cond_5
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_7

    .line 212
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 215
    .local v1, "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArrayInternal()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 217
    .local v2, "elements":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 219
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/BERSet;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 222
    :cond_6
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 225
    .end local v1    # "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "elements":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 116
    if-eqz p0, :cond_4

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1SetParser;

    if-eqz v0, :cond_1

    .line 122
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1SetParser;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0

    .line 124
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 128
    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct set from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_3

    .line 137
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 139
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3

    .line 141
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v1

    .line 145
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in getInstance: "

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

    .line 118
    :cond_4
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method private static blacklist lessThanOrEqual([B[B)Z
    .locals 8
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 534
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x21

    .line 535
    .local v1, "a0":I
    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, -0x21

    .line 536
    .local v2, "b0":I
    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    .line 538
    if-ge v1, v2, :cond_0

    move v0, v3

    :cond_0
    return v0

    .line 541
    :cond_1
    array-length v4, p0

    array-length v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v3

    .line 542
    .local v4, "last":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 544
    aget-byte v6, p0, v5

    aget-byte v7, p1, v5

    if-eq v6, v7, :cond_3

    .line 546
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    if-ge v6, v7, :cond_2

    move v0, v3

    :cond_2
    return v0

    .line 542
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 549
    .end local v5    # "i":I
    :cond_4
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    if-gt v5, v6, :cond_5

    move v0, v3

    :cond_5
    return v0
.end method

.method private static blacklist sort([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 12
    .param p0, "t"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 554
    array-length v0, p0

    .line 555
    .local v0, "count":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 557
    return-void

    .line 560
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p0, v1

    .local v1, "eh":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    .line 561
    .local v2, "ei":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v3

    .local v3, "bh":[B
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v4

    .line 563
    .local v4, "bi":[B
    invoke-static {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 565
    move-object v5, v2

    .local v5, "et":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    move-object v2, v1

    move-object v1, v5

    .line 566
    move-object v6, v4

    .local v6, "bt":[B
    move-object v4, v3

    move-object v3, v6

    .line 569
    .end local v5    # "et":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v6    # "bt":[B
    :cond_1
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_6

    .line 571
    aget-object v6, p0, v5

    .line 572
    .local v6, "e2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v7

    .line 574
    .local v7, "b2":[B
    invoke-static {v4, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 576
    add-int/lit8 v8, v5, -0x2

    aput-object v1, p0, v8

    .line 577
    move-object v1, v2

    move-object v3, v4

    .line 578
    move-object v2, v6

    move-object v4, v7

    .line 579
    goto :goto_3

    .line 582
    :cond_2
    invoke-static {v3, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 584
    add-int/lit8 v8, v5, -0x2

    aput-object v1, p0, v8

    .line 585
    move-object v1, v6

    move-object v3, v7

    .line 586
    goto :goto_3

    .line 589
    :cond_3
    add-int/lit8 v8, v5, -0x1

    .line 590
    .local v8, "j":I
    :goto_1
    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_5

    .line 592
    add-int/lit8 v9, v8, -0x1

    aget-object v9, p0, v9

    .line 593
    .local v9, "e1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v10

    .line 595
    .local v10, "b1":[B
    invoke-static {v10, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 597
    goto :goto_2

    .line 600
    :cond_4
    aput-object v9, p0, v8

    .line 601
    .end local v9    # "e1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v10    # "b1":[B
    goto :goto_1

    .line 603
    :cond_5
    :goto_2
    aput-object v6, p0, v8

    .line 569
    .end local v6    # "e2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v7    # "b2":[B
    .end local v8    # "j":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 606
    .end local v5    # "i":I
    :cond_6
    add-int/lit8 v5, v0, -0x2

    aput-object v1, p0, v5

    .line 607
    add-int/lit8 v5, v0, -0x1

    aput-object v2, p0, v5

    .line 608
    return-void
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 9
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 438
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 440
    return v1

    .line 443
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 445
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    .line 446
    .local v2, "count":I
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 448
    return v1

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    .line 452
    .local v3, "dis":Lcom/android/internal/org/bouncycastle/asn1/DERSet;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    .line 454
    .local v4, "dat":Lcom/android/internal/org/bouncycastle/asn1/DERSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 456
    iget-object v6, v3, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 457
    .local v6, "p1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v7, v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v7, v7, v5

    invoke-interface {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 459
    .local v7, "p2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-eq v6, v7, :cond_2

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 461
    return v1

    .line 454
    .end local v6    # "p1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v7    # "p2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 465
    .end local v5    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method abstract blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "index"    # I

    .line 334
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getObjects()Ljava/util/Enumeration;
    .locals 1

    .line 306
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 396
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 399
    .local v1, "hc":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 404
    :cond_0
    return v1
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 470
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Arrays$Iterator;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1SetParser;
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 356
    .local v0, "count":I
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$2;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;I)V

    return-object v1
.end method

.method public blacklist size()I
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    return v0
.end method

.method public blacklist toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 414
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .local v0, "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0

    .line 420
    .end local v0    # "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 421
    .restart local v0    # "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sort([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 424
    :goto_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 433
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 477
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 478
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 480
    const-string v1, "[]"

    return-object v1

    .line 483
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 484
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 485
    const/4 v2, 0x0

    .line 487
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 488
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_1

    .line 490
    nop

    .line 494
    .end local v2    # "i":I
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 495
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 492
    .restart local v2    # "i":I
    :cond_1
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
