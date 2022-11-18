.class public final Landroid/database/sqlite/SQLiteQuery;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteQuery"


# instance fields
.field private final greylist-max-o mCancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 39
    iput-object p3, p0, Landroid/database/sqlite/SQLiteQuery;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 40
    return-void
.end method


# virtual methods
.method greylist-max-o fillWindow(Landroid/database/CursorWindow;IIZ)I
    .locals 9
    .param p1, "window"    # Landroid/database/CursorWindow;
    .param p2, "startPos"    # I
    .param p3, "requiredPos"    # I
    .param p4, "countAllRows"    # Z

    .line 58
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    .line 60
    :try_start_0
    invoke-virtual {p1}, Landroid/database/CursorWindow;->acquireReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getConnectionFlags()I

    move-result v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteQuery;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 62
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteSession;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZILandroid/os/CancellationSignal;)I

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .local v0, "numRows":I
    nop

    .line 73
    :try_start_2
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 65
    return v0

    .line 73
    .end local v0    # "numRows":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v1, "SQLiteQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    .end local p1    # "window":Landroid/database/CursorWindow;
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    throw v0

    .line 66
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    .restart local p1    # "window":Landroid/database/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :catch_1
    move-exception v0

    .line 67
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->onCorruption()V

    .line 68
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    .end local p1    # "window":Landroid/database/CursorWindow;
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    .restart local p1    # "window":Landroid/database/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V

    .line 74
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    .end local p1    # "window":Landroid/database/CursorWindow;
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    .restart local p1    # "window":Landroid/database/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 77
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteQuery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
