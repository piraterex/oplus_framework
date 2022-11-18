.class Landroid/os/SystemVibrator$AllVibratorsStateListener;
.super Ljava/lang/Object;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllVibratorsStateListener"
.end annotation


# instance fields
.field private final blacklist mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInitializedMask:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mVibratingMask:I

.field private final blacklist mVibratorListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/SystemVibrator$SingleVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    .line 592
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    .line 603
    iput-object p1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 604
    iput-object p2, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 605
    return-void
.end method


# virtual methods
.method blacklist hasRegisteredListeners()Z
    .locals 2

    .line 608
    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onVibrating$0$android-os-SystemVibrator$AllVibratorsStateListener(IZ)V
    .locals 7
    .param p1, "vibratorIdx"    # I
    .param p2, "vibrating"    # Z

    .line 651
    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    .line 653
    .local v1, "allInitializedMask":I
    shl-int v3, v2, p1

    .line 654
    .local v3, "vibratorMask":I
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mInitializedMask:I

    and-int v5, v4, v3

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 656
    or-int/2addr v4, v3

    iput v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mInitializedMask:I

    .line 657
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    if-eqz p2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    or-int/2addr v4, v5

    iput v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    goto :goto_2

    .line 660
    :cond_1
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    and-int v5, v4, v3

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v6

    .line 661
    .local v5, "prevVibrating":Z
    :goto_1
    if-eq v5, p2, :cond_3

    .line 662
    xor-int/2addr v4, v3

    iput v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    .line 665
    .end local v5    # "prevVibrating":Z
    :cond_3
    :goto_2
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mInitializedMask:I

    if-eq v4, v1, :cond_4

    .line 667
    monitor-exit v0

    return-void

    .line 669
    :cond_4
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v2, v6

    :goto_3
    move v1, v2

    .line 670
    .end local v3    # "vibratorMask":I
    .local v1, "anyVibrating":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    invoke-interface {v0, v1}, Landroid/os/Vibrator$OnVibratorStateChangedListener;->onVibratorStateChanged(Z)V

    .line 672
    return-void

    .line 670
    .end local v1    # "anyVibrating":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method blacklist onVibrating(IZ)V
    .locals 2
    .param p1, "vibratorIdx"    # I
    .param p2, "vibrating"    # Z

    .line 649
    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;-><init>(Landroid/os/SystemVibrator$AllVibratorsStateListener;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 673
    return-void
.end method

.method blacklist register(Landroid/os/VibratorManager;)V
    .locals 9
    .param p1, "vibratorManager"    # Landroid/os/VibratorManager;

    .line 614
    invoke-virtual {p1}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v0

    .line 615
    .local v0, "vibratorIds":[I
    iget-object v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 617
    aget v3, v0, v2

    .line 618
    .local v3, "vibratorId":I
    new-instance v4, Landroid/os/SystemVibrator$SingleVibratorStateListener;

    invoke-direct {v4, p0, v2}, Landroid/os/SystemVibrator$SingleVibratorStateListener;-><init>(Landroid/os/SystemVibrator$AllVibratorsStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    .local v4, "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v5

    iget-object v6, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v5, v6, v4}, Landroid/os/Vibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 622
    iget-object v5, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    nop

    .line 616
    .end local v3    # "vibratorId":I
    .end local v4    # "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    .restart local v3    # "vibratorId":I
    .restart local v4    # "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    :catch_0
    move-exception v5

    .line 625
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->unregister(Landroid/os/VibratorManager;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    goto :goto_1

    .line 626
    :catch_1
    move-exception v6

    .line 627
    .local v6, "e1":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v7, "Vibrator"

    const-string v8, "Failed to unregister listener while recovering from a failed register call"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    .end local v6    # "e1":Ljava/lang/RuntimeException;
    :goto_1
    nop

    .end local v0    # "vibratorIds":[I
    .end local p0    # "this":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    .end local p1    # "vibratorManager":Landroid/os/VibratorManager;
    throw v5

    .line 634
    .end local v2    # "i":I
    .end local v3    # "vibratorId":I
    .end local v4    # "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "vibratorIds":[I
    .restart local p0    # "this":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    .restart local p1    # "vibratorManager":Landroid/os/VibratorManager;
    :cond_0
    monitor-exit v1

    .line 635
    return-void

    .line 634
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method blacklist unregister(Landroid/os/VibratorManager;)V
    .locals 5
    .param p1, "vibratorManager"    # Landroid/os/VibratorManager;

    .line 638
    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 640
    iget-object v2, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 641
    .local v2, "vibratorId":I
    iget-object v3, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SystemVibrator$SingleVibratorStateListener;

    .line 642
    .local v3, "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    invoke-virtual {p1, v2}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Vibrator;->removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 643
    iget-object v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 644
    .end local v2    # "vibratorId":I
    .end local v3    # "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    goto :goto_0

    .line 645
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 646
    return-void

    .line 645
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
