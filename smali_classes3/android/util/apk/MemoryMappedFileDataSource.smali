.class Landroid/util/apk/MemoryMappedFileDataSource;
.super Ljava/lang/Object;
.source "MemoryMappedFileDataSource.java"

# interfaces
.implements Landroid/util/apk/DataSource;


# static fields
.field private static final blacklist MEMORY_PAGE_SIZE_BYTES:J


# instance fields
.field private final blacklist mFd:Ljava/io/FileDescriptor;

.field private final blacklist mFilePosition:J

.field private final blacklist mSize:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 34
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    sput-wide v0, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "position"    # J
    .param p4, "size"    # J

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    .line 49
    iput-wide p2, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mFilePosition:J

    .line 50
    iput-wide p4, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mSize:J

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .locals 25
    .param p1, "md"    # Landroid/util/apk/DataDigester;
    .param p2, "offset"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 74
    move-object/from16 v1, p0

    iget-wide v2, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFilePosition:J

    add-long v2, v2, p2

    .line 75
    .local v2, "filePosition":J
    sget-wide v4, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    div-long v6, v2, v4

    mul-long/2addr v6, v4

    .line 77
    .local v6, "mmapFilePosition":J
    sub-long v4, v2, v6

    long-to-int v4, v4

    .line 78
    .local v4, "dataStartOffsetInMmapRegion":I
    add-int v0, p4, v4

    int-to-long v14, v0

    .line 79
    .local v14, "mmapRegionSize":J
    const-wide/16 v17, 0x0

    .line 81
    .local v17, "mmapPtr":J
    const-wide/16 v8, 0x0

    const-wide/16 v19, 0x0

    :try_start_0
    sget v12, Landroid/system/OsConstants;->PROT_READ:I

    sget v0, Landroid/system/OsConstants;->MAP_SHARED:I

    sget v5, Landroid/system/OsConstants;->MAP_POPULATE:I

    or-int v13, v0, v5

    iget-object v0, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-wide v10, v14

    move-wide/from16 v21, v14

    .end local v14    # "mmapRegionSize":J
    .local v21, "mmapRegionSize":J
    move-object v14, v0

    move-wide v15, v6

    :try_start_1
    invoke-static/range {v8 .. v16}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v8
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-wide v14, v8

    .line 88
    .end local v17    # "mmapPtr":J
    .local v14, "mmapPtr":J
    :try_start_2
    new-instance v0, Ljava/nio/DirectByteBuffer;

    int-to-long v8, v4

    add-long v10, v14, v8

    iget-object v12, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v13, 0x0

    const/4 v5, 0x1

    move-object v8, v0

    move/from16 v9, p4

    move-wide/from16 v23, v2

    move-wide v1, v14

    .end local v2    # "filePosition":J
    .end local v14    # "mmapPtr":J
    .local v1, "mmapPtr":J
    .local v23, "filePosition":J
    move v14, v5

    :try_start_3
    invoke-direct/range {v8 .. v14}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    .local v0, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v3, p1

    :try_start_4
    invoke-interface {v3, v0}, Landroid/util/apk/DataDigester;->consume(Ljava/nio/ByteBuffer;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    cmp-long v0, v1, v19

    if-eqz v0, :cond_0

    .line 101
    move-wide/from16 v8, v21

    .end local v21    # "mmapRegionSize":J
    .local v8, "mmapRegionSize":J
    :try_start_5
    invoke-static {v1, v2, v8, v9}, Landroid/system/Os;->munmap(JJ)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0

    .line 102
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 99
    .end local v8    # "mmapRegionSize":J
    .restart local v21    # "mmapRegionSize":J
    :cond_0
    move-wide/from16 v8, v21

    .line 105
    .end local v21    # "mmapRegionSize":J
    .restart local v8    # "mmapRegionSize":J
    :goto_1
    return-void

    .line 99
    .end local v8    # "mmapRegionSize":J
    .restart local v21    # "mmapRegionSize":J
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 96
    :catch_1
    move-exception v0

    goto :goto_3

    .line 99
    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    :goto_2
    move-wide/from16 v8, v21

    move-object v5, v0

    .end local v21    # "mmapRegionSize":J
    .restart local v8    # "mmapRegionSize":J
    goto/16 :goto_5

    .line 96
    .end local v8    # "mmapRegionSize":J
    .restart local v21    # "mmapRegionSize":J
    :catch_2
    move-exception v0

    move-object/from16 v3, p1

    :goto_3
    move-wide/from16 v8, v21

    move-wide/from16 v17, v1

    .end local v21    # "mmapRegionSize":J
    .restart local v8    # "mmapRegionSize":J
    goto :goto_4

    .line 99
    .end local v1    # "mmapPtr":J
    .end local v8    # "mmapRegionSize":J
    .end local v23    # "filePosition":J
    .restart local v2    # "filePosition":J
    .restart local v14    # "mmapPtr":J
    .restart local v21    # "mmapRegionSize":J
    :catchall_2
    move-exception v0

    move-wide/from16 v23, v2

    move-wide v1, v14

    move-wide/from16 v8, v21

    move-object/from16 v3, p1

    move-object v5, v0

    .end local v2    # "filePosition":J
    .end local v14    # "mmapPtr":J
    .end local v21    # "mmapRegionSize":J
    .restart local v1    # "mmapPtr":J
    .restart local v8    # "mmapRegionSize":J
    .restart local v23    # "filePosition":J
    goto :goto_5

    .line 96
    .end local v1    # "mmapPtr":J
    .end local v8    # "mmapRegionSize":J
    .end local v23    # "filePosition":J
    .restart local v2    # "filePosition":J
    .restart local v14    # "mmapPtr":J
    .restart local v21    # "mmapRegionSize":J
    :catch_3
    move-exception v0

    move-wide/from16 v23, v2

    move-wide v1, v14

    move-wide/from16 v8, v21

    move-object/from16 v3, p1

    move-wide/from16 v17, v1

    .end local v2    # "filePosition":J
    .end local v14    # "mmapPtr":J
    .end local v21    # "mmapRegionSize":J
    .restart local v1    # "mmapPtr":J
    .restart local v8    # "mmapRegionSize":J
    .restart local v23    # "filePosition":J
    goto :goto_4

    .line 99
    .end local v1    # "mmapPtr":J
    .end local v8    # "mmapRegionSize":J
    .end local v23    # "filePosition":J
    .restart local v2    # "filePosition":J
    .restart local v17    # "mmapPtr":J
    .restart local v21    # "mmapRegionSize":J
    :catchall_3
    move-exception v0

    move-wide/from16 v23, v2

    move-wide/from16 v8, v21

    move-object/from16 v3, p1

    move-object v5, v0

    move-wide/from16 v1, v17

    .end local v2    # "filePosition":J
    .end local v21    # "mmapRegionSize":J
    .restart local v8    # "mmapRegionSize":J
    .restart local v23    # "filePosition":J
    goto :goto_5

    .line 96
    .end local v8    # "mmapRegionSize":J
    .end local v23    # "filePosition":J
    .restart local v2    # "filePosition":J
    .restart local v21    # "mmapRegionSize":J
    :catch_4
    move-exception v0

    move-wide/from16 v23, v2

    move-wide/from16 v8, v21

    move-object/from16 v3, p1

    .end local v2    # "filePosition":J
    .end local v21    # "mmapRegionSize":J
    .restart local v8    # "mmapRegionSize":J
    .restart local v23    # "filePosition":J
    goto :goto_4

    .line 99
    .end local v8    # "mmapRegionSize":J
    .end local v23    # "filePosition":J
    .restart local v2    # "filePosition":J
    .local v14, "mmapRegionSize":J
    :catchall_4
    move-exception v0

    move-wide/from16 v23, v2

    move-wide v8, v14

    move-object/from16 v3, p1

    move-object v5, v0

    move-wide/from16 v1, v17

    .end local v2    # "filePosition":J
    .end local v14    # "mmapRegionSize":J
    .restart local v8    # "mmapRegionSize":J
    .restart local v23    # "filePosition":J
    goto :goto_5

    .line 96
    .end local v8    # "mmapRegionSize":J
    .end local v23    # "filePosition":J
    .restart local v2    # "filePosition":J
    .restart local v14    # "mmapRegionSize":J
    :catch_5
    move-exception v0

    move-wide/from16 v23, v2

    move-wide v8, v14

    move-object/from16 v3, p1

    .line 97
    .end local v2    # "filePosition":J
    .end local v14    # "mmapRegionSize":J
    .local v0, "e":Landroid/system/ErrnoException;
    .restart local v8    # "mmapRegionSize":J
    .restart local v23    # "filePosition":J
    :goto_4
    :try_start_6
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to mmap "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " bytes"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "dataStartOffsetInMmapRegion":I
    .end local v6    # "mmapFilePosition":J
    .end local v8    # "mmapRegionSize":J
    .end local v17    # "mmapPtr":J
    .end local v23    # "filePosition":J
    .end local p0    # "this":Landroid/util/apk/MemoryMappedFileDataSource;
    .end local p1    # "md":Landroid/util/apk/DataDigester;
    .end local p2    # "offset":J
    .end local p4    # "size":I
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 99
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v4    # "dataStartOffsetInMmapRegion":I
    .restart local v6    # "mmapFilePosition":J
    .restart local v8    # "mmapRegionSize":J
    .restart local v17    # "mmapPtr":J
    .restart local v23    # "filePosition":J
    .restart local p0    # "this":Landroid/util/apk/MemoryMappedFileDataSource;
    .restart local p1    # "md":Landroid/util/apk/DataDigester;
    .restart local p2    # "offset":J
    .restart local p4    # "size":I
    :catchall_5
    move-exception v0

    move-object v5, v0

    move-wide/from16 v1, v17

    .end local v17    # "mmapPtr":J
    .restart local v1    # "mmapPtr":J
    :goto_5
    cmp-long v0, v1, v19

    if-eqz v0, :cond_1

    .line 101
    :try_start_7
    invoke-static {v1, v2, v8, v9}, Landroid/system/Os;->munmap(JJ)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_6

    .line 102
    :goto_6
    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_6

    .line 104
    :cond_1
    :goto_7
    throw v5
.end method

.method public blacklist size()J
    .locals 2

    .line 55
    iget-wide v0, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mSize:J

    return-wide v0
.end method
