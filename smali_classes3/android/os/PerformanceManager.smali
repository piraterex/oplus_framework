.class public Landroid/os/PerformanceManager;
.super Ljava/lang/Object;
.source "PerformanceManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PerformanceManager"

.field private static blacklist mPerformanceService:Lvendor/oplus/hardware/performance/V1_0/IPerformance;

.field private static blacklist sPerfServiceDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputmPerformanceService(Lvendor/oplus/hardware/performance/V1_0/IPerformance;)V
    .locals 0

    sput-object p0, Landroid/os/PerformanceManager;->mPerformanceService:Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Landroid/os/PerformanceManager;->mPerformanceService:Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    .line 52
    new-instance v0, Landroid/os/PerformanceManager$1;

    invoke-direct {v0}, Landroid/os/PerformanceManager$1;-><init>()V

    sput-object v0, Landroid/os/PerformanceManager;->sPerfServiceDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addTaskTrackPid(IIZ)V
    .locals 3
    .param p0, "group"    # I
    .param p1, "pid"    # I
    .param p2, "clear"    # Z

    .line 846
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 847
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 848
    invoke-interface {v0, p0, p1, p2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->addTaskTrackPid(IIZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "addTaskTrackPid failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist clearTaskTrackGroup(I)V
    .locals 3
    .param p0, "group"    # I

    .line 868
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 869
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 870
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->clearTaskTrackGroup(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "clearTaskTrackGroup failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist disableDamonReclaim()V
    .locals 3

    .line 1026
    const-string v0, "PerformanceManager"

    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 1027
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 1028
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->disableDamonReclaim()I

    .line 1029
    const-string v2, "disable damon reclaim succeed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1031
    :catch_0
    move-exception v1

    .line 1032
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "disable damon reclaim failed."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1034
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist disableKmallocDebug()V
    .locals 3

    .line 404
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 405
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->disableKmallocDebug()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "disable Kmalloc debug failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist disableMultiThreadOptimize()V
    .locals 3

    .line 63
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 64
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->disableMultiThreadOptimize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "disable multi thread optimization failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist disableProcessReclaim()V
    .locals 3

    .line 426
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 427
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 428
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->disableProcessReclaim()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "disable process recalim failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist disableTaskPlacementDecision()V
    .locals 3

    .line 358
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 359
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->disableTaskPlacementDecision()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "disable TPD failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist disableVmallocDebug()V
    .locals 3

    .line 448
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 449
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 450
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->disableVmallocDebug()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "disable vmalloc debug failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist enableDamonReclaim()V
    .locals 3

    .line 1013
    const-string v0, "PerformanceManager"

    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 1014
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 1015
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->enableDamonReclaim()I

    .line 1016
    const-string v2, "enable damon reclaim succeed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1018
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "enable damon reclaim failed."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist enableKmallocDebug()V
    .locals 3

    .line 393
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 394
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->enableKmallocDebug()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "enable Kmalloc debug failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist enableMultiThreadOptimize()V
    .locals 3

    .line 75
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 76
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->enableMultiThreadOptimize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "enable multi thread optimization failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist enableProcessReclaim()V
    .locals 3

    .line 415
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 416
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 417
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->enableProcessReclaim()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "eable process reclaim failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist enableTaskPlacementDecision()V
    .locals 3

    .line 346
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 347
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->enableTaskPlacementDecision()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "enable TPD failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist enableVmallocDebug()V
    .locals 3

    .line 437
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 438
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 439
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->enableVmallocDebug()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "disable vmalloc debug failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist existMemMonitor()I
    .locals 3

    .line 321
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 322
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->existMemMonitor()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 327
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "memmonitor is not exist"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getAllocwait()Ljava/lang/String;
    .locals 3

    .line 533
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 534
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getallocwait()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 539
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "read getallocwait info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDdrResidency()Ljava/lang/String;
    .locals 3

    .line 1139
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 1140
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 1141
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getDdrResidency()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1145
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get Ddr Residency failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1146
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDevinfoUfsInfo()Ljava/lang/String;
    .locals 3

    .line 1113
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 1114
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 1115
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getDevinfoUfsInfo()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1119
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get Devinfo Ufs Info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1120
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDevinfoUfsVersionInfo()Ljava/lang/String;
    .locals 3

    .line 1126
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 1127
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 1128
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getDevinfoUfsVersionInfo()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1132
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get Devinfo Ufs Version Info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1133
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDstate()Ljava/lang/String;
    .locals 3

    .line 546
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 547
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 548
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getdstate()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 552
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "read getdstate info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getFsyncwait()Ljava/lang/String;
    .locals 3

    .line 508
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 509
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 510
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getfsyncwait()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 514
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "read getfsyncwait info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHIAllocWait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 3

    .line 182
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 183
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHIAllocWait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 188
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get alloc wait info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHICpuInfo()Ljava/lang/String;
    .locals 3

    .line 230
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 231
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHICpuInfo()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 236
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get scm_call info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHICpuLoading()Ljava/lang/String;
    .locals 3

    .line 86
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 87
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHICpuLoading()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 92
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "getHICpuLoading failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHIDState()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 3

    .line 194
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 195
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHIDState()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 200
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get DState info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHIEmcdrvIowait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 3

    .line 98
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 99
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHIEmcdrvIowait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 104
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "getHIEmcdrvIowait failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHIFsyncWait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 3

    .line 134
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 135
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHIFsyncWait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 140
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get fync wait info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHIIonWait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 3

    .line 170
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 171
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHIIonWait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 176
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get ion wait info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHIIowait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 3

    .line 146
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 147
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHIIowait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 152
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get iowait info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHIIowaitHung()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 3

    .line 110
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 111
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHIIowaitHung()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 116
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "getHIIowaitHung failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHIKswapdLoading()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 3

    .line 206
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 207
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHIKswapdLoading()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 212
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get kswapd loading info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHISchedLatency()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 3

    .line 122
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 123
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHISchedLatency()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 128
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "getHISchedLatency failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHIScmCall()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 3

    .line 218
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 219
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHIScmCall()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 224
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get scm_call info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getHIUfsFeature()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 3

    .line 158
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 159
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getHIUfsFeature()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 164
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get ufs feature failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getIonwait()Ljava/lang/String;
    .locals 3

    .line 520
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 521
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getionwait()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 526
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "read getionwait info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getIowait()Ljava/lang/String;
    .locals 3

    .line 496
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 497
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 498
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getiowait()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 502
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "read getiowait info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getKernelVersion()I
    .locals 3

    .line 309
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 310
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getKernelVersion()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 315
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "failed to get kernel version."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getMemMonitor()Ljava/lang/String;
    .locals 3

    .line 668
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 669
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 670
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getMemMonitor()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 674
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get mem monitor info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    .locals 4

    .line 40
    sget-object v0, Landroid/os/PerformanceManager;->mPerformanceService:Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    if-nez v0, :cond_0

    .line 42
    :try_start_0
    invoke-static {}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    sput-object v0, Landroid/os/PerformanceManager;->mPerformanceService:Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    .line 43
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    sget-object v1, Landroid/os/PerformanceManager;->sPerfServiceDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PerformanceManager"

    const-string v2, "Failed to get performance hal service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Landroid/os/PerformanceManager;->mPerformanceService:Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    return-object v0
.end method

.method public static blacklist getSchedlatency()Ljava/lang/String;
    .locals 3

    .line 483
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 484
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 485
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getschedlatency()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 489
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "read schedlatency info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getUfsSignalRecordUpload()Ljava/lang/String;
    .locals 3

    .line 1178
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 1179
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 1180
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getUfsSignalRecordUpload()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1184
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get Ufs Signal Record Upload failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1185
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getUfsplusHpbStatus()I
    .locals 3

    .line 1100
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 1101
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 1102
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getUfsplusHpbStatus()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1106
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get Ufsplus Hpb Status failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1107
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getUfsplusTwStatus()I
    .locals 3

    .line 1087
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 1088
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 1089
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getUfsplusTwStatus()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1093
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get Ufsplus Turbo write Status failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1094
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isJankTaskTrackEnable()Z
    .locals 4

    .line 819
    const/4 v0, 0x0

    .line 821
    .local v0, "result":Z
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 822
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 823
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->isJankTaskTrackEnable()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 827
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 825
    :catch_0
    move-exception v1

    .line 826
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "isJankTaskTrackEnable failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public static blacklist readCallStack()Ljava/lang/String;
    .locals 4

    .line 998
    const/4 v0, 0x0

    .line 1000
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 1001
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 1002
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readCallStack()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1006
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1004
    :catch_0
    move-exception v1

    .line 1005
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "readCallStack failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readClmEnable()Ljava/lang/String;
    .locals 4

    .line 878
    const/4 v0, 0x0

    .line 880
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 881
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 882
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readClmEnable()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 886
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 884
    :catch_0
    move-exception v1

    .line 885
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "readClmEnable failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 887
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readClmHighLoadAll()Ljava/lang/String;
    .locals 4

    .line 926
    const/4 v0, 0x0

    .line 928
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 929
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 930
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readClmHighLoadAll()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 934
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 932
    :catch_0
    move-exception v1

    .line 933
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "readClmHighLoadAll failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 935
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readClmHighLoadGrp()Ljava/lang/String;
    .locals 4

    .line 950
    const/4 v0, 0x0

    .line 952
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 953
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 954
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readClmHighLoadGrp()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 958
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 956
    :catch_0
    move-exception v1

    .line 957
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "readClmHighLoadGrp failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 959
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readClmLowLoadGrp()Ljava/lang/String;
    .locals 4

    .line 974
    const/4 v0, 0x0

    .line 976
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 977
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 978
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readClmLowLoadGrp()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 982
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 980
    :catch_0
    move-exception v1

    .line 981
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "readClmLowLoadGrp failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 983
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readFgFreqsThreshold()Ljava/lang/String;
    .locals 4

    .line 902
    const/4 v0, 0x0

    .line 904
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 905
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 906
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readFgFreqsThreshold()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 910
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 908
    :catch_0
    move-exception v1

    .line 909
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "readFgFreqsThreshold failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readJankCpuIndicator()Ljava/lang/String;
    .locals 4

    .line 756
    const/4 v0, 0x0

    .line 758
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 759
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 760
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readJankCpuIndicator()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 764
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 762
    :catch_0
    move-exception v1

    .line 763
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "read load_indicator failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readJankCpuInfo()Ljava/lang/String;
    .locals 4

    .line 691
    const/4 v0, 0x0

    .line 693
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 694
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 695
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readJankCpuInfo()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 699
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 697
    :catch_0
    move-exception v1

    .line 698
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "read cpu_info failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readJankCpuInfoSig()Ljava/lang/String;
    .locals 4

    .line 704
    const/4 v0, 0x0

    .line 706
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 707
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 708
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readJankCpuInfoSig()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 712
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 710
    :catch_0
    move-exception v1

    .line 711
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "read cpu_info_sig failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readJankCpuLoad()Ljava/lang/String;
    .locals 4

    .line 717
    const/4 v0, 0x0

    .line 719
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 720
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 721
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readJankCpuLoad()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 725
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 723
    :catch_0
    move-exception v1

    .line 724
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "read cpu_load failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readJankCpuLoad32()Ljava/lang/String;
    .locals 4

    .line 730
    const/4 v0, 0x0

    .line 732
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 733
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 734
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readJankCpuLoad32()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 738
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 736
    :catch_0
    move-exception v1

    .line 737
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "read cpu_load32 failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readJankCpuLoad32Scale()Ljava/lang/String;
    .locals 4

    .line 743
    const/4 v0, 0x0

    .line 745
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 746
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 747
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readJankCpuLoad32Scale()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 751
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 749
    :catch_0
    move-exception v1

    .line 750
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "read cpu_load32_scale failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readJankTaskTrack()Ljava/lang/String;
    .locals 4

    .line 782
    const/4 v0, 0x0

    .line 784
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 785
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 786
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readJankTaskTrack()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 790
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 788
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "read task_track failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readJankTaskTrackByPid(I)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # I

    .line 769
    const/4 v0, 0x0

    .line 771
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 772
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 773
    invoke-interface {v1, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readJankTaskTrackByPid(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 777
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 775
    :catch_0
    move-exception v1

    .line 776
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "readJankTaskTrackByPid failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readJankVersion()Ljava/lang/String;
    .locals 4

    .line 806
    const/4 v0, 0x0

    .line 808
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 809
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 810
    invoke-interface {v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readJankVersion()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 814
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 812
    :catch_0
    move-exception v1

    .line 813
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "read version failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readKmallocDebugCreate()Ljava/lang/String;
    .locals 3

    .line 471
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 472
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readKmallocDebugCreate()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 477
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "read Kmallocdebug info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readKmallocOrigin()Ljava/lang/String;
    .locals 3

    .line 558
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 559
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 560
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getKmallocOrigin()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 564
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get KmallocOrigin info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readKmallocUsed()Ljava/lang/String;
    .locals 3

    .line 571
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 572
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 573
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getKmallocUsed()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 577
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get KmallocUsed info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readMemleakDetectThread()Ljava/lang/String;
    .locals 3

    .line 643
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 644
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 645
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readMemleakDetectThread()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 649
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "write readMemleakDetectThread info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readOplusReserve3(II)Ljava/lang/String;
    .locals 3
    .param p0, "offset"    # I
    .param p1, "len"    # I

    .line 1152
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 1153
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 1154
    invoke-interface {v0, p0, p1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readOplusReserve3(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1158
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get Ddr Residency failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readStorageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "isMulti"    # Ljava/lang/String;

    .line 1190
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 1191
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 1192
    invoke-interface {v0, p0, p1, p2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readStorageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1196
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get fbarrier info from sysfs failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1197
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readUxTaskTrack(II)Ljava/lang/String;
    .locals 4
    .param p0, "uPid"    # I
    .param p1, "rPid"    # I

    .line 832
    const/4 v0, 0x0

    .line 834
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 835
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 836
    invoke-interface {v1, p0, p1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readUxTaskTrack(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 840
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 838
    :catch_0
    move-exception v1

    .line 839
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PerformanceManager"

    const-string/jumbo v3, "readUxTaskTrack failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist readVaFeature()Ljava/lang/String;
    .locals 3

    .line 595
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 596
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 597
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->readVaFeature()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 601
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "read readVaFeature info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readVmallocDebug()Ljava/lang/String;
    .locals 3

    .line 607
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 608
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 609
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getVmallocDebug()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 613
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get VmallocDebug info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readVmallocHashCal()Ljava/lang/String;
    .locals 3

    .line 656
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 657
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 658
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getVmallocHashCal()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 662
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get VmallocHashCal info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 663
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readVmallocUsed()Ljava/lang/String;
    .locals 3

    .line 619
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 620
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 621
    invoke-interface {v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->getVmallocUsed()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 625
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string v2, "get VmallocUsed info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist removeTaskTrackPid(II)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "pid"    # I

    .line 857
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 858
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 859
    invoke-interface {v0, p0, p1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->removeTaskTrackPid(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "removeTaskTrackPid failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist setDamonReclaimColdTime(I)V
    .locals 3
    .param p0, "time"    # I

    .line 1050
    const-string v0, "PerformanceManager"

    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 1051
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 1052
    invoke-interface {v1, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->setDamonReclaimColdTime(I)I

    .line 1053
    const-string/jumbo v2, "setDamonReclaimColdTime succeed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1055
    :catch_0
    move-exception v1

    .line 1056
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setDamonReclaimColdTime failed."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist setDamonReclaimMonitoring(II)V
    .locals 3
    .param p0, "sample"    # I
    .param p1, "aggr"    # I

    .line 1074
    const-string v0, "PerformanceManager"

    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 1075
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 1076
    invoke-interface {v1, p0, p1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->setDamonReclaimMonitoring(II)I

    .line 1077
    const-string/jumbo v2, "setDamonReclaimMonitoring succeed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1079
    :catch_0
    move-exception v1

    .line 1080
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setDamonReclaimMonitoring failed."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1082
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist setDamonReclaimQuota(III)V
    .locals 3
    .param p0, "ms"    # I
    .param p1, "sz"    # I
    .param p2, "reset"    # I

    .line 1062
    const-string v0, "PerformanceManager"

    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 1063
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 1064
    invoke-interface {v1, p0, p1, p2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->setDamonReclaimQuota(III)I

    .line 1065
    const-string/jumbo v2, "setDamonReclaimQuota succeed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1067
    :catch_0
    move-exception v1

    .line 1068
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setDamonReclaimQuota failed."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist setDamonReclaimWmarks(IIII)V
    .locals 3
    .param p0, "metric"    # I
    .param p1, "high"    # I
    .param p2, "mid"    # I
    .param p3, "low"    # I

    .line 1038
    const-string v0, "PerformanceManager"

    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v1

    .line 1039
    .local v1, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v1, :cond_0

    .line 1040
    invoke-interface {v1, p0, p1, p2, p3}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->setDamonReclaimWmarks(IIII)I

    .line 1041
    const-string/jumbo v2, "setDamonReclaimWmarks succeed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    .end local v1    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1043
    :catch_0
    move-exception v1

    .line 1044
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setDamonReclaimWmarks failed."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1046
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist setFgUids(Ljava/lang/String;)V
    .locals 3
    .param p0, "fgUid"    # Ljava/lang/String;

    .line 286
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 287
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->setFgUids(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set fg uid with uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerformanceManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist setFrameRate(Ljava/lang/String;)V
    .locals 3
    .param p0, "frameRate"    # Ljava/lang/String;

    .line 275
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 276
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->setFrameRate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set frame rate with rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerformanceManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist setProcessReclaim(Ljava/lang/String;)I
    .locals 3
    .param p0, "info"    # Ljava/lang/String;

    .line 297
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 298
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->setProcessReclaim(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 303
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set process recalim with uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerformanceManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist setSchedAssistImptTask(Ljava/lang/String;)V
    .locals 3
    .param p0, "imptInfo"    # Ljava/lang/String;

    .line 253
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 254
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->setSchedAssistImptTask(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set sched assist impt task with info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerformanceManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist setSchedAssistScene(Ljava/lang/String;)V
    .locals 3
    .param p0, "sceneId"    # Ljava/lang/String;

    .line 242
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 243
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->setSchedAssistScene(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set sched assist scene with scene_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerformanceManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist setSlideboost(Ljava/lang/String;)V
    .locals 3
    .param p0, "boost"    # Ljava/lang/String;

    .line 264
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 265
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->setSlideboost(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set slb with boost value=%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerformanceManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist setTpdID(Ljava/lang/String;)V
    .locals 3
    .param p0, "param"    # Ljava/lang/String;

    .line 382
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 383
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->setTpdID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "set tpd_id failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist setTpdSerialParams(Ljava/lang/String;)V
    .locals 3
    .param p0, "cmds"    # Ljava/lang/String;

    .line 370
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 371
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 372
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->setTpdSerialParams(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "set tpd_cmds failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist writeClmEnable(Ljava/lang/String;)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/String;

    .line 892
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 893
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 894
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeClmEnable(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "writeClmEnable failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist writeClmHighLoadAll(Ljava/lang/String;)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/String;

    .line 940
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 941
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 942
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeClmHighLoadAll(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "writeClmHighLoadAll failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 947
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist writeClmHighLoadGrp(Ljava/lang/String;)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/String;

    .line 964
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 965
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 966
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeClmHighLoadGrp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "writeClmHighLoadGrp failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 971
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist writeClmLowLoadGrp(Ljava/lang/String;)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/String;

    .line 988
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 989
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 990
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeClmLowLoadGrp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "writeClmLowLoadGrp failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 995
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist writeFgFreqsThreshold(Ljava/lang/String;)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/String;

    .line 916
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 917
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 918
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeFgFreqsThreshold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "writeFgFreqsThreshold failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 923
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist writeJankTaskTrackEnable(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .line 796
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 797
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 798
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeJankTaskTrackEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "write task_track_enable failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist writeKmallocDebugCreate(I)I
    .locals 3
    .param p0, "param"    # I

    .line 459
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 460
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeKmallocDebugCreate(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 465
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "write Kmallocdebug info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist writeMemMonitor(Ljava/lang/String;)I
    .locals 3
    .param p0, "buffer"    # Ljava/lang/String;

    .line 680
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 681
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 682
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeMemMonitor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 686
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "write mem monitor failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist writeMemleakDetectThread(I)I
    .locals 3
    .param p0, "param"    # I

    .line 631
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 632
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 633
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeMemleakDetectThread(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 637
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "write writeMemleakDetectThread info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist writeOplusReserve3(IILjava/lang/String;)I
    .locals 3
    .param p0, "offset"    # I
    .param p1, "len"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 1165
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 1166
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 1167
    invoke-interface {v0, p0, p1, p2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeOplusReserve3(IILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1171
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "write Oplus Reserve3 failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1172
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist writeStorageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "isMulti"    # Ljava/lang/String;
    .param p3, "cmd"    # Ljava/lang/String;

    .line 1203
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 1204
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 1205
    invoke-interface {v0, p0, p1, p2, p3}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeStorageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1209
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "write fbarrier enable failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1210
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist writeUxState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "uxState"    # Ljava/lang/String;
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "tid"    # Ljava/lang/String;

    .line 333
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 334
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0, p0, p1, p2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeUxState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 339
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write ux state failed. pid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ux is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerformanceManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist writeVaFeature(I)I
    .locals 3
    .param p0, "param"    # I

    .line 583
    :try_start_0
    invoke-static {}, Landroid/os/PerformanceManager;->getPerformanceService()Lvendor/oplus/hardware/performance/V1_0/IPerformance;

    move-result-object v0

    .line 584
    .local v0, "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    if-eqz v0, :cond_0

    .line 585
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance;->writeVaFeature(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 589
    .end local v0    # "service":Lvendor/oplus/hardware/performance/V1_0/IPerformance;
    :cond_0
    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PerformanceManager"

    const-string/jumbo v2, "write writeVaFeature info failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
