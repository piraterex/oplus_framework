.class public final Landroid/bluetooth/le/BluetoothLeScanner;
.super Ljava/lang/Object;
.source "BluetoothLeScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = true

.field public static final whitelist EXTRA_CALLBACK_TYPE:Ljava/lang/String; = "android.bluetooth.le.extra.CALLBACK_TYPE"

.field public static final whitelist EXTRA_ERROR_CODE:Ljava/lang/String; = "android.bluetooth.le.extra.ERROR_CODE"

.field public static final whitelist EXTRA_LIST_SCAN_RESULT:Ljava/lang/String; = "android.bluetooth.le.extra.LIST_SCAN_RESULT"

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothLeScanner"

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/ScanCallback;",
            "Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeScanClients(Landroid/bluetooth/le/BluetoothLeScanner;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostCallbackError(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 108
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 109
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mAttributionSource:Landroid/content/AttributionSource;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    .line 112
    return-void
.end method

.method private blacklist isHardwareResourcesAvailableForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 3
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .line 681
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    .line 682
    .local v0, "callbackType":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_1

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    return v2

    .line 685
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 686
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isHardwareTrackingFiltersAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 685
    :goto_1
    return v2
.end method

.method private blacklist isRoutingAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 3
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .line 692
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    .line 694
    .local v0, "callbackType":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 695
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 696
    const/4 v1, 0x0

    return v1

    .line 698
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist isSettingsAndFilterComboAllowed(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;)Z
    .locals 5
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)Z"
        }
    .end annotation

    .line 663
    .local p2, "filterList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    .line 665
    .local v0, "callbackType":I
    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_2

    .line 667
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 668
    return v1

    .line 670
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/ScanFilter;

    .line 671
    .local v3, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter;->isAllFieldsEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 672
    return v1

    .line 674
    .end local v3    # "filter":Landroid/bluetooth/le/ScanFilter;
    :cond_1
    goto :goto_0

    .line 676
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist isSettingsConfigAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 6
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .line 649
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 650
    return v1

    .line 652
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    .line 654
    .local v0, "callbackType":I
    if-ne v0, v1, :cond_1

    .line 655
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 656
    return v1

    .line 658
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p2, "errorCode"    # I

    .line 640
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner$1;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 646
    return-void
.end method

.method private blacklist postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p2, "errorCode"    # I

    .line 630
    if-nez p1, :cond_0

    .line 631
    return p2

    .line 633
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V

    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;)I
    .locals 15
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/os/WorkSource;",
            "Landroid/bluetooth/le/ScanCallback;",
            "Landroid/app/PendingIntent;",
            ")I"
        }
    .end annotation

    .line 247
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    iget-object v0, v8, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 248
    if-nez v10, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    :goto_0
    if-eqz v9, :cond_b

    .line 254
    iget-object v11, v8, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v11

    .line 255
    const/4 v1, 0x1

    if-eqz v10, :cond_2

    :try_start_0
    iget-object v0, v8, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-direct {p0, v10, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I

    move-result v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 261
    :cond_2
    :try_start_1
    iget-object v0, v8, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .local v0, "gatt":Landroid/bluetooth/IBluetoothGatt;
    move-object v12, v0

    goto :goto_1

    .line 305
    .end local v0    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catchall_0
    move-exception v0

    move-object/from16 v14, p1

    goto/16 :goto_4

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    move-object v12, v2

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v12, "gatt":Landroid/bluetooth/IBluetoothGatt;
    :goto_1
    const/4 v7, 0x3

    if-nez v12, :cond_3

    .line 266
    :try_start_2
    invoke-direct {p0, v10, v7}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I

    move-result v0

    monitor-exit v11

    return v0

    .line 269
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    const/16 v2, 0x8

    const/4 v13, 0x0

    if-ne v0, v2, :cond_5

    if-eqz p1, :cond_4

    .line 270
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    :cond_4
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    .line 272
    .local v0, "filter":Landroid/bluetooth/le/ScanFilter;
    new-array v1, v1, [Landroid/bluetooth/le/ScanFilter;

    aput-object v0, v1, v13

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v1

    .end local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    goto :goto_2

    .line 275
    .end local v0    # "filter":Landroid/bluetooth/le/ScanFilter;
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .restart local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    :cond_5
    move-object/from16 v14, p1

    .end local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local v14, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    :goto_2
    :try_start_3
    invoke-direct {p0, v9}, Landroid/bluetooth/le/BluetoothLeScanner;->isSettingsConfigAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_6

    .line 276
    invoke-direct {p0, v10, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I

    move-result v0

    monitor-exit v11

    return v0

    .line 279
    :cond_6
    invoke-direct {p0, v9}, Landroid/bluetooth/le/BluetoothLeScanner;->isHardwareResourcesAvailableForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 280
    const/4 v0, 0x5

    invoke-direct {p0, v10, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I

    move-result v0

    monitor-exit v11

    return v0

    .line 283
    :cond_7
    invoke-direct {p0, v9, v14}, Landroid/bluetooth/le/BluetoothLeScanner;->isSettingsAndFilterComboAllowed(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 284
    invoke-direct {p0, v10, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I

    move-result v0

    monitor-exit v11

    return v0

    .line 287
    :cond_8
    invoke-direct {p0, v9}, Landroid/bluetooth/le/BluetoothLeScanner;->isRoutingAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 288
    invoke-direct {p0, v10, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I

    move-result v0

    monitor-exit v11

    return v0

    .line 291
    :cond_9
    if-eqz v10, :cond_a

    .line 292
    new-instance v0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v12

    move-object v4, v14

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/IBluetoothGatt;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V

    .line 294
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->startRegistration()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 295
    .end local v0    # "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    goto :goto_3

    .line 297
    :cond_a
    :try_start_4
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 298
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v5, v8, Landroid/bluetooth/le/BluetoothLeScanner;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v1, v12

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    move-object v4, v14

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetoothGatt;->startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 300
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 303
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    nop

    .line 305
    .end local v12    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :goto_3
    :try_start_5
    monitor-exit v11

    .line 306
    return v13

    .line 301
    .restart local v12    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_1
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    monitor-exit v11

    return v7

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :goto_4
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 252
    .end local v14    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .restart local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "settings is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist cleanup()V
    .locals 1

    .line 405
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 406
    return-void
.end method

.method public whitelist flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .line 364
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 365
    if-eqz p1, :cond_1

    .line 368
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    .line 370
    .local v1, "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    if-nez v1, :cond_0

    .line 371
    monitor-exit v0

    return-void

    .line 373
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->flushPendingBatchResults()V

    .line 374
    .end local v1    # "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 366
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/app/PendingIntent;)I
    .locals 7
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/app/PendingIntent;",
            ")I"
        }
    .end annotation

    .line 192
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    nop

    .line 193
    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    move-object v3, v0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 192
    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method public whitelist startScan(Landroid/bluetooth/le/ScanCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .line 134
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 135
    return-void
.end method

.method public whitelist startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .locals 6
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .line 160
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;)I

    .line 161
    return-void
.end method

.method public whitelist startScanFromSource(Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V
    .locals 2
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 215
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScanFromSource(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V

    .line 216
    return-void
.end method

.method public whitelist startScanFromSource(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V
    .locals 6
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/os/WorkSource;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .line 240
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;)I

    .line 241
    return-void
.end method

.method public whitelist startTruncatedScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .locals 8
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/TruncatedFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 390
    .local p1, "truncatedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/TruncatedFilter;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 391
    .local v0, "filterSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v1, "scanFilters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/TruncatedFilter;

    .line 393
    .local v3, "filter":Landroid/bluetooth/le/TruncatedFilter;
    invoke-virtual {v3}, Landroid/bluetooth/le/TruncatedFilter;->getFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v3    # "filter":Landroid/bluetooth/le/TruncatedFilter;
    goto :goto_0

    .line 395
    :cond_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;)I

    .line 396
    return-void
.end method

.method public whitelist stopScan(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 341
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 344
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    .line 345
    .local v0, "gatt":Landroid/bluetooth/IBluetoothGatt;
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 346
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2, v1}, Landroid/bluetooth/IBluetoothGatt;->stopScanForIntent(Landroid/app/PendingIntent;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 347
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    nop

    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_0

    .line 348
    .end local v0    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v0

    .line 350
    :goto_0
    return-void
.end method

.method public whitelist stopScan(Landroid/bluetooth/le/ScanCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .line 318
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 319
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    .line 321
    .local v1, "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    if-nez v1, :cond_0

    .line 322
    const-string v2, "BluetoothLeScanner"

    const-string v3, "could not find callback wrapper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    monitor-exit v0

    return-void

    .line 325
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->stopLeScan()V

    .line 326
    .end local v1    # "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    monitor-exit v0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
