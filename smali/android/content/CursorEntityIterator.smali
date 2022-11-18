.class public abstract Landroid/content/CursorEntityIterator;
.super Ljava/lang/Object;
.source "CursorEntityIterator.java"

# interfaces
.implements Landroid/content/EntityIterator;


# instance fields
.field private final greylist-max-o mCursor:Landroid/database/Cursor;

.field private greylist-max-o mIsClosed:Z


# direct methods
.method public constructor greylist <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    .line 40
    iput-object p1, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    .line 41
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 42
    return-void
.end method


# virtual methods
.method public final whitelist close()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    .line 112
    iget-object v0, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closing when already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final whitelist test-api hasNext()Z
    .locals 2

    .line 61
    iget-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling hasNext() when the iterator is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist next()Landroid/content/Entity;
    .locals 3

    .line 78
    iget-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/content/CursorEntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/content/CursorEntityIterator;->getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "caught a remote exception, this process will die soon"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you may only call next() if hasNext() is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling next() when the iterator is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Landroid/content/CursorEntityIterator;->next()Landroid/content/Entity;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove not supported by EntityIterators"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist reset()V
    .locals 2

    .line 97
    iget-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 101
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling reset() when the iterator is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
