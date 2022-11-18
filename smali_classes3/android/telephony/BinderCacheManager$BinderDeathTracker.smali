.class Landroid/telephony/BinderCacheManager$BinderDeathTracker;
.super Ljava/lang/Object;
.source "BinderCacheManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/BinderCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderDeathTracker"
.end annotation


# instance fields
.field private final blacklist mConnection:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/telephony/BinderCacheManager;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/BinderCacheManager;Landroid/os/IInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    .local p2, "connection":Landroid/os/IInterface;, "TT;"
    iput-object p1, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->this$0:Landroid/telephony/BinderCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    .line 67
    iput-object p2, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    .line 69
    :try_start_0
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 73
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist addListener(Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 76
    .local p0, "this":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 78
    :cond_0
    iget-object v1, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist binderDied()V
    .locals 4

    .line 92
    .local p0, "this":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 93
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    iget-object v2, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    .line 100
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    new-instance v0, Landroid/telephony/BinderCacheManager$BinderDeathTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 102
    return-void

    .line 100
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist getConnection()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 108
    .local p0, "this":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    return-object v0
.end method

.method public blacklist isAlive()Z
    .locals 1

    .line 115
    .local p0, "this":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public blacklist removeListener(Ljava/lang/Object;)V
    .locals 2
    .param p1, "runnableKey"    # Ljava/lang/Object;

    .line 84
    .local p0, "this":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
