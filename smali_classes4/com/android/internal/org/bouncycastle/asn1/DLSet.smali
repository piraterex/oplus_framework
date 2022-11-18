.class public Lcom/android/internal/org/bouncycastle/asn1/DLSet;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
.source "DLSet.java"


# instance fields
.field private blacklist bodyLength:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->bodyLength:I

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "element"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->bodyLength:I

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "elementVector"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->bodyLength:I

    .line 81
    return-void
.end method

.method constructor blacklist <init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "isSorted"    # Z
    .param p2, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->bodyLength:I

    .line 94
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->bodyLength:I

    .line 89
    return-void
.end method

.method private blacklist getBodyLength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->bodyLength:I

    if-gez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 101
    .local v0, "count":I
    const/4 v1, 0x0

    .line 103
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 106
    .local v3, "dlObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v4

    add-int/2addr v1, v4

    .line 103
    .end local v3    # "dlObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "i":I
    :cond_0
    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->bodyLength:I

    .line 112
    .end local v0    # "count":I
    .end local v1    # "totalLength":I
    :cond_1
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->bodyLength:I

    return v0
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 8
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    if-eqz p2, :cond_0

    .line 134
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v0

    .line 139
    .local v0, "dlOut":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    .line 140
    .local v1, "count":I
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->bodyLength:I

    const/4 v3, 0x1

    if-gez v2, :cond_3

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    goto :goto_2

    .line 151
    :cond_1
    const/4 v2, 0x0

    .line 153
    .local v2, "totalLength":I
    new-array v4, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 154
    .local v4, "dlObjects":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 156
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 157
    .local v6, "dlObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    aput-object v6, v4, v5

    .line 158
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v7

    add-int/2addr v2, v7

    .line 154
    .end local v6    # "dlObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 161
    .end local v5    # "i":I
    :cond_2
    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->bodyLength:I

    .line 162
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 164
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v1, :cond_4

    .line 166
    aget-object v6, v4, v5

    invoke-virtual {v0, v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 164
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 142
    .end local v2    # "totalLength":I
    .end local v4    # "dlObjects":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "i":I
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->getBodyLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 144
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_4

    .line 146
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 169
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method blacklist encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;->getBodyLength()I

    move-result v0

    .line 119
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 173
    return-object p0
.end method
