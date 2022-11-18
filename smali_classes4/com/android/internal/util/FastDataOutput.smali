.class public Lcom/android/internal/util/FastDataOutput;
.super Ljava/lang/Object;
.source "FastDataOutput.java"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/Flushable;
.implements Ljava/io/Closeable;


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x8000

.field private static final blacklist MAX_UNSIGNED_SHORT:I = 0xffff

.field private static blacklist sOutCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/util/FastDataOutput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBuffer:[B

.field private final blacklist mBufferCap:I

.field private blacklist mBufferPos:I

.field private final blacklist mBufferPtr:J

.field private blacklist mOut:Ljava/io/OutputStream;

.field private final blacklist mRuntime:Ldalvik/system/VMRuntime;

.field private final blacklist mStringRefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/internal/util/FastDataOutput;->sOutCache:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/OutputStream;I)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    .line 64
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mRuntime:Ldalvik/system/VMRuntime;

    .line 65
    const/16 v1, 0x8

    if-lt p2, v1, :cond_0

    .line 69
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p2}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    .line 70
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPtr:J

    .line 71
    array-length v0, v1

    iput v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastDataOutput;->setOutput(Ljava/io/OutputStream;)V

    .line 74
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private blacklist drain()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    if-lez v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/internal/util/FastDataOutput;->mOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 119
    iput v3, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    .line 121
    :cond_0
    return-void
.end method

.method public static blacklist obtain(Ljava/io/OutputStream;)Lcom/android/internal/util/FastDataOutput;
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 80
    sget-object v0, Lcom/android/internal/util/FastDataOutput;->sOutCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FastDataOutput;

    .line 81
    .local v0, "instance":Lcom/android/internal/util/FastDataOutput;
    if-eqz v0, :cond_0

    .line 82
    invoke-direct {v0, p0}, Lcom/android/internal/util/FastDataOutput;->setOutput(Ljava/io/OutputStream;)V

    .line 83
    return-object v0

    .line 85
    :cond_0
    new-instance v1, Lcom/android/internal/util/FastDataOutput;

    const v2, 0x8000

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/FastDataOutput;-><init>(Ljava/io/OutputStream;I)V

    return-object v1
.end method

.method private blacklist setOutput(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mOut:Ljava/io/OutputStream;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    .line 113
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 114
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

    .line 131
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/util/FastDataOutput;->release()V

    .line 133
    return-void
.end method

.method public whitelist test-api flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    .line 126
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 127
    return-void
.end method

.method public blacklist release()V
    .locals 3

    .line 93
    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    if-gtz v0, :cond_1

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mOut:Ljava/io/OutputStream;

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    .line 99
    iget-object v1, p0, Lcom/android/internal/util/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 101
    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    const v2, 0x8000

    if-ne v1, v2, :cond_0

    .line 103
    sget-object v1, Lcom/android/internal/util/FastDataOutput;->sOutCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-void

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lingering data, call flush() before releasing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 138
    return-void
.end method

.method public whitelist test-api write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/util/FastDataOutput;->write([BII)V

    .line 143
    return-void
.end method

.method public whitelist test-api write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    if-ge v0, p3, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    .line 149
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 151
    :cond_0
    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    .line 155
    :goto_0
    return-void
.end method

.method public whitelist test-api writeBoolean(Z)V
    .locals 0
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 217
    return-void
.end method

.method public whitelist test-api writeByte(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 223
    return-void
.end method

.method public whitelist test-api writeBytes(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api writeChar(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    .line 235
    return-void
.end method

.method public whitelist test-api writeChars(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api writeDouble(D)V
    .locals 2
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeLong(J)V

    .line 269
    return-void
.end method

.method public whitelist test-api writeFloat(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastDataOutput;->writeInt(I)V

    .line 264
    return-void
.end method

.method public whitelist test-api writeInt(I)V
    .locals 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 241
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 242
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 243
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 244
    return-void
.end method

.method public blacklist writeInternedUTF(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 199
    .local v0, "ref":Ljava/lang/Short;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    goto :goto_0

    .line 202
    :cond_0
    const v1, 0xffff

    invoke-virtual {p0, v1}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/internal/util/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-ge v2, v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/internal/util/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist test-api writeLong(J)V
    .locals 5
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    .line 249
    :cond_0
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    .line 250
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 251
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 252
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 253
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 254
    long-to-int v0, p1

    .line 255
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 256
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 257
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 258
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 259
    return-void
.end method

.method public whitelist test-api writeShort(I)V
    .locals 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 229
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 230
    return-void
.end method

.method public whitelist test-api writeUTF(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    .line 165
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPtr:J

    iget v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    invoke-static {p1, v0, v1, v2, v3}, Landroid/util/CharsetUtils;->toModifiedUtf8Bytes(Ljava/lang/String;JII)I

    move-result v0

    .line 166
    .local v0, "len":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xffff

    if-gt v1, v2, :cond_2

    .line 170
    if-ltz v0, :cond_1

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    .line 174
    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    goto :goto_0

    .line 178
    :cond_1
    neg-int v0, v0

    .line 179
    iget-object v1, p0, Lcom/android/internal/util/FastDataOutput;->mRuntime:Ldalvik/system/VMRuntime;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 180
    .local v1, "tmp":[B
    iget-object v2, p0, Lcom/android/internal/util/FastDataOutput;->mRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v2, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v5, v4}, Landroid/util/CharsetUtils;->toModifiedUtf8Bytes(Ljava/lang/String;JII)I

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    .line 182
    invoke-virtual {p0, v1, v5, v0}, Lcom/android/internal/util/FastDataOutput;->write([BII)V

    .line 184
    .end local v1    # "tmp":[B
    :goto_0
    return-void

    .line 167
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modified UTF-8 length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
