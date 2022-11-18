.class Landroid/os/MemoryFile$MemoryInputStream;
.super Ljava/io/InputStream;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MemoryFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryInputStream"
.end annotation


# instance fields
.field private greylist-max-o mMark:I

.field private greylist-max-o mOffset:I

.field private greylist-max-o mSingleByte:[B

.field final synthetic blacklist this$0:Landroid/os/MemoryFile;


# direct methods
.method private constructor blacklist <init>(Landroid/os/MemoryFile;)V
    .locals 0

    .line 247
    iput-object p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 249
    const/4 p1, 0x0

    iput p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    .line 250
    iput p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$MemoryInputStream-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-static {v1}, Landroid/os/MemoryFile;->-$$Nest$fgetmSharedMemory(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/SharedMemory;->getSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 256
    const/4 v0, 0x0

    return v0

    .line 258
    :cond_0
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-static {v0}, Landroid/os/MemoryFile;->-$$Nest$fgetmSharedMemory(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v0

    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .line 268
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    .line 269
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .locals 1

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 279
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/os/MemoryFile$MemoryInputStream;->read([BII)I

    move-result v0

    .line 282
    .local v0, "result":I
    if-eq v0, v1, :cond_1

    .line 283
    const/4 v1, -0x1

    return v1

    .line 285
    :cond_1
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    aget-byte v1, v1, v2

    return v1
.end method

.method public whitelist test-api read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 295
    invoke-virtual {p0}, Landroid/os/MemoryFile$MemoryInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 296
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 297
    const/4 v0, -0x1

    return v0

    .line 299
    :cond_0
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/os/MemoryFile;->readBytes([BIII)I

    move-result v0

    .line 300
    .local v0, "result":I
    if-lez v0, :cond_1

    .line 301
    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    .line 303
    :cond_1
    return v0

    .line 293
    .end local v0    # "result":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    .line 274
    return-void
.end method

.method public whitelist test-api skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget-object v2, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-static {v2}, Landroid/os/MemoryFile;->-$$Nest$fgetmSharedMemory(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SharedMemory;->getSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 309
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-static {v0}, Landroid/os/MemoryFile;->-$$Nest$fgetmSharedMemory(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v0

    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    .line 311
    :cond_0
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    .line 312
    return-wide p1
.end method
