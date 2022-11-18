.class public Lcom/android/internal/util/FastDataInput;
.super Ljava/lang/Object;
.source "FastDataInput.java"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/Closeable;


# static fields
.field private static final blacklist MAX_UNSIGNED_SHORT:I = 0xffff


# instance fields
.field private final blacklist mBuffer:[B

.field private final blacklist mBufferCap:I

.field private blacklist mBufferLim:I

.field private blacklist mBufferPos:I

.field private final blacklist mBufferPtr:J

.field private final blacklist mIn:Ljava/io/InputStream;

.field private final blacklist mRuntime:Ldalvik/system/VMRuntime;

.field private blacklist mStringRefCount:I

.field private blacklist mStringRefs:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/FastDataInput;->mStringRefCount:I

    .line 58
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/FastDataInput;->mStringRefs:[Ljava/lang/String;

    .line 61
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastDataInput;->mRuntime:Ldalvik/system/VMRuntime;

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    iput-object v1, p0, Lcom/android/internal/util/FastDataInput;->mIn:Ljava/io/InputStream;

    .line 63
    const/16 v1, 0x8

    if-lt p2, v1, :cond_0

    .line 67
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p2}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    .line 68
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPtr:J

    .line 69
    array-length v0, v1

    iput v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferCap:I

    .line 70
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private blacklist fill(I)V
    .locals 5
    .param p1, "need"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    .line 74
    .local v0, "remain":I
    iget-object v2, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    .line 76
    iput v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    .line 77
    sub-int/2addr p1, v0

    .line 79
    :goto_0
    if-lez p1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/internal/util/FastDataInput;->mIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v4, p0, Lcom/android/internal/util/FastDataInput;->mBufferCap:I

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 81
    .local v1, "c":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 84
    iget v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    .line 85
    sub-int/2addr p1, v1

    .line 87
    .end local v1    # "c":I
    goto :goto_0

    .line 82
    .restart local v1    # "c":I
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 88
    .end local v1    # "c":I
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 93
    return-void
.end method

.method public blacklist peekByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public whitelist test-api readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public whitelist test-api readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public whitelist test-api readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist test-api readFully([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/util/FastDataInput;->readFully([BII)V

    .line 98
    return-void
.end method

.method public whitelist test-api readFully([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferCap:I

    if-lt v0, p3, :cond_1

    .line 105
    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    goto :goto_1

    .line 109
    :cond_1
    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    .line 110
    .local v0, "remain":I
    iget-object v2, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    .line 112
    add-int/2addr p2, v0

    .line 113
    sub-int/2addr p3, v0

    .line 115
    :goto_0
    if-lez p3, :cond_3

    .line 116
    iget-object v1, p0, Lcom/android/internal/util/FastDataInput;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 117
    .local v1, "c":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 120
    add-int/2addr p2, v1

    .line 121
    sub-int/2addr p3, v1

    .line 123
    .end local v1    # "c":I
    goto :goto_0

    .line 118
    .restart local v1    # "c":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 125
    .end local v0    # "remain":I
    .end local v1    # "c":I
    :cond_3
    :goto_1
    return-void
.end method

.method public whitelist test-api readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public blacklist readInternedUTF()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readUnsignedShort()I

    move-result v0

    .line 157
    .local v0, "ref":I
    const v1, 0xffff

    if-ne v0, v1, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "s":Ljava/lang/String;
    iget v3, p0, Lcom/android/internal/util/FastDataInput;->mStringRefCount:I

    if-ge v3, v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/internal/util/FastDataInput;->mStringRefs:[Ljava/lang/String;

    array-length v4, v1

    if-ne v3, v4, :cond_0

    .line 164
    shr-int/lit8 v4, v3, 0x1

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/util/FastDataInput;->mStringRefs:[Ljava/lang/String;

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/FastDataInput;->mStringRefs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/util/FastDataInput;->mStringRefCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/util/FastDataInput;->mStringRefCount:I

    aput-object v2, v1, v3

    .line 170
    :cond_1
    return-object v2

    .line 172
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/util/FastDataInput;->mStringRefs:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public whitelist test-api readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readLong()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    or-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    or-int/2addr v2, v3

    .line 234
    .local v2, "h":I
    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    iput v4, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v5, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    .line 238
    .local v0, "l":I
    int-to-long v3, v2

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    int-to-long v5, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    return-wide v3
.end method

.method public whitelist test-api readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public whitelist test-api readUTF()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readUnsignedShort()I

    move-result v0

    .line 132
    .local v0, "len":I
    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferCap:I

    if-le v1, v0, :cond_1

    .line 133
    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    .line 134
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPtr:J

    iget v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    invoke-static {v1, v2, v3, v0}, Landroid/util/CharsetUtils;->fromModifiedUtf8Bytes(JII)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "res":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    .line 136
    return-object v1

    .line 138
    .end local v1    # "res":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/FastDataInput;->mRuntime:Ldalvik/system/VMRuntime;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 139
    .local v1, "tmp":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/util/FastDataInput;->readFully([BII)V

    .line 140
    iget-object v3, p0, Lcom/android/internal/util/FastDataInput;->mRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v3, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-static {v3, v4, v2, v0}, Landroid/util/CharsetUtils;->fromModifiedUtf8Bytes(JII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    return v0
.end method

.method public whitelist test-api skipBytes(I)I
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
