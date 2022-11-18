.class public final Landroid/database/CursorToBulkCursorAdaptor;
.super Landroid/database/BulkCursorNative;
.source "CursorToBulkCursorAdaptor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private greylist-max-o mCursor:Landroid/database/CrossProcessCursor;

.field private greylist-max-o mFilledWindow:Landroid/database/CursorWindow;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

.field private final greylist-max-o mProviderName:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "providerName"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Landroid/database/BulkCursorNative;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 106
    instance-of v1, p1, Landroid/database/CrossProcessCursor;

    if-eqz v1, :cond_0

    .line 107
    move-object v1, p1

    check-cast v1, Landroid/database/CrossProcessCursor;

    iput-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    goto :goto_0

    .line 109
    :cond_0
    new-instance v1, Landroid/database/CrossProcessCursorWrapper;

    invoke-direct {v1, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 111
    :goto_0
    iput-object p3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    .line 113
    monitor-enter v0

    .line 114
    :try_start_0
    invoke-direct {p0, p2}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;)V

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o closeFilledWindowLocked()V
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    .line 123
    :cond_0
    return-void
.end method

.method private greylist-max-o createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .line 265
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-direct {v0, p1, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;-><init>(Landroid/database/IContentObserver;Landroid/os/IBinder$DeathRecipient;)V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 269
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, v0}, Landroid/database/CrossProcessCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 270
    return-void

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "an observer is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o disposeLocked()V
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    .line 128
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->close()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 132
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 133
    return-void
.end method

.method private greylist-max-o throwIfCursorIsClosed()V
    .locals 2

    .line 136
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 139
    return-void

    .line 137
    :cond_0
    new-instance v0, Landroid/database/StaleDataException;

    const-string v1, "Attempted to access a cursor after it has been closed."

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o unregisterObserverProxyLocked()V
    .locals 2

    .line 274
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    if-eqz v0, :cond_0

    .line 275
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, v0}, Landroid/database/CrossProcessCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 276
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-virtual {v0, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)Z

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 279
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    .line 143
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->disposeLocked()V

    .line 145
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o close()V
    .locals 2

    .line 229
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->disposeLocked()V

    .line 231
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o deactivate()V
    .locals 2

    .line 217
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    if-eqz v1, :cond_0

    .line 219
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    .line 220
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->deactivate()V

    .line 223
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 224
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;
    .locals 3

    .line 154
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 157
    new-instance v1, Landroid/database/BulkCursorDescriptor;

    invoke-direct {v1}, Landroid/database/BulkCursorDescriptor;-><init>()V

    .line 158
    .local v1, "d":Landroid/database/BulkCursorDescriptor;
    iput-object p0, v1, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    .line 159
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    .line 160
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getWantsAllOnMoveCalls()Z

    move-result v2

    iput-boolean v2, v1, Landroid/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    .line 161
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/database/BulkCursorDescriptor;->count:I

    .line 162
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    iput-object v2, v1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    .line 163
    iget-object v2, v1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, v1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 168
    :cond_0
    monitor-exit v0

    return-object v1

    .line 169
    .end local v1    # "d":Landroid/database/BulkCursorDescriptor;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getExtras()Landroid/os/Bundle;
    .locals 2

    .line 283
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 286
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getWindow(I)Landroid/database/CursorWindow;
    .locals 4
    .param p1, "position"    # I

    .line 174
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 177
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, p1}, Landroid/database/CrossProcessCursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 179
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 182
    :cond_0
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    .line 183
    .local v1, "window":Landroid/database/CursorWindow;
    if-eqz v1, :cond_1

    .line 184
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    goto :goto_1

    .line 186
    :cond_1
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    move-object v1, v2

    .line 187
    if-nez v1, :cond_2

    .line 188
    new-instance v2, Landroid/database/CursorWindow;

    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    .line 189
    move-object v1, v2

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 191
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_4

    .line 192
    :cond_3
    invoke-virtual {v1}, Landroid/database/CursorWindow;->clear()V

    .line 194
    :cond_4
    :goto_0
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2, p1, v1}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 197
    :goto_1
    if-eqz v1, :cond_5

    .line 200
    invoke-virtual {v1}, Landroid/database/CursorWindow;->acquireReference()V

    .line 202
    :cond_5
    monitor-exit v0

    return-object v1

    .line 203
    .end local v1    # "window":Landroid/database/CursorWindow;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o onMove(I)V
    .locals 3
    .param p1, "position"    # I

    .line 208
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 211
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    .line 212
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o requery(Landroid/database/IContentObserver;)I
    .locals 5
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .line 236
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 239
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :try_start_1
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->requery()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 243
    const/4 v1, -0x1

    :try_start_2
    monitor-exit v0

    return v1

    .line 250
    :cond_0
    nop

    .line 252
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    .line 253
    invoke-direct {p0, p1}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;)V

    .line 254
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v1

    monitor-exit v0

    return v1

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Requery misuse db, mCursor isClosed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 248
    invoke-interface {v4}, Landroid/database/CrossProcessCursor;->isClosed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    .local v2, "leakProgram":Ljava/lang/IllegalStateException;
    nop

    .end local p0    # "this":Landroid/database/CursorToBulkCursorAdaptor;
    .end local p1    # "observer":Landroid/database/IContentObserver;
    throw v2

    .line 255
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "leakProgram":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/database/CursorToBulkCursorAdaptor;
    .restart local p1    # "observer":Landroid/database/IContentObserver;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 292
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 295
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, p1}, Landroid/database/CrossProcessCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
