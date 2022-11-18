.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static greylist sCursorWindowSize:I


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mStartPos:I

.field public greylist mWindowPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    const/4 v0, -0x1

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 714
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 171
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 64
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 173
    invoke-static {p1}, Landroid/database/CursorWindow;->nativeCreateFromParcel(Landroid/os/Parcel;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 174
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 177
    invoke-static {v1, v2}, Landroid/database/CursorWindow;->nativeGetName(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 178
    const-string v1, "CursorWindow.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 179
    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/database/CursorWindow-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 122
    invoke-static {}, Landroid/database/CursorWindow;->getCursorWindowSize()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    .line 123
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "windowSizeBytes"    # J

    .line 140
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 64
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 141
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_2

    .line 144
    const/4 v3, 0x0

    iput v3, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 145
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    const-string v3, "<unnamed>"

    :goto_0
    iput-object v3, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 146
    long-to-int v4, p2

    invoke-static {v3, v4}, Landroid/database/CursorWindow;->nativeCreate(Ljava/lang/String;I)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 147
    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    .line 150
    const-string v1, "CursorWindow.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 151
    return-void

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window size cannot be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Z)V
    .locals 2
    .param p1, "localWindow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private greylist-max-o dispose()V
    .locals 5

    .line 194
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 197
    :cond_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 198
    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeDispose(J)V

    .line 199
    iput-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 201
    :cond_1
    return-void
.end method

.method private static greylist-max-o getCursorWindowSize()I
    .locals 2

    .line 753
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    if-gez v0, :cond_0

    .line 756
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 759
    :cond_0
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    return v0
.end method

.method private static native greylist-max-o nativeAllocRow(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeClear(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native greylist-max-o nativeCreate(Ljava/lang/String;I)J
.end method

.method private static native greylist-max-o nativeCreateFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native greylist-max-o nativeFreeLastRow(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetBlob(JII)[B
.end method

.method private static native greylist-max-o nativeGetDouble(JII)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetLong(JII)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetName(J)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetNumRows(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetString(JII)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetType(JII)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativePutBlob(J[BII)Z
.end method

.method private static native greylist-max-o nativePutDouble(JDII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativePutLong(JJII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativePutNull(JII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativePutString(JLjava/lang/String;II)Z
.end method

.method private static native greylist-max-o nativeSetNumColumns(JI)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static whitelist newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;

    .line 726
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    return-object v0
.end method


# virtual methods
.method public whitelist allocRow()Z
    .locals 2

    .line 295
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 297
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeAllocRow(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 297
    return v0

    .line 299
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 300
    throw v0
.end method

.method public whitelist clear()V
    .locals 2

    .line 220
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 222
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 223
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeClear(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 226
    nop

    .line 227
    return-void

    .line 225
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 226
    throw v0
.end method

.method public whitelist copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "buffer"    # Landroid/database/CharArrayBuffer;

    .line 503
    if-eqz p3, :cond_0

    .line 506
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 508
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2, p3}, Landroid/database/CursorWindow;->nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 511
    nop

    .line 512
    return-void

    .line 510
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 511
    throw v0

    .line 504
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharArrayBuffer should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 187
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 190
    nop

    .line 191
    return-void

    .line 189
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 190
    throw v0
.end method

.method public whitelist freeLastRow()V
    .locals 2

    .line 307
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 309
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeFreeLastRow(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 312
    nop

    .line 313
    return-void

    .line 311
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 312
    throw v0
.end method

.method public whitelist getBlob(II)[B
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 428
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 430
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetBlob(JII)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 430
    return-object v0

    .line 432
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 433
    throw v0
.end method

.method public whitelist getDouble(II)D
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 569
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 571
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetDouble(JII)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 571
    return-wide v0

    .line 573
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 574
    throw v0
.end method

.method public whitelist getFloat(II)F
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 622
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getInt(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 606
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getLong(II)J
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 537
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 539
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetLong(JII)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 539
    return-wide v0

    .line 541
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 542
    throw v0
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNumRows()I
    .locals 2

    .line 261
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 263
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeGetNumRows(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 263
    return v0

    .line 265
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 266
    throw v0
.end method

.method public whitelist getShort(II)S
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 590
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public whitelist getStartPosition()I
    .locals 1

    .line 239
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public whitelist getString(II)Ljava/lang/String;
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 463
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 465
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetString(JII)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 465
    return-object v0

    .line 467
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 468
    throw v0
.end method

.method public whitelist getType(II)I
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 398
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 400
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetType(JII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 400
    return v0

    .line 402
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 403
    throw v0
.end method

.method public whitelist isBlob(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 342
    .local v0, "type":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public whitelist isFloat(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isLong(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isNull(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isString(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 386
    .local v0, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method protected whitelist onAllReferencesReleased()V
    .locals 0

    .line 749
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V

    .line 750
    return-void
.end method

.method public whitelist putBlob([BII)Z
    .locals 3
    .param p1, "value"    # [B
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 635
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 637
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p2, v2

    invoke-static {v0, v1, p1, v2, p3}, Landroid/database/CursorWindow;->nativePutBlob(J[BII)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 637
    return v0

    .line 639
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 640
    throw v0
.end method

.method public whitelist putDouble(DII)Z
    .locals 6
    .param p1, "value"    # D
    .param p3, "row"    # I
    .param p4, "column"    # I

    .line 690
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 692
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v4, p3, v2

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow;->nativePutDouble(JDII)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 692
    return v0

    .line 694
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 695
    throw v0
.end method

.method public whitelist putLong(JII)Z
    .locals 6
    .param p1, "value"    # J
    .param p3, "row"    # I
    .param p4, "column"    # I

    .line 671
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 673
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v4, p3, v2

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow;->nativePutLong(JJII)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 673
    return v0

    .line 675
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 676
    throw v0
.end method

.method public whitelist putNull(II)Z
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 706
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 708
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativePutNull(JII)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 708
    return v0

    .line 710
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 711
    throw v0
.end method

.method public whitelist putString(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 653
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 655
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p2, v2

    invoke-static {v0, v1, p1, v2, p3}, Landroid/database/CursorWindow;->nativePutString(JLjava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 655
    return v0

    .line 657
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 658
    throw v0
.end method

.method public whitelist setNumColumns(I)Z
    .locals 2
    .param p1, "columnNum"    # I

    .line 281
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 283
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/CursorWindow;->nativeSetNumColumns(JI)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 283
    return v0

    .line 285
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 286
    throw v0
.end method

.method public whitelist setStartPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 252
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 253
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 734
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 736
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/CursorWindow;->nativeWriteToParcel(JLandroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 740
    nop

    .line 742
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 745
    :cond_0
    return-void

    .line 739
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 740
    throw v0
.end method
