.class public final Landroid/app/search/SearchSession;
.super Ljava/lang/Object;
.source "SearchSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/search/SearchSession$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field private final blacklist mInterface:Landroid/app/search/ISearchUiManager;

.field private final blacklist mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mSessionId:Landroid/app/search/SearchSessionId;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 75
    const-class v0, Landroid/app/search/SearchSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/search/SearchSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/search/SearchContext;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchContext"    # Landroid/app/search/SearchContext;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/search/SearchSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/search/SearchSession;->mToken:Landroid/os/IBinder;

    .line 96
    const-string/jumbo v1, "search_ui"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 97
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/app/search/ISearchUiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/search/ISearchUiManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/search/SearchSession;->mInterface:Landroid/app/search/ISearchUiManager;

    .line 98
    new-instance v3, Landroid/app/search/SearchSessionId;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/search/SearchSessionId;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Landroid/app/search/SearchSession;->mSessionId:Landroid/app/search/SearchSessionId;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/app/search/SearchContext;->setPackageName(Ljava/lang/String;)V

    .line 103
    :try_start_0
    invoke-interface {v2, p2, v3, v0}, Landroid/app/search/ISearchUiManager;->createSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/search/SearchSession;->TAG:Ljava/lang/String;

    const-string v3, "Failed to search session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Landroid/app/search/SearchSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "SearchSession.close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    .line 208
    :try_start_0
    invoke-virtual {p0}, Landroid/app/search/SearchSession;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public greylist destroy()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    iget-object v0, p0, Landroid/app/search/SearchSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/app/search/SearchSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 172
    :try_start_0
    iget-object v0, p0, Landroid/app/search/SearchSession;->mInterface:Landroid/app/search/ISearchUiManager;

    iget-object v1, p0, Landroid/app/search/SearchSession;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-interface {v0, v1}, Landroid/app/search/ISearchUiManager;->destroySearchSession(Landroid/app/search/SearchSessionId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/search/SearchSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify search target event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 180
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 2

    .line 185
    :try_start_0
    iget-object v0, p0, Landroid/app/search/SearchSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 188
    :cond_0
    iget-object v0, p0, Landroid/app/search/SearchSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-virtual {p0}, Landroid/app/search/SearchSession;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    :cond_1
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    .end local v0    # "throwable":Ljava/lang/Throwable;
    nop

    .line 198
    :goto_0
    return-void

    .line 192
    :catchall_1
    move-exception v0

    .line 193
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 196
    goto :goto_1

    .line 194
    :catchall_2
    move-exception v1

    .line 195
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_1
    throw v0
.end method

.method public whitelist notifyEvent(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .locals 3
    .param p1, "query"    # Landroid/app/search/Query;
    .param p2, "event"    # Landroid/app/search/SearchTargetEvent;

    .line 122
    iget-object v0, p0, Landroid/app/search/SearchSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/app/search/SearchSession;->mInterface:Landroid/app/search/ISearchUiManager;

    iget-object v1, p0, Landroid/app/search/SearchSession;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/search/ISearchUiManager;->notifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/search/SearchSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist query(Landroid/app/search/Query;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .param p1, "input"    # Landroid/app/search/Query;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/search/Query;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/search/SearchTarget;",
            ">;>;)V"
        }
    .end annotation

    .line 145
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/search/SearchTarget;>;>;"
    iget-object v0, p0, Landroid/app/search/SearchSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :try_start_0
    iget-object v0, p0, Landroid/app/search/SearchSession;->mInterface:Landroid/app/search/ISearchUiManager;

    iget-object v1, p0, Landroid/app/search/SearchSession;->mSessionId:Landroid/app/search/SearchSessionId;

    new-instance v2, Landroid/app/search/SearchSession$CallbackWrapper;

    invoke-direct {v2, p2, p3}, Landroid/app/search/SearchSession$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, p1, v2}, Landroid/app/search/ISearchUiManager;->query(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/search/SearchSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to sort targets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
