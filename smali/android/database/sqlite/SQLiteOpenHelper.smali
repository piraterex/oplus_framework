.class public abstract Landroid/database/sqlite/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelper.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private greylist-max-o mIsInitializing:Z

.field private final greylist-max-o mMinimumSupportedVersion:I

.field private final greylist mName:Ljava/lang/String;

.field private final greylist-max-o mNewVersion:I

.field private greylist-max-o mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 55
    const-class v0, Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/String;IILandroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "minimumSupportedVersion"    # I
    .param p5, "openParamsBuilder"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    .line 166
    iput-object p1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 168
    iput p3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    .line 169
    const/4 v0, 0x0

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mMinimumSupportedVersion:I

    .line 170
    invoke-direct {p0, p5}, Landroid/database/sqlite/SQLiteOpenHelper;->setOpenParamsBuilder(Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V

    .line 171
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$OpenParams;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 125
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IILandroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V

    .line 126
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .line 82
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 83
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IILandroid/database/DatabaseErrorHandler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "minimumSupportedVersion"    # I
    .param p6, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 154
    new-instance v5, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IILandroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V

    .line 156
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p3}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 157
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p6}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setErrorHandler(Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 158
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 105
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IILandroid/database/DatabaseErrorHandler;)V

    .line 106
    return-void
.end method

.method private greylist-max-o getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 9
    .param p1, "writable"    # Z

    .line 345
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 349
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 355
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_10

    .line 359
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 361
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 363
    if-eqz v0, :cond_3

    .line 364
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 365
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->reopenReadWrite()V

    goto :goto_1

    .line 367
    :cond_3
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 368
    iget-object v1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v1

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->createInMemory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 370
    :cond_4
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 371
    .local v3, "filePath":Ljava/io/File;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 373
    .local v4, "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    :try_start_1
    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object v0, v5

    .line 375
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->setFilePermissionsForDb(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 384
    goto :goto_1

    .line 376
    :catch_0
    move-exception v5

    .line 377
    .local v5, "ex":Landroid/database/SQLException;
    if-nez p1, :cond_e

    .line 380
    :try_start_2
    sget-object v6, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for writing (will try read-only):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v1

    .line 383
    .end local v4    # "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .local v1, "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    invoke-static {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v0, v4

    .line 387
    .end local v1    # "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .end local v3    # "filePath":Ljava/io/File;
    .end local v5    # "ex":Landroid/database/SQLException;
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 389
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 390
    .local v1, "version":I
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq v1, v3, :cond_c

    .line 391
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_b

    .line 396
    if-lez v1, :cond_8

    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mMinimumSupportedVersion:I

    if-ge v1, v3, :cond_8

    .line 397
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v3, "databaseFile":Ljava/io/File;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onBeforeDelete(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 399
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 400
    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 401
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 402
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 436
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 437
    if-eqz v0, :cond_6

    iget-object v2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v2, :cond_6

    .line 438
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 402
    :cond_6
    return-object v4

    .line 404
    :cond_7
    :try_start_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete obsolete database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "writable":Z
    throw v4

    .line 408
    .end local v3    # "databaseFile":Ljava/io/File;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "writable":Z
    :cond_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 410
    if-nez v1, :cond_9

    .line 411
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 413
    :cond_9
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-le v1, v3, :cond_a

    .line 414
    invoke-virtual {p0, v0, v1, v3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_2

    .line 416
    :cond_a
    invoke-virtual {p0, v0, v1, v3}, Landroid/database/sqlite/SQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 419
    :goto_2
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 420
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 422
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 423
    goto :goto_3

    .line 422
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 423
    nop

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "writable":Z
    throw v3

    .line 392
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "writable":Z
    :cond_b
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t upgrade read-only database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 393
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "writable":Z
    throw v3

    .line 427
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "writable":Z
    :cond_c
    :goto_3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 429
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 430
    sget-object v3, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in read-only mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_d
    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 434
    nop

    .line 436
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 437
    nop

    .line 434
    return-object v0

    .line 378
    .end local v1    # "version":I
    .local v3, "filePath":Ljava/io/File;
    .restart local v4    # "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .restart local v5    # "ex":Landroid/database/SQLException;
    :cond_e
    nop

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "writable":Z
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 436
    .end local v3    # "filePath":Ljava/io/File;
    .end local v4    # "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .end local v5    # "ex":Landroid/database/SQLException;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "writable":Z
    :catchall_1
    move-exception v1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 437
    if-eqz v0, :cond_f

    iget-object v2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v2, :cond_f

    .line 438
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 440
    :cond_f
    throw v1

    .line 356
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDatabase called recursively"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o setFilePermissionsForDb(Ljava/lang/String;)V
    .locals 2
    .param p0, "dbPath"    # Ljava/lang/String;

    .line 444
    const/16 v0, 0x1b0

    .line 445
    .local v0, "perms":I
    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 446
    return-void
.end method

.method private greylist-max-o setOpenParamsBuilder(Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V
    .locals 1
    .param p1, "openParamsBuilder"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 258
    iput-object p1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 259
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 260
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .locals 2

    monitor-enter p0

    .line 452
    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    :cond_0
    monitor-exit p0

    return-void

    .line 452
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 339
    monitor-enter p0

    .line 340
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 315
    monitor-enter p0

    .line 316
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o onBeforeDelete(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 491
    return-void
.end method

.method public whitelist onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 477
    return-void
.end method

.method public abstract whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public whitelist onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 540
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t downgrade database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 557
    return-void
.end method

.method public abstract whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public whitelist setIdleConnectionTimeout(J)V
    .locals 2
    .param p1, "idleConnectionTimeoutMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection timeout setting cannot be changed after opening the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "idleConnectionTimeoutMs":J
    throw v0

    .line 291
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "idleConnectionTimeoutMs":J
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setIdleConnectionTimeout(J)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 292
    monitor-exit p0

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist setLookasideConfig(II)V
    .locals 2
    .param p1, "slotSize"    # I
    .param p2, "slotCount"    # I

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lookaside memory config cannot be changed after opening the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "slotSize":I
    .end local p2    # "slotCount":I
    throw v0

    .line 234
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "slotSize":I
    .restart local p2    # "slotCount":I
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setLookasideConfig(II)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 235
    monitor-exit p0

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist setOpenParams(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V
    .locals 2
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 247
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OpenParams cannot be set after opening the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local p1    # "openParams":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    throw v0

    .line 253
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local p1    # "openParams":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    :cond_1
    :goto_0
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->setOpenParamsBuilder(Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;)V

    .line 254
    monitor-exit p0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist setWriteAheadLoggingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->isWriteAheadLoggingEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 195
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 202
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->setWriteAheadLoggingEnabled(Z)V

    .line 206
    :cond_2
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mOpenParamsBuilder:Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 207
    monitor-exit p0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
