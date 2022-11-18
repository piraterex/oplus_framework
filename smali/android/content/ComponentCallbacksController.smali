.class public Landroid/content/ComponentCallbacksController;
.super Ljava/lang/Object;
.source "ComponentCallbacksController.java"


# instance fields
.field private blacklist mComponentCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist forAllComponentCallbacks(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/ComponentCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "callbacksConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/ComponentCallbacks;>;"
    iget-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentCallbacks;

    .line 121
    .local v1, "callbacksArray":[Landroid/content/ComponentCallbacks;
    iget-object v2, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    .line 124
    .local v3, "callbacks":Landroid/content/ComponentCallbacks;
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 123
    .end local v3    # "callbacks":Landroid/content/ComponentCallbacks;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_1
    return-void

    .line 118
    .end local v1    # "callbacksArray":[Landroid/content/ComponentCallbacks;
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic blacklist lambda$dispatchConfigurationChanged$0(Landroid/content/res/Configuration;Landroid/content/ComponentCallbacks;)V
    .locals 0
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "callbacks"    # Landroid/content/ComponentCallbacks;

    .line 91
    invoke-interface {p1, p0}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchTrimMemory$1(ILandroid/content/ComponentCallbacks;)V
    .locals 1
    .param p0, "level"    # I
    .param p1, "callbacks"    # Landroid/content/ComponentCallbacks;

    .line 108
    instance-of v0, p1, Landroid/content/ComponentCallbacks2;

    if-eqz v0, :cond_0

    .line 109
    move-object v0, p1

    check-cast v0, Landroid/content/ComponentCallbacks2;

    invoke-interface {v0, p0}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist clearCallbacks()V
    .locals 2

    .line 79
    iget-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 83
    :cond_0
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 91
    new-instance v0, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/Configuration;)V

    invoke-direct {p0, v0}, Landroid/content/ComponentCallbacksController;->forAllComponentCallbacks(Ljava/util/function/Consumer;)V

    .line 92
    return-void
.end method

.method public blacklist dispatchLowMemory()V
    .locals 1

    .line 99
    new-instance v0, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/content/ComponentCallbacksController;->forAllComponentCallbacks(Ljava/util/function/Consumer;)V

    .line 100
    return-void
.end method

.method public blacklist dispatchTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 107
    new-instance v0, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/content/ComponentCallbacksController;->forAllComponentCallbacks(Ljava/util/function/Consumer;)V

    .line 112
    return-void
.end method

.method public blacklist registerCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroid/content/ComponentCallbacks;

    .line 52
    iget-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    .line 56
    :cond_0
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unregisterCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroid/content/ComponentCallbacks;

    .line 66
    iget-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 68
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
