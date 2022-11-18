.class Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
.source "LazyEncodedSequence.java"


# instance fields
.field private blacklist encoded:[B


# direct methods
.method constructor blacklist <init>([B)V
    .locals 0
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    .line 22
    return-void
.end method

.method private blacklist force()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 119
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V

    .line 120
    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 126
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    .line 128
    .end local v0    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_0

    .line 91
    const/16 v1, 0x30

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    goto :goto_0

    .line 95
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :cond_0
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 88
    .end local p1    # "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .end local p2    # "withTag":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_0

    .line 81
    array-length v0, v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 84
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 28
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 25
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getObjects()Ljava/util/Enumeration;
    .locals 2

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_0

    .line 35
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 38
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api hashCode()I
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 45
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->hashCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 42
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 52
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 49
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist size()I
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 59
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 56
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 66
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 63
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method blacklist toArrayInternal()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 73
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArrayInternal()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 103
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 100
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 110
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 107
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
