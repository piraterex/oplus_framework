.class public final Landroid/app/SharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private greylist-max-o mClear:Z

.field private final greylist-max-o mEditorLock:Ljava/lang/Object;

.field private final greylist-max-o mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/app/SharedPreferencesImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/app/SharedPreferencesImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/SharedPreferencesImpl;

    .line 405
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    return-void
.end method

.method private greylist-max-o commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .locals 14

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "keysCleared":Z
    const/4 v1, 0x0

    .line 519
    .local v1, "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 522
    .local v2, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 526
    :try_start_0
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v4}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;)I

    move-result v4

    if-lez v4, :cond_0

    .line 531
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    new-instance v5, Ljava/util/HashMap;

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v6}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmMap(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v4, v5}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fputmMap(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)V

    .line 533
    :cond_0
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v4}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmMap(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v4

    .line 534
    .local v4, "mapToWriteToDisk":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v5}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fputmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;I)V

    .line 536
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v5}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmListeners(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    move v5, v7

    .line 537
    .local v5, "hasListeners":Z
    if-eqz v5, :cond_2

    .line 538
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 539
    new-instance v7, Ljava/util/HashSet;

    iget-object v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v8}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmListeners(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v7

    .line 542
    :cond_2
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 543
    const/4 v7, 0x0

    .line 545
    .local v7, "changesMade":Z
    :try_start_1
    iget-boolean v9, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v9, :cond_4

    .line 546
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 547
    const/4 v7, 0x1

    .line 548
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 550
    :cond_3
    const/4 v0, 0x1

    .line 551
    iput-boolean v6, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 554
    :cond_4
    iget-object v6, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 555
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 556
    .local v10, "k":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 560
    .local v11, "v":Ljava/lang/Object;
    if-eq v11, p0, :cond_7

    if-nez v11, :cond_5

    goto :goto_2

    .line 566
    :cond_5
    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 567
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 568
    .local v12, "existingValue":Ljava/lang/Object;
    if-eqz v12, :cond_6

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 569
    goto :goto_1

    .line 572
    .end local v12    # "existingValue":Ljava/lang/Object;
    :cond_6
    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 561
    :cond_7
    :goto_2
    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 562
    goto :goto_1

    .line 564
    :cond_8
    invoke-interface {v4, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    :goto_3
    const/4 v7, 0x1

    .line 576
    if-eqz v5, :cond_9

    .line 577
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "k":Ljava/lang/String;
    .end local v11    # "v":Ljava/lang/Object;
    :cond_9
    goto :goto_1

    .line 581
    :cond_a
    iget-object v6, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 583
    if-eqz v7, :cond_b

    .line 584
    iget-object v6, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v6}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    invoke-static {v6, v9, v10}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fputmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;J)V

    .line 587
    :cond_b
    iget-object v6, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v6}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;)J

    move-result-wide v9

    move-wide v6, v9

    .line 588
    .end local v7    # "changesMade":Z
    .local v6, "memoryStateGeneration":J
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    .end local v5    # "hasListeners":Z
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 590
    new-instance v3, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    const/4 v12, 0x0

    move-object v5, v3

    move v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v4

    invoke-direct/range {v5 .. v12}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;-><init>(JZLjava/util/List;Ljava/util/Set;Ljava/util/Map;Landroid/app/SharedPreferencesImpl$MemoryCommitResult-IA;)V

    return-object v3

    .line 588
    .end local v6    # "memoryStateGeneration":J
    .restart local v5    # "hasListeners":Z
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "keysCleared":Z
    .end local v1    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .end local p0    # "this":Landroid/app/SharedPreferencesImpl$EditorImpl;
    :try_start_4
    throw v6

    .line 589
    .end local v4    # "mapToWriteToDisk":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "hasListeners":Z
    .restart local v0    # "keysCleared":Z
    .restart local v1    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .restart local p0    # "this":Landroid/app/SharedPreferencesImpl$EditorImpl;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method private greylist-max-o notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 5
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    .line 622
    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysCleared:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 625
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 626
    iget-boolean v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysCleared:Z

    if-eqz v0, :cond_2

    const-wide/32 v0, 0x71a0c40

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 628
    .local v1, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v1, :cond_1

    .line 629
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 631
    .end local v1    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_1
    goto :goto_0

    .line 633
    :cond_2
    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 634
    iget-object v1, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 635
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 636
    .local v3, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v3, :cond_3

    .line 637
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 639
    .end local v3    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_3
    goto :goto_2

    .line 633
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_5
    goto :goto_3

    .line 643
    :cond_6
    sget-object v0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/SharedPreferencesImpl$EditorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl$$ExternalSyntheticLambda0;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    :goto_3
    return-void

    .line 623
    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public whitelist apply()V
    .locals 6

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 478
    .local v0, "startTime":J
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v2

    .line 479
    .local v2, "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    new-instance v3, Landroid/app/SharedPreferencesImpl$EditorImpl$1;

    invoke-direct {v3, p0, v2, v0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl$1;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;J)V

    .line 495
    .local v3, "awaitCommit":Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/app/QueuedWork;->addFinisher(Ljava/lang/Runnable;)V

    .line 497
    new-instance v4, Landroid/app/SharedPreferencesImpl$EditorImpl$2;

    invoke-direct {v4, p0, v3}, Landroid/app/SharedPreferencesImpl$EditorImpl$2;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V

    .line 505
    .local v4, "postWriteRunnable":Ljava/lang/Runnable;
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v5, v2, v4}, Landroid/app/SharedPreferencesImpl;->-$$Nest$menqueueDiskWrite(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 511
    invoke-direct {p0, v2}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    .line 512
    return-void
.end method

.method public whitelist clear()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 468
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 470
    monitor-exit v0

    return-object p0

    .line 471
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist commit()Z
    .locals 5

    .line 596
    const-wide/16 v0, 0x0

    .line 602
    .local v0, "startTime":J
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v2

    .line 604
    .local v2, "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/app/SharedPreferencesImpl;->-$$Nest$menqueueDiskWrite(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 607
    :try_start_0
    iget-object v3, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    nop

    .line 617
    invoke-direct {p0, v2}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    .line 618
    iget-boolean v3, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    return v3

    .line 611
    :catchall_0
    move-exception v3

    .line 616
    throw v3

    .line 608
    :catch_0
    move-exception v3

    .line 609
    .local v3, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x0

    return v4
.end method

.method synthetic blacklist lambda$notifyListeners$0$android-app-SharedPreferencesImpl$EditorImpl(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    .line 643
    invoke-direct {p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method public whitelist putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 452
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    monitor-exit v0

    return-object p0

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 445
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    monitor-exit v0

    return-object p0

    .line 448
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 431
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    monitor-exit v0

    return-object p0

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 438
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    monitor-exit v0

    return-object p0

    .line 441
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 416
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    monitor-exit v0

    return-object p0

    .line 419
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 423
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 425
    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 424
    :goto_0
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    monitor-exit v0

    return-object p0

    .line 427
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 460
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    monitor-exit v0

    return-object p0

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
