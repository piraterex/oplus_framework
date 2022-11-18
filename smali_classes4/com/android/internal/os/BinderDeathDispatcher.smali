.class public Lcom/android/internal/os/BinderDeathDispatcher;
.super Ljava/lang/Object;
.source "BinderDeathDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BinderDeathDispatcher"


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mTargets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/os/BinderDeathDispatcher<",
            "TT;>.RecipientsInfo;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/os/BinderDeathDispatcher;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTargets(Lcom/android/internal/os/BinderDeathDispatcher;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 39
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 128
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>;"
    iget-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    const-string v1, "# of watched binders: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 132
    const-string v1, "# of death recipients: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "n":I
    iget-object v2, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;

    .line 135
    .local v3, "info":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    iget-object v4, v3, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 136
    .end local v3    # "info":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 138
    .end local v1    # "n":I
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getTargetsForTest()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/os/BinderDeathDispatcher<",
            "TT;>.RecipientsInfo;>;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>;"
    iget-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)I
    .locals 5
    .param p2, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/IBinder$DeathRecipient;",
            ")I"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>;"
    .local p1, "target":Landroid/os/IInterface;, "TT;"
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 93
    .local v0, "ib":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;

    .line 95
    .local v2, "info":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    if-nez v2, :cond_0

    .line 96
    new-instance v3, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;-><init>(Lcom/android/internal/os/BinderDeathDispatcher;Landroid/os/IBinder;Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 100
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    nop

    .line 104
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :catch_0
    move-exception v3

    .line 102
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v4, -0x1

    monitor-exit v1

    return v4

    .line 106
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v3, v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v3, v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    monitor-exit v1

    return v3

    .line 108
    .end local v2    # "info":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public blacklist unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V
    .locals 5
    .param p2, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/IBinder$DeathRecipient;",
            ")V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>;"
    .local p1, "target":Landroid/os/IInterface;, "TT;"
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 114
    .local v0, "ib":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;

    .line 116
    .local v2, "info":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    if-nez v2, :cond_0

    .line 117
    monitor-exit v1

    return-void

    .line 119
    :cond_0
    iget-object v3, v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 120
    iget-object v3, v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mTarget:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 121
    iget-object v3, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mTarget:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v2    # "info":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    :cond_1
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
