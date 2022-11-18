.class public Landroid/window/ProxyOnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "ProxyOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;


# instance fields
.field private blacklist mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/window/OnBackInvokedCallback;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

.field private blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Z)V
    .locals 1
    .param p1, "applicationCallBackEnabled"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 57
    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-direct {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;-><init>(Z)V

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    .line 58
    return-void
.end method

.method private blacklist clearCallbacksOnDispatcher()V
    .locals 4

    .line 136
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 140
    .local v1, "callback":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/window/OnBackInvokedCallback;Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v2, v3}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 141
    .end local v1    # "callback":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/window/OnBackInvokedCallback;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 142
    :cond_1
    return-void
.end method

.method static synthetic blacklist lambda$unregisterOnBackInvokedCallback$0(Landroid/window/OnBackInvokedCallback;Landroid/util/Pair;)Z
    .locals 1
    .param p0, "callback"    # Landroid/window/OnBackInvokedCallback;
    .param p1, "p"    # Landroid/util/Pair;

    .line 85
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V
    .locals 3
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;
    .param p2, "priority"    # I

    .line 94
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_1

    .line 97
    const/4 v2, -0x1

    if-gt p2, v2, :cond_0

    .line 98
    invoke-interface {v1, p1}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {v1, p2, p1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 103
    :cond_1
    :goto_0
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist transferCallbacksToDispatcher()V
    .locals 5

    .line 113
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V

    .line 123
    :cond_1
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 124
    .local v1, "callbackPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/window/OnBackInvokedCallback;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 125
    .local v2, "priority":I
    if-ltz v2, :cond_2

    .line 126
    iget-object v3, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v3, v2, v4}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    goto :goto_1

    .line 128
    :cond_2
    iget-object v3, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v3, v4}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 130
    .end local v1    # "callbackPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/window/OnBackInvokedCallback;Ljava/lang/Integer;>;"
    .end local v2    # "priority":I
    :goto_1
    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 133
    return-void
.end method


# virtual methods
.method public whitelist registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 67
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0, p2, p1}, Landroid/window/ProxyOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 70
    :cond_0
    return-void
.end method

.method public blacklist registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 74
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/window/ProxyOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 75
    return-void
.end method

.method public blacklist reset()V
    .locals 2

    .line 156
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setActualDispatcher(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 2
    .param p1, "actualDispatcher"    # Landroid/window/OnBackInvokedDispatcher;

    .line 177
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-ne p1, v1, :cond_0

    .line 179
    monitor-exit v0

    return-void

    .line 181
    :cond_0
    invoke-direct {p0}, Landroid/window/ProxyOnBackInvokedDispatcher;->clearCallbacksOnDispatcher()V

    .line 182
    instance-of v1, p1, Landroid/window/ProxyOnBackInvokedDispatcher;

    if-eqz v1, :cond_1

    .line 187
    move-object v1, p1

    check-cast v1, Landroid/window/ProxyOnBackInvokedDispatcher;

    iget-object v1, v1, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iput-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_0

    .line 190
    :cond_1
    iput-object p1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 192
    :goto_0
    invoke-direct {p0}, Landroid/window/ProxyOnBackInvokedDispatcher;->transferCallbacksToDispatcher()V

    .line 193
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V
    .locals 1
    .param p1, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 199
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0, p1}, Landroid/window/OnBackInvokedDispatcher;->setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V

    goto :goto_0

    .line 202
    :cond_0
    iput-object p1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 204
    :goto_0
    return-void
.end method

.method public whitelist unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 84
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    new-instance v2, Landroid/window/ProxyOnBackInvokedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/window/ProxyOnBackInvokedDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/window/OnBackInvokedCallback;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 86
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v1, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 89
    :cond_0
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
