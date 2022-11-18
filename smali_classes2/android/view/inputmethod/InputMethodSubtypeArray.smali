.class public Landroid/view/inputmethod/InputMethodSubtypeArray;
.super Ljava/lang/Object;
.source "InputMethodSubtypeArray.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodSubtypeArray"


# instance fields
.field private volatile greylist-max-o mCompressedData:[B

.field private final greylist-max-o mCount:I

.field private volatile greylist-max-o mDecompressedSize:I

.field private volatile greylist-max-o mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

.field private final greylist-max-o mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 72
    if-lez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 76
    :cond_0
    return-void
.end method

.method public constructor greylist <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    .line 55
    if-nez p1, :cond_0

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 57
    return-void

    .line 59
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 60
    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 61
    return-void
.end method

.method private static greylist-max-o compress([B)[B
    .locals 4
    .param p0, "data"    # [B

    .line 203
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .local v0, "resultStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 205
    .local v1, "zipper":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 206
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 207
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 207
    return-object v2

    .line 203
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "data":[B
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v1    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "data":[B
    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "data":[B
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 208
    .end local v0    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "data":[B
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "InputMethodSubtypeArray"

    const-string v2, "Failed to compress the data."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o decompress([BI)[B
    .locals 7
    .param p0, "data"    # [B
    .param p1, "expectedSize"    # I

    .line 215
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 217
    .local v2, "unzipper":Ljava/util/zip/GZIPInputStream;
    :try_start_2
    new-array v3, p1, [B

    .line 218
    .local v3, "result":[B
    const/4 v4, 0x0

    .line 219
    .local v4, "totalReadBytes":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 220
    array-length v5, v3

    sub-int/2addr v5, v4

    .line 221
    .local v5, "restBytes":I
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    .local v6, "readBytes":I
    if-gez v6, :cond_0

    .line 223
    goto :goto_1

    .line 225
    :cond_0
    add-int/2addr v4, v6

    .line 226
    .end local v5    # "restBytes":I
    .end local v6    # "readBytes":I
    goto :goto_0

    .line 227
    :cond_1
    :goto_1
    if-eq p1, v4, :cond_2

    .line 228
    nop

    .line 231
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 228
    return-object v0

    .line 230
    :cond_2
    nop

    .line 231
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 230
    return-object v3

    .line 215
    .end local v3    # "result":[B
    .end local v4    # "totalReadBytes":I
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local p0    # "data":[B
    .end local p1    # "expectedSize":I
    :goto_2
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v2    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "data":[B
    .restart local p1    # "expectedSize":I
    :catchall_2
    move-exception v2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v3

    :try_start_a
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "data":[B
    .end local p1    # "expectedSize":I
    :goto_3
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 231
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "data":[B
    .restart local p1    # "expectedSize":I
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "InputMethodSubtypeArray"

    const-string v3, "Failed to decompress the data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    return-object v0
.end method

.method private static greylist-max-o marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B
    .locals 2
    .param p0, "array"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    const/4 v0, 0x0

    .line 178
    :cond_0
    return-object v1

    .line 180
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    const/4 v0, 0x0

    .line 184
    :cond_1
    throw v1
.end method

.method private static greylist-max-o unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3
    .param p0, "data"    # [B

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    .line 191
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 192
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 193
    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    const/4 v0, 0x0

    .line 193
    :cond_0
    return-object v1

    .line 195
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    const/4 v0, 0x0

    .line 199
    :cond_1
    throw v1
.end method


# virtual methods
.method public greylist-max-o get(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5
    .param p1, "index"    # I

    .line 133
    if-ltz p1, :cond_3

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-le v0, p1, :cond_3

    .line 136
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 137
    .local v0, "instance":[Landroid/view/inputmethod/InputMethodSubtype;
    if-nez v0, :cond_2

    .line 138
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    move-object v0, v2

    .line 140
    if-nez v0, :cond_1

    .line 141
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 142
    invoke-static {v2, v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->decompress([BI)[B

    move-result-object v2

    .line 144
    .local v2, "decompressedData":[B
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 145
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 146
    if-eqz v2, :cond_0

    .line 147
    invoke-static {v2}, Landroid/view/inputmethod/InputMethodSubtypeArray;->unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 149
    :cond_0
    const-string v3, "InputMethodSubtypeArray"

    const-string v4, "Failed to decompress data. Returns null as fallback."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v3, v3, [Landroid/view/inputmethod/InputMethodSubtype;

    move-object v0, v3

    .line 152
    :goto_0
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 154
    .end local v2    # "decompressedData":[B
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 156
    :cond_2
    :goto_1
    aget-object v1, v0, p1

    return-object v1

    .line 134
    .end local v0    # "instance":[Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getCount()I
    .locals 1

    .line 163
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return v0
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 88
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 94
    .local v0, "compressedData":[B
    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 95
    .local v1, "decompressedSize":I
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 96
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    move-object v0, v3

    .line 98
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    move v1, v3

    .line 99
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 100
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B

    move-result-object v3

    .line 101
    .local v3, "decompressedData":[B
    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->compress([B)[B

    move-result-object v4

    move-object v0, v4

    .line 102
    if-nez v0, :cond_1

    .line 103
    const/4 v1, -0x1

    .line 104
    const-string v4, "InputMethodSubtypeArray"

    const-string v5, "Failed to compress data."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_1
    array-length v4, v3

    move v1, v4

    .line 108
    :goto_0
    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 109
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 111
    .end local v3    # "decompressedData":[B
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 114
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    if-lez v1, :cond_4

    .line 115
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2

    .line 119
    :cond_4
    const-string v2, "InputMethodSubtypeArray"

    const-string v3, "Unexpected state. Behaving as an empty array."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    :goto_2
    return-void
.end method
