.class public Lcom/android/internal/util/FileRotator;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FileRotator$FileInfo;,
        Lcom/android/internal/util/FileRotator$Rewriter;,
        Lcom/android/internal/util/FileRotator$Writer;,
        Lcom/android/internal/util/FileRotator$Reader;
    }
.end annotation


# static fields
.field private static final blacklist LOGD:Z = false

.field private static final blacklist SUFFIX_BACKUP:Ljava/lang/String; = ".backup"

.field private static final blacklist SUFFIX_NO_BACKUP:Ljava/lang/String; = ".no_backup"

.field private static final blacklist TAG:Ljava/lang/String; = "FileRotator"


# instance fields
.field private final blacklist mBasePath:Ljava/io/File;

.field private final blacklist mDeleteAgeMillis:J

.field private final blacklist mPrefix:Ljava/lang/String;

.field private final blacklist mRotateAgeMillis:J


# direct methods
.method public constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;JJ)V
    .locals 15
    .param p1, "basePath"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "rotateAgeMillis"    # J
    .param p5, "deleteAgeMillis"    # J

    .line 101
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 103
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    .line 104
    move-wide/from16 v2, p3

    iput-wide v2, v0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    .line 105
    move-wide/from16 v4, p5

    iput-wide v4, v0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_3

    aget-object v9, v1, v8

    .line 112
    .local v9, "name":Ljava/lang/String;
    iget-object v10, v0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_2

    .line 114
    :cond_0
    const-string v10, ".backup"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 117
    new-instance v11, Ljava/io/File;

    iget-object v12, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v11, "backupFile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    iget-object v13, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 119
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v14, v10

    invoke-virtual {v9, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v13, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v12

    .line 122
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v11, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "backupFile":Ljava/io/File;
    goto :goto_1

    .line 124
    :cond_1
    const-string v10, ".no_backup"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 127
    new-instance v11, Ljava/io/File;

    iget-object v12, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v11, "noBackupFile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    iget-object v13, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 129
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v14, v10

    invoke-virtual {v9, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v13, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v12

    .line 132
    .restart local v10    # "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 133
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 124
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "noBackupFile":Ljava/io/File;
    :cond_2
    :goto_1
    nop

    .line 111
    .end local v9    # "name":Ljava/lang/String;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 136
    :cond_3
    return-void
.end method

.method private blacklist getActiveName(J)Ljava/lang/String;
    .locals 10
    .param p1, "currentTimeMillis"    # J

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "oldestActiveName":Ljava/lang/String;
    const-wide v1, 0x7fffffffffffffffL

    .line 325
    .local v1, "oldestActiveStart":J
    new-instance v3, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v4, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 326
    .local v3, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v4, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 327
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v3, v7}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 330
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-wide v8, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v8, v8, p1

    if-gez v8, :cond_1

    iget-wide v8, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v8, v8, v1

    if-gez v8, :cond_1

    .line 332
    move-object v0, v7

    .line 333
    iget-wide v1, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 326
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 337
    :cond_2
    if-eqz v0, :cond_3

    .line 338
    return-object v0

    .line 341
    :cond_3
    iput-wide p1, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 342
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v3, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 343
    invoke-virtual {v3}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 387
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 389
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/internal/util/FileRotator$Reader;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 392
    nop

    .line 393
    return-void

    .line 391
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 392
    throw v2
.end method

.method private static blacklist rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 412
    move-object v0, p0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 414
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    .local v0, "file":Ljava/io/File;
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->reset()V

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    invoke-static {v0, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    .line 248
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->shouldWrite()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 251
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".backup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    .local v1, "backupFile":Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 255
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    .line 258
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    goto :goto_0

    .line 259
    :catchall_0
    move-exception v2

    .line 261
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 262
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 263
    invoke-static {v2}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 268
    .end local v1    # "backupFile":Ljava/io/File;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".no_backup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    .restart local v1    # "backupFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 272
    :try_start_1
    invoke-static {v0, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    .line 275
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 281
    nop

    .line 283
    :goto_0
    return-void

    .line 276
    :catchall_1
    move-exception v2

    .line 278
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 279
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 280
    invoke-static {v2}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method private static blacklist writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "writer"    # Lcom/android/internal/util/FileRotator$Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 397
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 399
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/internal/util/FileRotator$Writer;->write(Ljava/io/OutputStream;)V

    .line 400
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 405
    goto :goto_0

    .line 404
    :catch_0
    move-exception v2

    .line 406
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 407
    nop

    .line 408
    return-void

    .line 402
    :catchall_0
    move-exception v2

    .line 403
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 405
    goto :goto_1

    .line 404
    :catch_1
    move-exception v3

    .line 406
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 407
    throw v2
.end method


# virtual methods
.method public blacklist combineActive(Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;J)V
    .locals 1
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .param p2, "writer"    # Lcom/android/internal/util/FileRotator$Writer;
    .param p3, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    new-instance v0, Lcom/android/internal/util/FileRotator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/util/FileRotator$1;-><init>(Lcom/android/internal/util/FileRotator;Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 214
    return-void
.end method

.method public blacklist deleteAll()V
    .locals 7

    .line 142
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 144
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 143
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method

.method public blacklist dumpAll(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 157
    .local v0, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v1, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 159
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 161
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 163
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v7, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v7, "file":Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    .local v8, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v8, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :try_start_2
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 169
    nop

    .line 171
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_1

    .line 168
    :catchall_0
    move-exception v2

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 169
    nop

    .end local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "this":Lcom/android/internal/util/FileRotator;
    .end local p1    # "os":Ljava/io/OutputStream;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "this":Lcom/android/internal/util/FileRotator;
    .restart local p1    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "info":Lcom/android/internal/util/FileRotator$FileInfo;
    :cond_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 176
    nop

    .line 177
    return-void

    .line 175
    :catchall_1
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 176
    throw v1
.end method

.method public blacklist maybeRotate(J)V
    .locals 13
    .param p1, "currentTimeMillis"    # J

    .line 352
    iget-wide v0, p0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    sub-long v0, p1, v0

    .line 353
    .local v0, "rotateBefore":J
    iget-wide v2, p0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    sub-long v2, p1, v2

    .line 355
    .local v2, "deleteBefore":J
    new-instance v4, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 356
    .local v4, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 357
    .local v5, "baseFiles":[Ljava/lang/String;
    if-nez v5, :cond_0

    .line 358
    return-void

    .line 361
    :cond_0
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 362
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v4, v8}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 364
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 365
    iget-wide v9, v4, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v9, v9, v0

    if-gtz v9, :cond_3

    .line 369
    iput-wide p1, v4, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 371
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 372
    .local v9, "file":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v4}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 373
    .local v10, "destFile":Ljava/io/File;
    invoke-virtual {v9, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 374
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "destFile":Ljava/io/File;
    goto :goto_1

    .line 375
    :cond_2
    iget-wide v9, v4, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v9, v9, v2

    if-gtz v9, :cond_3

    .line 379
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    .restart local v9    # "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 361
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 383
    :cond_4
    return-void
.end method

.method public blacklist readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V
    .locals 7
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .param p2, "matchStartMillis"    # J
    .param p4, "matchEndMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 306
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 309
    :cond_0
    iget-wide v5, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v5, v5, p4

    if-gtz v5, :cond_1

    iget-wide v5, v0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v5, p2, v5

    if-gtz v5, :cond_1

    .line 312
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .local v5, "file":Ljava/io/File;
    invoke-static {v5, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    .line 305
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    :cond_2
    return-void
.end method

.method public blacklist rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V
    .locals 1
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .param p2, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/FileRotator;->getActiveName(J)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "activeName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public blacklist rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    .locals 6
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 223
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 222
    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    :cond_1
    return-void
.end method

.method public blacklist rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;JJ)V
    .locals 2
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .param p2, "startTimeMillis"    # J
    .param p4, "endTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iput-wide p2, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 295
    iput-wide p4, v0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 296
    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 297
    return-void
.end method
