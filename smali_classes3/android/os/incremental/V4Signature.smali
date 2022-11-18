.class public Landroid/os/incremental/V4Signature;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/V4Signature$SigningInfos;,
        Landroid/os/incremental/V4Signature$SigningInfoBlock;,
        Landroid/os/incremental/V4Signature$SigningInfo;,
        Landroid/os/incremental/V4Signature$HashingInfo;
    }
.end annotation


# static fields
.field public static final blacklist EXT:Ljava/lang/String; = ".idsig"

.field public static final blacklist HASHING_ALGORITHM_SHA256:I = 0x1

.field public static final blacklist INCFS_MAX_SIGNATURE_SIZE:I = 0x1fa0

.field public static final blacklist LOG2_BLOCK_SIZE_4096_BYTES:B = 0xct

.field public static final blacklist SUPPORTED_VERSION:I = 0x2


# instance fields
.field public final blacklist hashingInfo:[B

.field public final blacklist signingInfos:[B

.field public final blacklist version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B
    .locals 0

    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(I[B[B)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "hashingInfo"    # [B
    .param p3, "signingInfos"    # [B

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p1, p0, Landroid/os/incremental/V4Signature;->version:I

    .line 253
    iput-object p2, p0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    .line 254
    iput-object p3, p0, Landroid/os/incremental/V4Signature;->signingInfos:[B

    .line 255
    return-void
.end method

.method private static blacklist bytesSize([B)I
    .locals 1
    .param p0, "bytes"    # [B

    .line 276
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static blacklist getSignedData(JLandroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfo;)[B
    .locals 3
    .param p0, "fileSize"    # J
    .param p2, "hashingInfo"    # Landroid/os/incremental/V4Signature$HashingInfo;
    .param p3, "signingInfo"    # Landroid/os/incremental/V4Signature$SigningInfo;

    .line 229
    iget-object v0, p2, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    .line 230
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    iget-object v1, p2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    .line 231
    invoke-static {v1}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Landroid/os/incremental/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v1}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Landroid/os/incremental/V4Signature$SigningInfo;->certificate:[B

    .line 232
    invoke-static {v1}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    invoke-static {v1}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    .local v0, "size":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 235
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 236
    invoke-virtual {v1, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 237
    iget v2, p2, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 238
    iget-byte v2, p2, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 239
    iget-object v2, p2, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    invoke-static {v1, v2}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    .line 240
    iget-object v2, p2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v1, v2}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    .line 241
    iget-object v2, p3, Landroid/os/incremental/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v1, v2}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    .line 242
    iget-object v2, p3, Landroid/os/incremental/V4Signature$SigningInfo;->certificate:[B

    invoke-static {v1, v2}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    .line 243
    iget-object v2, p3, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    invoke-static {v1, v2}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    .line 244
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private static blacklist readBytes(Ljava/io/InputStream;I)[B
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    :try_start_0
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readIntLE(Ljava/io/InputStream;)I

    move-result v0

    .line 306
    .local v0, "size":I
    if-gt v0, p1, :cond_0

    .line 310
    new-array v1, v0, [B

    .line 311
    .local v1, "bytes":[B
    invoke-static {p0, v1}, Landroid/os/incremental/V4Signature;->readFully(Ljava/io/InputStream;[B)V

    .line 312
    return-object v1

    .line 307
    .end local v1    # "bytes":[B
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Signature is too long. Max allowed is 8096"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "stream":Ljava/io/InputStream;
    .end local p1    # "maxSize":I
    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0    # "size":I
    .restart local p0    # "stream":Ljava/io/InputStream;
    .restart local p1    # "maxSize":I
    :catch_0
    move-exception v0

    .line 314
    .local v0, "ignored":Ljava/io/EOFException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist readBytes(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 322
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 323
    .local v0, "size":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 326
    new-array v1, v0, [B

    .line 327
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 328
    return-object v1

    .line 324
    .end local v1    # "bytes":[B
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 320
    .end local v0    # "size":I
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static blacklist readFrom(Landroid/os/ParcelFileDescriptor;)Landroid/os/incremental/V4Signature;
    .locals 3
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 195
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom(Ljava/io/InputStream;)Landroid/os/incremental/V4Signature;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 195
    return-object v1

    .line 194
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static blacklist readFrom(Ljava/io/InputStream;)Landroid/os/incremental/V4Signature;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readIntLE(Ljava/io/InputStream;)I

    move-result v0

    .line 259
    .local v0, "version":I
    const/16 v1, 0x1fa0

    .line 260
    .local v1, "maxSize":I
    invoke-static {p0, v1}, Landroid/os/incremental/V4Signature;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    .line 261
    .local v2, "hashingInfo":[B
    if-eqz v2, :cond_0

    .line 262
    array-length v3, v2

    sub-int/2addr v1, v3

    .line 264
    :cond_0
    invoke-static {p0, v1}, Landroid/os/incremental/V4Signature;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    .line 265
    .local v3, "signingInfo":[B
    new-instance v4, Landroid/os/incremental/V4Signature;

    invoke-direct {v4, v0, v2, v3}, Landroid/os/incremental/V4Signature;-><init>(I[B[B)V

    return-object v4
.end method

.method public static blacklist readFrom([B)Landroid/os/incremental/V4Signature;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 205
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom(Ljava/io/InputStream;)Landroid/os/incremental/V4Signature;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 205
    return-object v1

    .line 204
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static blacklist readFully(Ljava/io/InputStream;[B)V
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    array-length v0, p1

    .line 281
    .local v0, "len":I
    const/4 v1, 0x0

    .line 282
    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 283
    sub-int v2, v0, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 284
    .local v2, "count":I
    if-ltz v2, :cond_0

    .line 287
    add-int/2addr v1, v2

    .line 288
    .end local v2    # "count":I
    goto :goto_0

    .line 285
    .restart local v2    # "count":I
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 289
    .end local v2    # "count":I
    :cond_1
    return-void
.end method

.method private static blacklist readIntLE(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 293
    .local v0, "buffer":[B
    invoke-static {p0, v0}, Landroid/os/incremental/V4Signature;->readFully(Ljava/io/InputStream;[B)V

    .line 294
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1
.end method

.method private static blacklist writeBytes(Ljava/io/OutputStream;[B)V
    .locals 1
    .param p0, "stream"    # Ljava/io/OutputStream;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    if-nez p1, :cond_0

    .line 333
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/incremental/V4Signature;->writeIntLE(Ljava/io/OutputStream;I)V

    .line 334
    return-void

    .line 336
    :cond_0
    array-length v0, p1

    invoke-static {p0, v0}, Landroid/os/incremental/V4Signature;->writeIntLE(Ljava/io/OutputStream;I)V

    .line 337
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 338
    return-void
.end method

.method private static blacklist writeBytes(Ljava/nio/ByteBuffer;[B)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "bytes"    # [B

    .line 341
    if-nez p1, :cond_0

    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 343
    return-void

    .line 345
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 346
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 347
    return-void
.end method

.method private static blacklist writeIntLE(Ljava/io/OutputStream;I)V
    .locals 2
    .param p0, "stream"    # Ljava/io/OutputStream;
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 300
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 301
    return-void
.end method

.method private blacklist writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget v0, p0, Landroid/os/incremental/V4Signature;->version:I

    invoke-static {p1, v0}, Landroid/os/incremental/V4Signature;->writeIntLE(Ljava/io/OutputStream;I)V

    .line 270
    iget-object v0, p0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {p1, v0}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 271
    iget-object v0, p0, Landroid/os/incremental/V4Signature;->signingInfos:[B

    invoke-static {p1, v0}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 272
    return-void
.end method


# virtual methods
.method public blacklist isVersionSupported()Z
    .locals 2

    .line 248
    iget v0, p0, Landroid/os/incremental/V4Signature;->version:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist toByteArray()[B
    .locals 3

    .line 213
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-direct {p0, v0}, Landroid/os/incremental/V4Signature;->writeTo(Ljava/io/OutputStream;)V

    .line 215
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    return-object v1

    .line 213
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/os/incremental/V4Signature;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 216
    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/os/incremental/V4Signature;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method
