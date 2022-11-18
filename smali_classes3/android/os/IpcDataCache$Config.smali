.class public Landroid/os/IpcDataCache$Config;
.super Ljava/lang/Object;
.source "IpcDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IpcDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private final blacklist mApi:Ljava/lang/String;

.field private blacklist mChildren:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisabled:Z

.field private final blacklist mMaxEntries:I

.field private final blacklist mModule:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "maxEntries"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "api"    # Ljava/lang/String;

    .line 451
    invoke-direct {p0, p1, p2, p3, p3}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "maxEntries"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/IpcDataCache$Config;->mDisabled:Z

    .line 440
    iput p1, p0, Landroid/os/IpcDataCache$Config;->mMaxEntries:I

    .line 441
    iput-object p2, p0, Landroid/os/IpcDataCache$Config;->mModule:Ljava/lang/String;

    .line 442
    iput-object p3, p0, Landroid/os/IpcDataCache$Config;->mApi:Ljava/lang/String;

    .line 443
    iput-object p4, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Ljava/lang/String;)V
    .locals 2
    .param p1, "root"    # Landroid/os/IpcDataCache$Config;
    .param p2, "api"    # Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->maxEntries()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->module()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p2}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "root"    # Landroid/os/IpcDataCache$Config;
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->maxEntries()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->module()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method private final blacklist registerChild(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 503
    monitor-enter p0

    .line 504
    :try_start_0
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    .line 507
    :cond_0
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 508
    iget-boolean v0, p0, Landroid/os/IpcDataCache$Config;->mDisabled:Z

    if-eqz v0, :cond_1

    .line 509
    invoke-static {p1}, Landroid/os/IpcDataCache;->disableForCurrentProcess(Ljava/lang/String;)V

    .line 511
    :cond_1
    monitor-exit p0

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final blacklist api()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mApi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 476
    new-instance v0, Landroid/os/IpcDataCache$Config;

    invoke-virtual {p0}, Landroid/os/IpcDataCache$Config;->api()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/os/IpcDataCache$Config;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .local v0, "result":Landroid/os/IpcDataCache$Config;
    invoke-direct {p0, p1}, Landroid/os/IpcDataCache$Config;->registerChild(Ljava/lang/String;)V

    .line 478
    return-object v0
.end method

.method public blacklist disableAllForCurrentProcess()V
    .locals 2

    .line 533
    monitor-enter p0

    .line 534
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/os/IpcDataCache$Config;->mDisabled:Z

    .line 535
    invoke-virtual {p0}, Landroid/os/IpcDataCache$Config;->disableForCurrentProcess()V

    .line 536
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 538
    .local v1, "c":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/IpcDataCache;->disableForCurrentProcess(Ljava/lang/String;)V

    .line 539
    .end local v1    # "c":Ljava/lang/String;
    goto :goto_0

    .line 541
    :cond_0
    monitor-exit p0

    .line 542
    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist disableForCurrentProcess()V
    .locals 1

    .line 525
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/IpcDataCache;->disableForCurrentProcess(Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public blacklist invalidateCache()V
    .locals 2

    .line 518
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mModule:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/IpcDataCache$Config;->mApi:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public final blacklist maxEntries()I
    .locals 1

    .line 482
    iget v0, p0, Landroid/os/IpcDataCache$Config;->mMaxEntries:I

    return v0
.end method

.method public final blacklist module()Ljava/lang/String;
    .locals 1

    .line 487
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mModule:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist name()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    return-object v0
.end method
