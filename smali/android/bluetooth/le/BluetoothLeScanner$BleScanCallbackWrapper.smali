.class Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
.super Landroid/bluetooth/le/IScannerCallback$Stub;
.source "BluetoothLeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/BluetoothLeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleScanCallbackWrapper"
.end annotation


# static fields
.field private static final blacklist REGISTRATION_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private blacklist mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final blacklist mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private blacklist mScannerId:I

.field private blacklist mSettings:Landroid/bluetooth/le/ScanSettings;

.field private final blacklist mWorkSource:Landroid/os/WorkSource;

.field final synthetic blacklist this$0:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScanCallback(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/IBluetoothGatt;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V
    .locals 0
    .param p2, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p4, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "scanCallback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/IBluetoothGatt;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/os/WorkSource;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .line 429
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-direct {p0}, Landroid/bluetooth/le/IScannerCallback$Stub;-><init>()V

    .line 430
    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 431
    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mFilters:Ljava/util/List;

    .line 432
    iput-object p4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    .line 433
    iput-object p5, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mWorkSource:Landroid/os/WorkSource;

    .line 434
    iput-object p6, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 435
    const/4 p1, 0x0

    iput p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    .line 436
    return-void
.end method


# virtual methods
.method blacklist flushPendingBatchResults()V
    .locals 4

    .line 491
    monitor-enter p0

    .line 492
    :try_start_0
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-gtz v0, :cond_0

    .line 493
    const-string v0, "BluetoothLeScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error state, mLeHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 497
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 498
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v3}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->flushPendingBatchResults(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 499
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothLeScanner"

    const-string v2, "Failed to get pending scan results"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    .line 504
    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist onBatchScanResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 577
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    .line 578
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 579
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$2;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$2;-><init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 585
    return-void
.end method

.method public blacklist onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
    .locals 2
    .param p1, "onFound"    # Z
    .param p2, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 589
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 595
    monitor-enter p0

    .line 596
    :try_start_0
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-gtz v0, :cond_0

    .line 597
    monitor-exit p0

    return-void

    .line 599
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 601
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;-><init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;ZLandroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    return-void

    .line 599
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist onScanManagerErrorCallback(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .line 620
    monitor-enter p0

    .line 621
    :try_start_0
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-gtz v0, :cond_0

    .line 622
    monitor-exit p0

    return-void

    .line 624
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-static {v0, v1, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$mpostCallbackError(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    .line 626
    return-void

    .line 624
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 4
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 548
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 549
    const-string v0, "BluetoothLeScanner"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const-string v0, "BluetoothLeScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScanResult() - mScannerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    monitor-enter p0

    .line 556
    :try_start_0
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-gtz v0, :cond_2

    .line 557
    const-string v0, "BluetoothLeScanner"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    const-string v0, "BluetoothLeScanner"

    const-string v1, "Ignoring result as scan stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_1
    monitor-exit p0

    return-void

    .line 562
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 564
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;-><init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 573
    return-void

    .line 562
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist onScannerRegistered(II)V
    .locals 8
    .param p1, "status"    # I
    .param p2, "scannerId"    # I

    .line 511
    const-string v0, "BluetoothLeScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScannerRegistered() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scannerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScannerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    monitor-enter p0

    .line 514
    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 516
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 517
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-ne v2, v0, :cond_0

    .line 519
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v3}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-interface {v2, p2, v3, v1}, Landroid/bluetooth/IBluetoothGatt;->unregisterScanner(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    goto :goto_0

    .line 521
    :cond_0
    iput p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    .line 522
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mFilters:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v3}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v6

    move v3, p2

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Landroid/bluetooth/IBluetoothGatt;->startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 525
    :goto_0
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 538
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BluetoothLeScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to start le scan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    .line 529
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 530
    :cond_1
    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 532
    const/4 v0, -0x2

    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    goto :goto_2

    .line 535
    :cond_2
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    .line 537
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 538
    monitor-exit p0

    .line 539
    return-void

    .line 538
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist startRegistration()V
    .locals 6

    .line 439
    monitor-enter p0

    .line 441
    :try_start_0
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 443
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 444
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mWorkSource:Landroid/os/WorkSource;

    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v5}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v5

    invoke-interface {v3, p0, v4, v5, v0}, Landroid/bluetooth/IBluetoothGatt;->registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 445
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "BluetoothLeScanner"

    const-string v4, "application registeration exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$mpostCallbackError(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-lez v0, :cond_1

    .line 452
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmLeScanClients(Landroid/bluetooth/le/BluetoothLeScanner;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 456
    :cond_1
    if-nez v0, :cond_2

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    .line 459
    :cond_2
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-ne v0, v2, :cond_3

    monitor-exit p0

    return-void

    .line 461
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$mpostCallbackError(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    .line 464
    :goto_1
    monitor-exit p0

    .line 465
    return-void

    .line 441
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist stopLeScan()V
    .locals 6

    .line 469
    monitor-enter p0

    .line 470
    :try_start_0
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-gtz v0, :cond_0

    .line 471
    const-string v0, "BluetoothLeScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error state, mLeHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 475
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 476
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v3}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->stopScan(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 477
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 480
    .local v1, "recv2":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v5}, Landroid/bluetooth/le/BluetoothLeScanner;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1}, Landroid/bluetooth/IBluetoothGatt;->unregisterScanner(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 481
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    .end local v1    # "recv2":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothLeScanner"

    const-string v2, "Failed to stop scan and unregister"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    .line 486
    monitor-exit p0

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
