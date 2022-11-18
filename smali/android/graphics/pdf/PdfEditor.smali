.class public final Landroid/graphics/pdf/PdfEditor;
.super Ljava/lang/Object;
.source "PdfEditor.java"


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mInput:Landroid/os/ParcelFileDescriptor;

.field private greylist-max-o mNativeDocument:J

.field private greylist-max-o mPageCount:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .param p1, "input"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 69
    if-eqz p1, :cond_0

    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 76
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v1, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v1, "size":J
    nop

    .line 80
    iput-object p1, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 82
    sget-object v5, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v5

    .line 83
    :try_start_1
    iget-object v6, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v6

    invoke-static {v6, v1, v2}, Landroid/graphics/pdf/PdfEditor;->nativeOpen(IJ)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    :try_start_2
    invoke-static {v6, v7}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCount(J)I

    move-result v6

    iput v6, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    nop

    .line 91
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    const-string v3, "close"

    invoke-virtual {v0, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 94
    return-void

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-wide v6, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v6, v7}, Landroid/graphics/pdf/PdfEditor;->nativeClose(J)V

    .line 88
    iput-wide v3, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    .line 89
    nop

    .end local v1    # "size":J
    .end local p0    # "this":Landroid/graphics/pdf/PdfEditor;
    .end local p1    # "input":Landroid/os/ParcelFileDescriptor;
    throw v0

    .line 91
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v1    # "size":J
    .restart local p0    # "this":Landroid/graphics/pdf/PdfEditor;
    .restart local p1    # "input":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 77
    .end local v1    # "size":J
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ee":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file descriptor not seekable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "ee":Landroid/system/ErrnoException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o doClose()V
    .locals 6

    .line 289
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-wide v4, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfEditor;->nativeClose(J)V

    .line 292
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iput-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 296
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 297
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 300
    :cond_1
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 301
    return-void
.end method

.method private static native greylist-max-o nativeClose(J)V
.end method

.method private static native greylist-max-o nativeGetPageCount(J)I
.end method

.method private static native greylist-max-o nativeGetPageCropBox(JILandroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nativeGetPageSize(JILandroid/graphics/Point;)V
.end method

.method private static native greylist-max-o nativeOpen(IJ)J
.end method

.method private static native greylist-max-o nativeRemovePage(JI)I
.end method

.method private static native greylist-max-o nativeScaleForPrinting(J)Z
.end method

.method private static native greylist-max-o nativeSetPageCropBox(JILandroid/graphics/Rect;)V
.end method

.method private static native greylist-max-o nativeSetPageMediaBox(JILandroid/graphics/Rect;)V
.end method

.method private static native greylist-max-o nativeSetTransformAndClip(JIJIIII)V
.end method

.method private static native greylist-max-o nativeWrite(JI)V
.end method

.method private greylist-max-o throwIfClosed()V
    .locals 2

    .line 304
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 307
    return-void

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfCropBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "cropBox"    # Landroid/graphics/Rect;

    .line 346
    if-eqz p1, :cond_0

    .line 349
    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cropBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfMediaBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "mediaBox"    # Landroid/graphics/Rect;

    .line 334
    if-eqz p1, :cond_0

    .line 337
    return-void

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mediaBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 316
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isAffine()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix must be afine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o throwIfOutCropBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outCropBox"    # Landroid/graphics/Rect;

    .line 340
    if-eqz p1, :cond_0

    .line 343
    return-void

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outCropBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outMediaBox"    # Landroid/graphics/Rect;

    .line 328
    if-eqz p1, :cond_0

    .line 331
    return-void

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outMediaBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfOutSizeNull(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "outSize"    # Landroid/graphics/Point;

    .line 322
    if-eqz p1, :cond_0

    .line 325
    return-void

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outSize cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfPageNotInDocument(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    .line 310
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    if-ge p1, v0, :cond_0

    .line 313
    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid page index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o close()V
    .locals 0

    .line 271
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 272
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V

    .line 273
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 278
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 282
    :cond_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 285
    nop

    .line 286
    return-void

    .line 284
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 285
    throw v0
.end method

.method public greylist-max-o getPageCount()I
    .locals 1

    .line 102
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 103
    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    return v0
.end method

.method public greylist-max-o getPageCropBox(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "outCropBox"    # Landroid/graphics/Rect;

    .line 208
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 209
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutCropBoxNull(Landroid/graphics/Rect;)V

    .line 210
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 212
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCropBox(JILandroid/graphics/Rect;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getPageMediaBox(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "outMediaBox"    # Landroid/graphics/Rect;

    .line 176
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 177
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V

    .line 178
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 180
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getPageSize(ILandroid/graphics/Point;)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "outSize"    # Landroid/graphics/Point;

    .line 160
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 161
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutSizeNull(Landroid/graphics/Point;)V

    .line 162
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 164
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageSize(JILandroid/graphics/Point;)V

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o removePage(I)V
    .locals 3
    .param p1, "pageIndex"    # I

    .line 112
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 113
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 115
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1}, Landroid/graphics/pdf/PdfEditor;->nativeRemovePage(JI)I

    move-result v1

    iput v1, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setPageCropBox(ILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "cropBox"    # Landroid/graphics/Rect;

    .line 224
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 225
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfCropBoxNull(Landroid/graphics/Rect;)V

    .line 226
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 228
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageCropBox(JILandroid/graphics/Rect;)V

    .line 230
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setPageMediaBox(ILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "mediaBox"    # Landroid/graphics/Rect;

    .line 192
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 193
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfMediaBoxNull(Landroid/graphics/Rect;)V

    .line 194
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 196
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageMediaBox(JILandroid/graphics/Rect;)V

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setTransformAndClip(ILandroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "pageIndex"    # I
    .param p2, "transform"    # Landroid/graphics/Matrix;
    .param p3, "clip"    # Landroid/graphics/Rect;

    .line 131
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 132
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 133
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V

    .line 134
    if-nez p2, :cond_0

    .line 135
    sget-object p2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 137
    :cond_0
    if-nez p3, :cond_1

    .line 138
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 139
    .local v0, "size":Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/graphics/pdf/PdfEditor;->getPageSize(ILandroid/graphics/Point;)V

    .line 141
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v0, Landroid/graphics/Point;->x:I

    iget v10, v0, Landroid/graphics/Point;->y:I

    move v4, p1

    invoke-static/range {v2 .. v10}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V

    .line 144
    monitor-exit v1

    .line 145
    .end local v0    # "size":Landroid/graphics/Point;
    goto :goto_0

    .line 144
    .restart local v0    # "size":Landroid/graphics/Point;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 146
    .end local v0    # "size":Landroid/graphics/Point;
    :cond_1
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_1
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    move v3, p1

    invoke-static/range {v1 .. v9}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V

    .line 149
    monitor-exit v0

    .line 151
    :goto_0
    return-void

    .line 149
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public greylist-max-o shouldScaleForPrinting()Z
    .locals 3

    .line 239
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 241
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2}, Landroid/graphics/pdf/PdfEditor;->nativeScaleForPrinting(J)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o write(Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 258
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 259
    :try_start_1
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/pdf/PdfEditor;->nativeWrite(JI)V

    .line 260
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 263
    nop

    .line 264
    return-void

    .line 260
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Landroid/graphics/pdf/PdfEditor;
    .end local p1    # "output":Landroid/os/ParcelFileDescriptor;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 262
    .restart local p0    # "this":Landroid/graphics/pdf/PdfEditor;
    .restart local p1    # "output":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 263
    throw v0
.end method
