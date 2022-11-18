.class public abstract Landroid/database/ContentObserver;
.super Ljava/lang/Object;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/ContentObserver$Transport;
    }
.end annotation


# static fields
.field private static final blacklist ADD_CONTENT_OBSERVER_FLAGS:J = 0x8ff25fbL


# instance fields
.field greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mTransport:Landroid/database/ContentObserver$Transport;


# direct methods
.method public constructor whitelist <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist deliverSelfNotifications()Z
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist dispatchChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V

    .line 243
    return-void
.end method

.method public final whitelist dispatchChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;I)V

    .line 259
    return-void
.end method

.method public final whitelist dispatchChange(ZLandroid/net/Uri;I)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "flags"    # I

    .line 276
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/database/ContentObserver;->dispatchChange(ZLjava/util/Collection;I)V

    .line 277
    return-void
.end method

.method public final whitelist dispatchChange(ZLjava/util/Collection;I)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .line 294
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/ContentObserver;->dispatchChange(ZLjava/util/Collection;II)V

    .line 295
    return-void
.end method

.method public final blacklist dispatchChange(ZLjava/util/Collection;II)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 300
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 301
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;II)V

    goto :goto_0

    .line 303
    :cond_0
    new-instance v7, Landroid/database/ContentObserver$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/database/ContentObserver$$ExternalSyntheticLambda0;-><init>(Landroid/database/ContentObserver;ZLjava/util/Collection;II)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    :goto_0
    return-void
.end method

.method public greylist-max-o getContentObserver()Landroid/database/IContentObserver;
    .locals 2

    .line 73
    iget-object v0, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Landroid/database/ContentObserver$Transport;

    invoke-direct {v1, p0}, Landroid/database/ContentObserver$Transport;-><init>(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 77
    :cond_0
    iget-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    monitor-exit v0

    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$dispatchChange$0$android-database-ContentObserver(ZLjava/util/Collection;II)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uris"    # Ljava/util/Collection;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 304
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;II)V

    .line 305
    return-void
.end method

.method public whitelist onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .line 122
    return-void
.end method

.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 154
    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 155
    return-void
.end method

.method public whitelist onChange(ZLandroid/net/Uri;I)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "flags"    # I

    .line 170
    invoke-virtual {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 171
    return-void
.end method

.method public whitelist onChange(ZLjava/util/Collection;I)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .line 187
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 188
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0, p1, v1, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 189
    .end local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public blacklist onChange(ZLjava/util/Collection;II)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 219
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    const-wide/32 v0, 0x8ff25fb

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;I)V

    goto :goto_1

    .line 222
    :cond_1
    :goto_0
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;ILandroid/os/UserHandle;)V

    .line 226
    :goto_1
    return-void
.end method

.method public whitelist onChange(ZLjava/util/Collection;ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;I",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 210
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;I)V

    .line 211
    return-void
.end method

.method public greylist releaseContentObserver()Landroid/database/IContentObserver;
    .locals 3

    .line 89
    iget-object v0, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 91
    .local v1, "oldTransport":Landroid/database/ContentObserver$Transport;
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Landroid/database/ContentObserver$Transport;->releaseContentObserver()V

    .line 93
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 95
    :cond_0
    monitor-exit v0

    return-object v1

    .line 96
    .end local v1    # "oldTransport":Landroid/database/ContentObserver$Transport;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
