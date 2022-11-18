.class public Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;
.super Lcom/android/internal/os/KernelCpuUidTimeReader;
.source "KernelCpuUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelCpuUidUserSysTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelCpuUidTimeReader<",
        "[J>;"
    }
.end annotation


# static fields
.field private static final blacklist REMOVE_UID_PROC_FILE:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private final blacklist mBuffer:[J

.field private final blacklist mUsrSysTime:[J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/KernelCpuProcStringReader;ZLcom/android/internal/os/Clock;)V
    .locals 1
    .param p1, "reader"    # Lcom/android/internal/os/KernelCpuProcStringReader;
    .param p2, "throttle"    # Z
    .param p3, "clock"    # Lcom/android/internal/os/Clock;

    .line 231
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;ZLcom/android/internal/os/Clock;)V

    .line 216
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    .line 218
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    .line 232
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 1
    .param p1, "throttle"    # Z

    .line 221
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(ZLcom/android/internal/os/Clock;)V

    .line 222
    return-void
.end method

.method public constructor blacklist <init>(ZLcom/android/internal/os/Clock;)V
    .locals 1
    .param p1, "throttle"    # Z
    .param p2, "clock"    # Lcom/android/internal/os/Clock;

    .line 225
    invoke-static {}, Lcom/android/internal/os/KernelCpuProcStringReader;->getUserSysTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;ZLcom/android/internal/os/Clock;)V

    .line 216
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    .line 218
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    .line 226
    return-void
.end method

.method private blacklist removeUidsFromKernelModule(II)V
    .locals 5
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .line 313
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing uids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    .line 315
    .local v0, "oldMask":I
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v3, "/proc/uid_cputime/remove_uid_range"

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 316
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 322
    .end local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_1

    .line 315
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "oldMask":I
    .end local p0    # "this":Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;
    .end local p1    # "startUid":I
    .end local p2    # "endUid":I
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 322
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "oldMask":I
    .restart local p0    # "this":Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;
    .restart local p1    # "startUid":I
    .restart local p2    # "endUid":I
    :catchall_2
    move-exception v1

    goto :goto_2

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to remove uids "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from uid_cputime module"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 322
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 323
    nop

    .line 324
    return-void

    .line 322
    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 323
    throw v1
.end method


# virtual methods
.method blacklist readAbsoluteImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 274
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mThrottle:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    .line 275
    .local v0, "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    if-nez v0, :cond_1

    .line 288
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 276
    :cond_0
    return-void

    .line 279
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    move-object v3, v1

    .local v3, "buf":Ljava/nio/CharBuffer;
    if-eqz v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    invoke-static {v3, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_2

    .line 281
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    goto :goto_0

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v5, v4, v2

    const/4 v7, 0x0

    aput-wide v5, v1, v7

    .line 285
    const/4 v5, 0x2

    aget-wide v5, v4, v5

    aput-wide v5, v1, v2

    .line 286
    aget-wide v4, v4, v7

    long-to-int v4, v4

    invoke-interface {p1, v4, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 288
    .end local v3    # "buf":Ljava/nio/CharBuffer;
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 289
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :cond_4
    return-void

    .line 274
    .restart local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v1
.end method

.method blacklist readDeltaImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;Z)V
    .locals 21
    .param p2, "forceRead"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;Z)V"
        }
    .end annotation

    .line 236
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, " s="

    iget-object v3, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v4, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mThrottle:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v3

    .line 237
    .local v3, "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    if-nez v3, :cond_3

    .line 269
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 238
    :cond_2
    return-void

    .line 241
    :cond_3
    :goto_2
    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v4

    move-object v7, v4

    .local v7, "buf":Ljava/nio/CharBuffer;
    if-eqz v4, :cond_b

    .line 242
    iget-object v4, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    invoke-static {v7, v4}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v4

    const/4 v8, 0x3

    if-ge v4, v8, :cond_4

    .line 243
    iget-object v4, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid line: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    goto :goto_2

    .line 246
    :cond_4
    iget-object v4, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v8, v4, v5

    long-to-int v4, v8

    .line 247
    .local v4, "uid":I
    iget-object v8, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    .line 248
    .local v8, "lastTimes":[J
    const/4 v9, 0x2

    if-nez v8, :cond_5

    .line 249
    new-array v10, v9, [J

    move-object v8, v10

    .line 250
    iget-object v10, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v10, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    :cond_5
    iget-object v10, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v11, v10, v6

    .line 253
    .local v11, "currUsrTimeUs":J
    aget-wide v9, v10, v9

    .line 254
    .local v9, "currSysTimeUs":J
    iget-object v13, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v14, v8, v5

    sub-long v14, v11, v14

    aput-wide v14, v13, v5

    .line 255
    aget-wide v16, v8, v6

    sub-long v16, v9, v16

    aput-wide v16, v13, v6

    .line 257
    const-wide/16 v18, 0x0

    cmp-long v20, v14, v18

    if-ltz v20, :cond_a

    cmp-long v20, v16, v18

    if-gez v20, :cond_6

    goto :goto_4

    .line 261
    :cond_6
    cmp-long v14, v14, v18

    if-gtz v14, :cond_8

    cmp-long v14, v16, v18

    if-lez v14, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v16, v7

    goto :goto_5

    .line 262
    :cond_8
    :goto_3
    if-eqz v2, :cond_9

    .line 263
    invoke-interface {v2, v4, v13}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V

    move-object/from16 v16, v7

    goto :goto_5

    .line 262
    :cond_9
    move-object/from16 v16, v7

    goto :goto_5

    .line 258
    :cond_a
    :goto_4
    iget-object v13, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Negative user/sys time delta for UID="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\nPrev times: u="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v16, v7

    .end local v7    # "buf":Ljava/nio/CharBuffer;
    .local v16, "buf":Ljava/nio/CharBuffer;
    aget-wide v6, v8, v5

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-wide v14, v8, v7

    move-wide v1, v14

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Curr times: u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_5
    aput-wide v11, v8, v5

    .line 267
    const/4 v1, 0x1

    aput-wide v9, v8, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .end local v4    # "uid":I
    .end local v8    # "lastTimes":[J
    .end local v9    # "currSysTimeUs":J
    .end local v11    # "currUsrTimeUs":J
    move-object/from16 v2, p1

    move v6, v1

    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 241
    .end local v16    # "buf":Ljava/nio/CharBuffer;
    .restart local v7    # "buf":Ljava/nio/CharBuffer;
    :cond_b
    move-object/from16 v16, v7

    .line 269
    .end local v7    # "buf":Ljava/nio/CharBuffer;
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 270
    .end local v3    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :cond_c
    return-void

    .line 236
    .restart local v3    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_d

    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_6
    throw v1
.end method

.method public blacklist removeUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 293
    invoke-super {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader;->removeUid(I)V

    .line 294
    invoke-direct {p0, p1, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->removeUidsFromKernelModule(II)V

    .line 295
    return-void
.end method

.method public blacklist removeUidsInRange(II)V
    .locals 0
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .line 299
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader;->removeUidsInRange(II)V

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->removeUidsFromKernelModule(II)V

    .line 301
    return-void
.end method
