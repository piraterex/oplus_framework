.class public final Landroid/database/sqlite/SQLiteSession;
.super Ljava/lang/Object;
.source "SQLiteSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteSession$Transaction;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final greylist-max-o TRANSACTION_MODE_DEFERRED:I = 0x0

.field public static final greylist-max-o TRANSACTION_MODE_EXCLUSIVE:I = 0x2

.field public static final greylist-max-o TRANSACTION_MODE_IMMEDIATE:I = 0x1


# instance fields
.field private greylist-max-o mConnection:Landroid/database/sqlite/SQLiteConnection;

.field private greylist-max-o mConnectionFlags:I

.field private final greylist-max-o mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private greylist-max-o mConnectionUseCount:I

.field private greylist-max-o mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

.field private greylist-max-o mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    .line 164
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteConnectionPool;)V
    .locals 2
    .param p1, "connectionPool"    # Landroid/database/sqlite/SQLiteConnectionPool;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    if-eqz p1, :cond_0

    .line 233
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 234
    return-void

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionPool must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 894
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_0

    .line 895
    nop

    .line 896
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 898
    iput p2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    .line 900
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    .line 901
    return-void
.end method

.method private greylist-max-o beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .locals 4
    .param p1, "transactionMode"    # I
    .param p2, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 307
    if-eqz p4, :cond_0

    .line 308
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 311
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 312
    invoke-direct {p0, v1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 317
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v0, :cond_2

    .line 319
    packed-switch p1, :pswitch_data_0

    .line 329
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    goto :goto_0

    .line 325
    :pswitch_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v2, "BEGIN EXCLUSIVE;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 327
    goto :goto_1

    .line 321
    :pswitch_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v2, "BEGIN IMMEDIATE;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 323
    goto :goto_1

    .line 329
    :goto_0
    const-string v2, "BEGIN;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    .line 337
    :try_start_1
    invoke-interface {p2}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    goto :goto_2

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_3

    .line 340
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v3, "ROLLBACK;"

    invoke-virtual {v2, v3, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 342
    :cond_3
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteSession;
    .end local p1    # "transactionMode":I
    .end local p2    # "transactionListener":Landroid/database/sqlite/SQLiteTransactionListener;
    .end local p3    # "connectionFlags":I
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0

    .line 347
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteSession;
    .restart local p1    # "transactionMode":I
    .restart local p2    # "transactionListener":Landroid/database/sqlite/SQLiteTransactionListener;
    .restart local p3    # "connectionFlags":I
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_4
    :goto_2
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteSession;->obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;

    move-result-object v0

    .line 348
    .local v0, "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 349
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    .end local v0    # "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    if-nez v0, :cond_5

    .line 352
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 355
    :cond_5
    return-void

    .line 351
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v1, :cond_6

    .line 352
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 354
    :cond_6
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V
    .locals 7
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "yielding"    # Z

    .line 407
    if-eqz p1, :cond_0

    .line 408
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 411
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 412
    .local v0, "top":Landroid/database/sqlite/SQLiteSession$Transaction;
    iget-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    iget-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 414
    .local v1, "successful":Z
    :goto_0
    const/4 v3, 0x0

    .line 415
    .local v3, "listenerException":Ljava/lang/RuntimeException;
    iget-object v4, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 416
    .local v4, "listener":Landroid/database/sqlite/SQLiteTransactionListener;
    if-eqz v4, :cond_4

    .line 418
    if-eqz v1, :cond_3

    .line 419
    :try_start_0
    invoke-interface {v4}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V

    goto :goto_1

    .line 421
    :cond_3
    invoke-interface {v4}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_1
    goto :goto_2

    .line 423
    :catch_0
    move-exception v5

    .line 424
    .local v5, "ex":Ljava/lang/RuntimeException;
    move-object v3, v5

    .line 425
    const/4 v1, 0x0

    .line 429
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :cond_4
    :goto_2
    iget-object v5, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 430
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteSession;->recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V

    .line 432
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v5, :cond_5

    .line 433
    if-nez v1, :cond_7

    .line 434
    iput-boolean v2, v5, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    goto :goto_4

    .line 438
    :cond_5
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 439
    :try_start_1
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v6, "COMMIT;"

    invoke-virtual {v5, v6, v2, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    goto :goto_3

    .line 441
    :cond_6
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v6, "ROLLBACK;"

    invoke-virtual {v5, v6, v2, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    :goto_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 445
    nop

    .line 448
    :cond_7
    :goto_4
    if-nez v3, :cond_8

    .line 451
    return-void

    .line 449
    :cond_8
    throw v3

    .line 444
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 445
    throw v2
.end method

.method private greylist-max-o executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 869
    if-eqz p4, :cond_0

    .line 870
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 873
    :cond_0
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    .line 874
    .local v0, "type":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 889
    const/4 v1, 0x0

    return v1

    .line 886
    :pswitch_0
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    .line 887
    return v1

    .line 881
    :pswitch_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V

    .line 882
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    .line 883
    return v1

    .line 876
    :pswitch_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    .line 878
    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;
    .locals 3
    .param p1, "mode"    # I
    .param p2, "listener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .line 938
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 939
    .local v0, "transaction":Landroid/database/sqlite/SQLiteSession$Transaction;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 940
    iget-object v2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 941
    iput-object v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 942
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    .line 943
    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    goto :goto_0

    .line 945
    :cond_0
    new-instance v2, Landroid/database/sqlite/SQLiteSession$Transaction;

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteSession$Transaction;-><init>(Landroid/database/sqlite/SQLiteSession$Transaction-IA;)V

    move-object v0, v2

    .line 947
    :goto_0
    iput p1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    .line 948
    iput-object p2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 949
    return-object v0
.end method

.method private greylist-max-o recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 953
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 954
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 955
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 956
    return-void
.end method

.method private greylist-max-o releaseConnection()V
    .locals 3

    .line 904
    nop

    .line 905
    nop

    .line 906
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-nez v0, :cond_0

    .line 908
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 911
    goto :goto_0

    .line 910
    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 911
    throw v1

    .line 913
    :cond_0
    :goto_0
    return-void
.end method

.method private greylist-max-o throwIfNestedTransaction()V
    .locals 2

    .line 931
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->hasNestedTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    return-void

    .line 932
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because a nested transaction is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfNoTransaction()V
    .locals 2

    .line 916
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    .line 920
    return-void

    .line 917
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because there is no current transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfTransactionMarkedSuccessful()V
    .locals 2

    .line 923
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 924
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because the transaction has already been marked successful.  The only thing you can do now is call endTransaction()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z
    .locals 6
    .param p1, "sleepAfterYieldDelayMillis"    # J
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 528
    if-eqz p3, :cond_0

    .line 529
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iget v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->shouldYieldConnection(Landroid/database/sqlite/SQLiteConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    const/4 v0, 0x0

    return v0

    .line 536
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    .line 537
    .local v0, "transactionMode":I
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 538
    .local v1, "listener":Landroid/database/sqlite/SQLiteTransactionListener;
    iget v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    .line 539
    .local v2, "connectionFlags":I
    const/4 v3, 0x1

    invoke-direct {p0, p3, v3}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    .line 541
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_2

    .line 543
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    goto :goto_0

    .line 544
    :catch_0
    move-exception v4

    .line 549
    :cond_2
    :goto_0
    invoke-direct {p0, v0, v1, v2, p3}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    .line 551
    return v3
.end method


# virtual methods
.method public greylist beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .locals 0
    .param p1, "transactionMode"    # I
    .param p2, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 299
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    .line 302
    return-void
.end method

.method public greylist-max-o endTransaction(Landroid/os/CancellationSignal;)V
    .locals 1
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 400
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 401
    nop

    .line 403
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    .line 404
    return-void
.end method

.method public greylist-max-o execute(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 611
    if-eqz p1, :cond_1

    .line 615
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    return-void

    .line 619
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 621
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 624
    nop

    .line 625
    return-void

    .line 623
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 624
    throw v0

    .line 612
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 712
    if-eqz p1, :cond_1

    .line 716
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    const/4 v0, 0x0

    return-object v0

    .line 720
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 722
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 722
    return-object v0

    .line 725
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 726
    throw v0

    .line 713
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)I
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 746
    if-eqz p1, :cond_1

    .line 750
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    const/4 v0, 0x0

    return v0

    .line 754
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 756
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 756
    return v0

    .line 759
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 760
    throw v0

    .line 747
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZILandroid/os/CancellationSignal;)I
    .locals 14
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Landroid/database/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "connectionFlags"    # I
    .param p8, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 824
    move-object v1, p0

    move-object v10, p1

    move/from16 v11, p7

    move-object/from16 v12, p8

    if-eqz v10, :cond_2

    .line 827
    if-eqz p3, :cond_1

    .line 831
    move-object/from16 v13, p2

    invoke-direct {p0, p1, v13, v11, v12}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->clear()V

    .line 833
    const/4 v0, 0x0

    return v0

    .line 836
    :cond_0
    invoke-direct {p0, p1, v11, v12}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 838
    :try_start_0
    iget-object v2, v1, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 838
    return v0

    .line 842
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 843
    throw v0

    .line 828
    :cond_1
    move-object/from16 v13, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "window must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_2
    move-object/from16 v13, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sql must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 780
    if-eqz p1, :cond_1

    .line 784
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const-wide/16 v0, 0x0

    return-wide v0

    .line 788
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 790
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 790
    return-wide v0

    .line 793
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 794
    throw v0

    .line 781
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 644
    if-eqz p1, :cond_1

    .line 648
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    const-wide/16 v0, 0x0

    return-wide v0

    .line 652
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 654
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 654
    return-wide v0

    .line 656
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 657
    throw v0

    .line 645
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Ljava/lang/String;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 677
    if-eqz p1, :cond_1

    .line 681
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    const/4 v0, 0x0

    return-object v0

    .line 685
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 687
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 687
    return-object v0

    .line 689
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 690
    throw v0

    .line 678
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o hasConnection()Z
    .locals 1

    .line 260
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o hasNestedTransaction()Z
    .locals 1

    .line 251
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o hasTransaction()Z
    .locals 1

    .line 242
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "outStatementInfo"    # Landroid/database/sqlite/SQLiteStatementInfo;

    .line 580
    if-eqz p1, :cond_1

    .line 584
    if-eqz p3, :cond_0

    .line 585
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 588
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 590
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p4}, Landroid/database/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 593
    nop

    .line 594
    return-void

    .line 592
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 593
    throw v0

    .line 581
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setTransactionSuccessful()V
    .locals 2

    .line 373
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 374
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 376
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    .line 377
    return-void
.end method

.method public greylist-max-o yieldTransaction(JZLandroid/os/CancellationSignal;)Z
    .locals 2
    .param p1, "sleepAfterYieldDelayMillis"    # J
    .param p3, "throwIfUnsafe"    # Z
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 506
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 507
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 508
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 509
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNestedTransaction()V

    goto :goto_0

    .line 511
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 516
    :cond_1
    :goto_0
    nop

    .line 518
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-eqz v1, :cond_2

    .line 519
    return v0

    .line 522
    :cond_2
    invoke-direct {p0, p1, p2, p4}, Landroid/database/sqlite/SQLiteSession;->yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z

    move-result v0

    return v0

    .line 513
    :cond_3
    :goto_1
    return v0
.end method
