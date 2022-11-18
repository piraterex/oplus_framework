.class public abstract Landroid/database/AbstractCursor;
.super Ljava/lang/Object;
.source "AbstractCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/AbstractCursor$SelfContentObserver;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field protected whitelist mClosed:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final greylist-max-o mContentObservable:Landroid/database/ContentObservable;

.field protected whitelist mContentResolver:Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected greylist mCurrentRowID:Ljava/lang/Long;

.field private final greylist-max-o mDataSetObservable:Landroid/database/DataSetObservable;

.field private greylist-max-p mExtras:Landroid/os/Bundle;

.field private greylist mNotifyUri:Landroid/net/Uri;

.field private blacklist mNotifyUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected whitelist mPos:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected greylist mRowIdColumnIndex:I

.field private greylist-max-o mSelfObserver:Landroid/database/ContentObserver;

.field private final greylist-max-o mSelfObserverLock:Ljava/lang/Object;

.field private greylist-max-o mSelfObserverRegistered:Z

.field protected greylist mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 86
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 88
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    .line 92
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/AbstractCursor;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 226
    const/4 v1, -0x1

    iput v1, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 227
    const-string v1, "AbstractCursor.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 228
    return-void
.end method


# virtual methods
.method protected whitelist checkPosition()V
    .locals 3

    .line 520
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    .line 523
    return-void

    .line 521
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method public whitelist test-api close()V
    .locals 1

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    .line 185
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 186
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    .line 187
    iget-object v0, p0, Landroid/database/AbstractCursor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 188
    return-void
.end method

.method public whitelist copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .line 209
    invoke-virtual {p0, p1}, Landroid/database/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 211
    iget-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 212
    .local v2, "data":[C
    if-eqz v2, :cond_1

    array-length v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    .line 213
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 217
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 218
    .end local v2    # "data":[C
    goto :goto_2

    .line 219
    :cond_2
    iput v1, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 221
    :goto_2
    return-void
.end method

.method public whitelist deactivate()V
    .locals 0

    .line 151
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    .line 152
    return-void
.end method

.method public whitelist fillWindow(ILandroid/database/CursorWindow;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .line 267
    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    .line 268
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 3

    .line 527
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 528
    iget-object v1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 531
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 532
    :cond_1
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    :cond_2
    :goto_0
    nop

    .line 534
    return-void
.end method

.method public whitelist getBlob(I)[B
    .locals 2
    .param p1, "column"    # I

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColumnCount()I
    .locals 1

    .line 146
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public whitelist getColumnIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;

    .line 325
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 326
    .local v0, "periodIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 327
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 328
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requesting column name with table name -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cursor"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 332
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "columnNames":[Ljava/lang/String;
    array-length v3, v2

    .line 334
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 335
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 336
    return v4

    .line 334
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 345
    .end local v4    # "i":I
    :cond_2
    return v1
.end method

.method public whitelist getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;

    .line 350
    invoke-virtual {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 361
    return v0

    .line 352
    :cond_0
    const-string v1, ""

    .line 354
    .local v1, "availableColumns":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 357
    goto :goto_0

    .line 355
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Cursor"

    const-string v4, "Cannot collect column names for debug purposes"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "column \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist. Available columns: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .line 366
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract whitelist getColumnNames()[Ljava/lang/String;
.end method

.method public abstract whitelist getCount()I
.end method

.method public abstract whitelist getDouble(I)D
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 487
    iget-object v0, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract whitelist getFloat(I)F
.end method

.method public abstract whitelist getInt(I)I
.end method

.method public abstract whitelist getLong(I)J
.end method

.method public whitelist getNotificationUri()Landroid/net/Uri;
    .locals 2

    .line 463
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    monitor-exit v0

    return-object v1

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getNotificationUris()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_0
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist getPosition()I
    .locals 1

    .line 232
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract whitelist getShort(I)S
.end method

.method public abstract whitelist getString(I)Ljava/lang/String;
.end method

.method public whitelist getType(I)I
    .locals 1
    .param p1, "column"    # I

    .line 122
    const/4 v0, 0x3

    return v0
.end method

.method protected whitelist getUpdatedField(I)Ljava/lang/Object;
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWantsAllOnMoveCalls()Z
    .locals 1

    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getWindow()Landroid/database/CursorWindow;
    .locals 1

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist isAfterLast()Z
    .locals 3

    .line 316
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 317
    return v1

    .line 319
    :cond_0
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final whitelist isBeforeFirst()Z
    .locals 3

    .line 308
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 309
    return v1

    .line 311
    :cond_0
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isClosed()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    return v0
.end method

.method protected whitelist isFieldUpdated(I)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist isFirst()Z
    .locals 1

    .line 297
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isLast()Z
    .locals 3

    .line 302
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 303
    .local v0, "cnt":I
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract whitelist isNull(I)Z
.end method

.method public final whitelist move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 272
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist moveToFirst()Z
    .locals 1

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist moveToLast()Z
    .locals 1

    .line 282
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist moveToNext()Z
    .locals 1

    .line 287
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist moveToPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .line 238
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 239
    .local v0, "count":I
    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 240
    iput v0, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 241
    return v1

    .line 245
    :cond_0
    const/4 v2, -0x1

    if-gez p1, :cond_1

    .line 246
    iput v2, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 247
    return v1

    .line 251
    :cond_1
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-ne p1, v1, :cond_2

    .line 252
    const/4 v1, 0x1

    return v1

    .line 255
    :cond_2
    invoke-virtual {p0, v1, p1}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result v1

    .line 256
    .local v1, "result":Z
    if-nez v1, :cond_3

    .line 257
    iput v2, p0, Landroid/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 259
    :cond_3
    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 262
    :goto_0
    return v1
.end method

.method public final whitelist moveToPrevious()Z
    .locals 1

    .line 292
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected whitelist onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .line 399
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_0
    iget-object v1, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    .line 401
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 402
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 403
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 404
    iget-object v3, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 405
    .local v3, "notifyUri":Landroid/net/Uri;
    iget-object v4, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 403
    .end local v3    # "notifyUri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected greylist-max-o onDeactivateOrClose()V
    .locals 2

    .line 156
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 161
    return-void
.end method

.method public whitelist onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 371
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 372
    return-void
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 384
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 385
    return-void
.end method

.method public whitelist requery()Z
    .locals 6

    .line 165
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 167
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 168
    iget-object v3, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 169
    .local v3, "notifyUri":Landroid/net/Uri;
    iget-object v4, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    .end local v3    # "notifyUri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "i":I
    :cond_0
    iput-boolean v1, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 173
    .end local v0    # "size":I
    :cond_1
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 174
    return v1
.end method

.method public whitelist respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 492
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 482
    if-nez p1, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    .line 483
    return-void
.end method

.method public whitelist setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "notifyUri"    # Landroid/net/Uri;

    .line 420
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/database/AbstractCursor;->setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V

    .line 421
    return-void
.end method

.method public whitelist setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 425
    .local p2, "notifyUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/database/AbstractCursor;->setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;IZ)V

    .line 429
    return-void
.end method

.method public blacklist setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;IZ)V
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p3, "userHandle"    # I
    .param p4, "registerSelfObserver"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;IZ)V"
        }
    .end annotation

    .line 440
    .local p2, "notifyUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    iput-object p2, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    .line 442
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 443
    iput-object p1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 444
    iget-object v2, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    .line 445
    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 446
    iput-boolean v1, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 448
    :cond_0
    if-eqz p4, :cond_2

    .line 449
    new-instance v1, Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v1, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    iput-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 450
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 451
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    .line 452
    iget-object v4, p0, Landroid/database/AbstractCursor;->mNotifyUris:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 453
    .local v4, "notifyUri":Landroid/net/Uri;
    iget-object v5, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v4, v3, v6, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 451
    .end local v4    # "notifyUri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    .end local v2    # "i":I
    :cond_1
    iput-boolean v3, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 458
    .end local v1    # "size":I
    :cond_2
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 377
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 380
    :cond_0
    return-void
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 389
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 390
    return-void
.end method
