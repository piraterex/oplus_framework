.class Landroid/bluetooth/BluetoothAdapter$6;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 4097
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothServiceDown()V
    .locals 6

    .line 4121
    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "onBluetoothServiceDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4125
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfputsService(Landroid/bluetooth/IBluetooth;)V

    .line 4126
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsProxyServiceStateCallbacks()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4128
    .local v2, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v2, :cond_0

    .line 4129
    :try_start_1
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V

    goto :goto_1

    .line 4131
    :cond_0
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "onBluetoothServiceDown: cb is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4135
    :goto_1
    goto :goto_2

    .line 4133
    :catch_0
    move-exception v3

    .line 4134
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4136
    .end local v2    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 4137
    :cond_1
    monitor-exit v0

    .line 4138
    return-void

    .line 4137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 6
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;

    .line 4100
    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothServiceUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4104
    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfputsService(Landroid/bluetooth/IBluetooth;)V

    .line 4105
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsProxyServiceStateCallbacks()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4107
    .local v2, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v2, :cond_0

    .line 4108
    :try_start_1
    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V

    goto :goto_1

    .line 4110
    :cond_0
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "onBluetoothServiceUp: cb is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4114
    :goto_1
    goto :goto_2

    .line 4112
    :catch_0
    move-exception v3

    .line 4113
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4115
    .end local v2    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 4116
    :cond_1
    monitor-exit v0

    .line 4117
    return-void

    .line 4116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist onBrEdrDown()V
    .locals 6

    .line 4141
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetVDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4142
    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "onBrEdrDown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4145
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4146
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsProxyServiceStateCallbacks()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4148
    .local v2, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v2, :cond_1

    .line 4149
    :try_start_1
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManagerCallback;->onBrEdrDown()V

    goto :goto_1

    .line 4151
    :cond_1
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "onBrEdrDown: cb is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4155
    :goto_1
    goto :goto_2

    .line 4153
    :catch_0
    move-exception v3

    .line 4154
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4156
    .end local v2    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 4157
    :cond_2
    monitor-exit v0

    .line 4158
    return-void

    .line 4157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
