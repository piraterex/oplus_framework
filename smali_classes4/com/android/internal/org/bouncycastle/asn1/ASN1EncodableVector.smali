.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
.super Ljava/lang/Object;
.source "ASN1EncodableVector.java"


# static fields
.field private static final blacklist DEFAULT_CAPACITY:I = 0xa

.field static final blacklist EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private blacklist copyOnWrite:Z

.field private blacklist elementCount:I

.field private blacklist elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 20
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-ltz p1, :cond_1

    .line 30
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :cond_0
    new-array v0, p1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    .line 32
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    .line 33
    return-void

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'initialCapacity\' must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .param p0, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 159
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    :goto_0
    return-object v0
.end method

.method private blacklist reallocate(I)V
    .locals 6
    .param p1, "minCapacity"    # I

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 148
    .local v0, "oldCapacity":I
    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 150
    .local v1, "newCapacity":I
    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 151
    .local v2, "copy":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 154
    iput-boolean v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    .line 155
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4
    .param p1, "element"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 37
    if-eqz p1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 43
    .local v0, "capacity":I
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 44
    .local v1, "minCapacity":I
    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 46
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    aput-object p1, v2, v3

    .line 50
    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    .line 51
    return-void

    .line 39
    .end local v0    # "capacity":I
    .end local v1    # "minCapacity":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'element\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 7
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 55
    if-eqz p1, :cond_5

    .line 60
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    .line 61
    .local v0, "otherElementCount":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 63
    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v2

    .line 67
    .local v2, "capacity":I
    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v3, v0

    .line 68
    .local v3, "minCapacity":I
    if-le v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v1, v4

    if-eqz v1, :cond_2

    .line 70
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    .line 73
    :cond_2
    const/4 v1, 0x0

    .line 76
    .local v1, "i":I
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 77
    .local v4, "otherElement":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v4, :cond_4

    .line 82
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v6, v1

    aput-object v4, v5, v6

    .line 84
    .end local v4    # "otherElement":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_3

    .line 86
    iput v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    .line 87
    return-void

    .line 79
    .restart local v4    # "otherElement":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_4
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "\'other\' elements cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 57
    .end local v0    # "otherElementCount":I
    .end local v1    # "i":I
    .end local v2    # "capacity":I
    .end local v3    # "minCapacity":I
    .end local v4    # "otherElement":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'other\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist copyElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 4

    .line 117
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    .line 122
    :cond_0
    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 123
    .local v1, "copy":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    return-object v1
.end method

.method public blacklist get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .param p1, "i"    # I

    .line 97
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-ge p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v0, v0, p1

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist size()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return v0
.end method

.method blacklist takeElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 4

    .line 129
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v1

    if-ne v2, v0, :cond_1

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    .line 137
    return-object v1

    .line 140
    :cond_1
    new-array v2, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 141
    .local v2, "copy":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object v2
.end method
