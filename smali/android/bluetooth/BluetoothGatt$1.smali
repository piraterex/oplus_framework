.class Landroid/bluetooth/BluetoothGatt$1;
.super Landroid/bluetooth/IBluetoothGattCallback$Stub;
.source "BluetoothGatt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothGatt;

    .line 234
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCharacteristicRead(Ljava/lang/String;II[B)V
    .locals 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I
    .param p4, "value"    # [B

    .line 441
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V

    .line 447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/16 v0, 0xf

    if-ne p2, v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 453
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 454
    move v8, v3

    goto :goto_0

    :cond_2
    move v8, v1

    .line 455
    .local v8, "authReq":I
    :goto_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 456
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v4

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmClientIf(Landroid/bluetooth/BluetoothGatt;)I

    move-result v5

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothGatt;)Landroid/content/AttributionSource;

    move-result-object v9

    move-object v6, p1

    move v7, p3

    move-object v10, v0

    invoke-interface/range {v4 .. v10}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 458
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 460
    return-void

    .line 461
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    .end local v8    # "authReq":I
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V

    .line 468
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 470
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_4

    .line 471
    const-string v1, "BluetoothGatt"

    const-string/jumbo v2, "onCharacteristicRead() failed to find characteristic!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void

    .line 475
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v2, Landroid/bluetooth/BluetoothGatt$1$6;

    invoke-direct {v2, p0, p2, v0, p4}, Landroid/bluetooth/BluetoothGatt$1$6;-><init>(Landroid/bluetooth/BluetoothGatt$1;ILandroid/bluetooth/BluetoothGattCharacteristic;[B)V

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 486
    return-void

    .line 447
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist onCharacteristicWrite(Ljava/lang/String;II[B)V
    .locals 20
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I
    .param p4, "value"    # [B

    .line 502
    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    return-void

    .line 506
    :cond_0
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 507
    :try_start_0
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V

    .line 508
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    move/from16 v14, p3

    invoke-virtual {v0, v3, v14}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v15

    .line 512
    .local v15, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v15, :cond_1

    return-void

    .line 514
    :cond_1
    const/4 v11, 0x5

    if-eq v2, v11, :cond_2

    const/16 v0, 0xf

    if-ne v2, v0, :cond_6

    :cond_2
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    .line 518
    :try_start_1
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/16 v16, 0x1

    if-nez v0, :cond_3

    .line 519
    move/from16 v8, v16

    goto :goto_0

    :cond_3
    move v8, v3

    .line 520
    .local v8, "authReq":I
    :goto_0
    const v0, 0x7fffffff

    .line 521
    .local v0, "requestStatus":I
    const/4 v3, 0x0

    move v10, v3

    .local v10, "i":I
    :goto_1
    if-ge v10, v11, :cond_5

    .line 523
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    move-object v9, v3

    .line 527
    .local v9, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v3, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    iget-object v4, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmClientIf(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    .line 528
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v7

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v17

    iget-object v5, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v5}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothGatt;)Landroid/content/AttributionSource;

    move-result-object v18

    .line 527
    move-object/from16 v5, p1

    move/from16 v6, p3

    move-object/from16 v19, v9

    .end local v9    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    .local v19, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    move-object/from16 v9, v17

    move/from16 v17, v10

    .end local v10    # "i":I
    .local v17, "i":I
    move-object/from16 v10, v18

    move/from16 v18, v11

    move-object/from16 v11, v19

    invoke-interface/range {v3 .. v11}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;III[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 535
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    move-object/from16 v4, v19

    .end local v19    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    invoke-virtual {v4, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/16 v5, 0x9

    .line 536
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    .line 537
    .end local v0    # "requestStatus":I
    .local v3, "requestStatus":I
    const/16 v0, 0xc9

    if-eq v3, v0, :cond_4

    .line 539
    move v0, v3

    goto :goto_3

    .line 542
    :cond_4
    const-wide/16 v5, 0xa

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1

    .line 544
    goto :goto_2

    .line 543
    :catch_0
    move-exception v0

    .line 521
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :goto_2
    add-int/lit8 v10, v17, 0x1

    move v0, v3

    move/from16 v11, v18

    .end local v17    # "i":I
    .restart local v10    # "i":I
    goto :goto_1

    .end local v3    # "requestStatus":I
    .restart local v0    # "requestStatus":I
    :cond_5
    move/from16 v17, v10

    .line 546
    .end local v10    # "i":I
    :goto_3
    :try_start_3
    iget-object v3, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_1

    .line 547
    return-void

    .line 548
    .end local v0    # "requestStatus":I
    .end local v8    # "authReq":I
    :catch_1
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothGatt"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v13}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V

    .line 554
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v3, Landroid/bluetooth/BluetoothGatt$1$7;

    invoke-direct {v3, v1, v15, v2}, Landroid/bluetooth/BluetoothGatt$1$7;-><init>(Landroid/bluetooth/BluetoothGatt$1;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 564
    return-void

    .line 508
    .end local v15    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catchall_0
    move-exception v0

    move/from16 v14, p3

    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public blacklist onClientConnectionState(IIZLjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;

    .line 341
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientConnectionState() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    move v2, v0

    goto :goto_0

    .line 348
    :cond_1
    move v2, v1

    :goto_0
    nop

    .line 350
    .local v2, "profileState":I
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v4, Landroid/bluetooth/BluetoothGatt$1$4;

    invoke-direct {v4, p0, p1, v2}, Landroid/bluetooth/BluetoothGatt$1$4;-><init>(Landroid/bluetooth/BluetoothGatt$1;II)V

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 361
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmStateLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 362
    if-eqz p3, :cond_2

    .line 363
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4, v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmConnState(Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_1

    .line 365
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmConnState(Landroid/bluetooth/BluetoothGatt;I)V

    .line 367
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 369
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 370
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V

    .line 371
    monitor-exit v0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 367
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onClientRegistered(II)V
    .locals 11
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .line 243
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientRegistered() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmClientIf(Landroid/bluetooth/BluetoothGatt;I)V

    .line 254
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 255
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v2, Landroid/bluetooth/BluetoothGatt$1$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothGatt$1$1;-><init>(Landroid/bluetooth/BluetoothGatt$1;)V

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 267
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmStateLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmConnState(Landroid/bluetooth/BluetoothGatt;I)V

    .line 269
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 273
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 275
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmClientIf(Landroid/bluetooth/BluetoothGatt;)I

    move-result v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v5}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAutoConnect(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v5, v0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmTransport(Landroid/bluetooth/BluetoothGatt;)I

    move-result v6

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmOpportunistic(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v7

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmPhy(Landroid/bluetooth/BluetoothGatt;)I

    move-result v8

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothGatt;)Landroid/content/AttributionSource;

    move-result-object v9

    move-object v10, v1

    invoke-interface/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZIZILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 277
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    nop

    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist onConfigureMTU(Ljava/lang/String;II)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigureMTU() - Device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mtu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$13;

    invoke-direct {v1, p0, p2, p3}, Landroid/bluetooth/BluetoothGatt$1$13;-><init>(Landroid/bluetooth/BluetoothGatt$1;II)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 789
    return-void
.end method

.method public blacklist onConnectionUpdated(Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "interval"    # I
    .param p3, "latency"    # I
    .param p4, "timeout"    # I
    .param p5, "status"    # I

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectionUpdated() - Device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " latency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v7, Landroid/bluetooth/BluetoothGatt$1$14;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothGatt$1$14;-><init>(Landroid/bluetooth/BluetoothGatt$1;IIII)V

    invoke-static {v0, v7}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 817
    return-void
.end method

.method public blacklist onDescriptorRead(Ljava/lang/String;II[B)V
    .locals 15
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I
    .param p4, "value"    # [B

    .line 608
    move-object v1, p0

    move/from16 v2, p2

    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    return-void

    .line 612
    :cond_0
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 613
    :try_start_0
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V

    .line 614
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    move/from16 v12, p3

    invoke-virtual {v0, v3, v12}, Landroid/bluetooth/BluetoothGatt;->getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v13

    .line 617
    .local v13, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v13, :cond_1

    return-void

    .line 620
    :cond_1
    const/4 v0, 0x5

    if-eq v2, v0, :cond_2

    const/16 v0, 0xf

    if-ne v2, v0, :cond_4

    :cond_2
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    .line 624
    :try_start_1
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v14, 0x1

    if-nez v0, :cond_3

    .line 625
    move v7, v14

    goto :goto_0

    :cond_3
    move v7, v3

    .line 626
    .local v7, "authReq":I
    :goto_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 627
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    iget-object v4, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmClientIf(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    iget-object v5, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v5}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothGatt;)Landroid/content/AttributionSource;

    move-result-object v8

    move-object/from16 v5, p1

    move/from16 v6, p3

    move-object v9, v0

    invoke-interface/range {v3 .. v9}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 629
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v3, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    add-int/2addr v4, v14

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 631
    return-void

    .line 632
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    .end local v7    # "authReq":I
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothGatt"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v11}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V

    .line 639
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v3, Landroid/bluetooth/BluetoothGatt$1$9;

    move-object/from16 v4, p4

    invoke-direct {v3, p0, v2, v13, v4}, Landroid/bluetooth/BluetoothGatt$1$9;-><init>(Landroid/bluetooth/BluetoothGatt$1;ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 650
    return-void

    .line 614
    .end local v13    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :catchall_0
    move-exception v0

    move/from16 v12, p3

    move-object/from16 v4, p4

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public blacklist onDescriptorWrite(Ljava/lang/String;II[B)V
    .locals 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I
    .param p4, "value"    # [B

    .line 665
    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    return-void

    .line 669
    :cond_0
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 670
    :try_start_0
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V

    .line 671
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    move/from16 v13, p3

    invoke-virtual {v0, v3, v13}, Landroid/bluetooth/BluetoothGatt;->getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v14

    .line 674
    .local v14, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v14, :cond_1

    return-void

    .line 676
    :cond_1
    const/4 v0, 0x5

    if-eq v2, v0, :cond_2

    const/16 v0, 0xf

    if-ne v2, v0, :cond_4

    :cond_2
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    .line 680
    :try_start_1
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v15, 0x1

    if-nez v0, :cond_3

    .line 681
    move v7, v15

    goto :goto_0

    :cond_3
    move v7, v3

    .line 682
    .local v7, "authReq":I
    :goto_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 686
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    iget-object v4, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmClientIf(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    .line 687
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v8

    iget-object v5, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v5}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothGatt;)Landroid/content/AttributionSource;

    move-result-object v9

    .line 686
    move-object/from16 v5, p1

    move/from16 v6, p3

    move-object v10, v0

    invoke-interface/range {v3 .. v10}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;II[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 692
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v3, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    add-int/2addr v4, v15

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 694
    return-void

    .line 695
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    .end local v7    # "authReq":I
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothGatt"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v12}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V

    .line 702
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v3, Landroid/bluetooth/BluetoothGatt$1$10;

    invoke-direct {v3, v1, v14, v2}, Landroid/bluetooth/BluetoothGatt$1$10;-><init>(Landroid/bluetooth/BluetoothGatt$1;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 711
    return-void

    .line 671
    .end local v14    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :catchall_0
    move-exception v0

    move/from16 v13, p3

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public blacklist onExecuteWrite(Ljava/lang/String;I)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 723
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 728
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V

    .line 729
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$11;

    invoke-direct {v1, p0, p2}, Landroid/bluetooth/BluetoothGatt$1$11;-><init>(Landroid/bluetooth/BluetoothGatt$1;I)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 740
    return-void

    .line 729
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onNotify(Ljava/lang/String;I[B)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "value"    # [B

    .line 575
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 581
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_1

    return-void

    .line 583
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v2, Landroid/bluetooth/BluetoothGatt$1$8;

    invoke-direct {v2, p0, v0, p3}, Landroid/bluetooth/BluetoothGatt$1$8;-><init>(Landroid/bluetooth/BluetoothGatt$1;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 594
    return-void
.end method

.method public blacklist onPhyRead(Ljava/lang/String;III)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPhyRead() - status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rxPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$3;

    invoke-direct {v1, p0, p2, p3, p4}, Landroid/bluetooth/BluetoothGatt$1$3;-><init>(Landroid/bluetooth/BluetoothGatt$1;III)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method public blacklist onPhyUpdate(Ljava/lang/String;III)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPhyUpdate() - status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rxPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$2;

    invoke-direct {v1, p0, p2, p3, p4}, Landroid/bluetooth/BluetoothGatt$1$2;-><init>(Landroid/bluetooth/BluetoothGatt$1;III)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method

.method public blacklist onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .line 752
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$12;

    invoke-direct {v1, p0, p2, p3}, Landroid/bluetooth/BluetoothGatt$1$12;-><init>(Landroid/bluetooth/BluetoothGatt$1;II)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 764
    return-void
.end method

.method public blacklist onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;I)V"
        }
    .end annotation

    .line 385
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSearchComplete() = Device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    return-void

    .line 392
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 394
    .local v2, "s":Landroid/bluetooth/BluetoothGattService;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 395
    .end local v2    # "s":Landroid/bluetooth/BluetoothGattService;
    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmServices(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmServices(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 401
    .local v2, "fixedService":Landroid/bluetooth/BluetoothGattService;
    new-instance v3, Ljava/util/ArrayList;

    .line 402
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 403
    .local v3, "includedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 405
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattService;

    .line 406
    .local v5, "brokenRef":Landroid/bluetooth/BluetoothGattService;
    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v6}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 407
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v9

    .line 406
    invoke-virtual {v6, v7, v8, v9}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattService;

    move-result-object v6

    .line 408
    .local v6, "includedService":Landroid/bluetooth/BluetoothGattService;
    if-eqz v6, :cond_2

    .line 409
    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothGattService;->addIncludedService(Landroid/bluetooth/BluetoothGattService;)V

    goto :goto_3

    .line 411
    :cond_2
    const-string v7, "Broken GATT database: can\'t find included service."

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v5    # "brokenRef":Landroid/bluetooth/BluetoothGattService;
    .end local v6    # "includedService":Landroid/bluetooth/BluetoothGattService;
    :goto_3
    goto :goto_2

    .line 414
    .end local v2    # "fixedService":Landroid/bluetooth/BluetoothGattService;
    .end local v3    # "includedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_3
    goto :goto_1

    .line 416
    :cond_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$5;

    invoke-direct {v1, p0, p3}, Landroid/bluetooth/BluetoothGatt$1$5;-><init>(Landroid/bluetooth/BluetoothGatt$1;I)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method public blacklist onServiceChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceChanged() - Device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$15;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothGatt$1$15;-><init>(Landroid/bluetooth/BluetoothGatt$1;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 842
    return-void
.end method

.method public blacklist onSubrateChange(Ljava/lang/String;IIIII)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "subrateFactor"    # I
    .param p3, "latency"    # I
    .param p4, "contNum"    # I
    .param p5, "timeout"    # I
    .param p6, "status"    # I

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSubrateChange() - Device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subrateFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " latency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGatt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v8, Landroid/bluetooth/BluetoothGatt$1$16;

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothGatt$1$16;-><init>(Landroid/bluetooth/BluetoothGatt$1;IIIII)V

    invoke-static {v0, v8}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 869
    return-void
.end method
