.class final Landroid/hardware/SystemSensorManager$TriggerEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TriggerEventQueue"
.end annotation


# instance fields
.field private final greylist-max-o mListener:Landroid/hardware/TriggerEventListener;

.field private final greylist-max-o mTriggerEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/TriggerEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1014
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 1010
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    .line 1015
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    .line 1016
    return-void
.end method


# virtual methods
.method public greylist-max-o addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 1020
    new-instance v0, Landroid/hardware/TriggerEvent;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmTargetSdkLevel(Landroid/hardware/SystemSensorManager;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/TriggerEvent;-><init>(I)V

    .line 1022
    .local v0, "t":Landroid/hardware/TriggerEvent;
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1023
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1024
    monitor-exit v1

    .line 1025
    return-void

    .line 1024
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected greylist-max-o dispatchFlushCompleteEvent(I)V
    .locals 0
    .param p1, "handle"    # I

    .line 1095
    return-void
.end method

.method protected blacklist dispatchSensorEvent(I[FIJI)I
    .locals 5
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J
    .param p6, "cmdArgs"    # I

    .line 1053
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 1054
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    .line 1060
    const/4 v1, -0x1

    return v1

    .line 1063
    :cond_0
    const/4 v1, 0x0

    .line 1064
    .local v1, "t":Landroid/hardware/TriggerEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1065
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/TriggerEvent;

    move-object v1, v3

    .line 1066
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    if-nez v1, :cond_1

    .line 1068
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Trigger Event is null for Sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v2, -0x2

    return v2

    .line 1078
    :cond_1
    iget-object v2, v1, Landroid/hardware/TriggerEvent;->values:[F

    iget-object v3, v1, Landroid/hardware/TriggerEvent;->values:[F

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1079
    iput-wide p4, v1, Landroid/hardware/TriggerEvent;->timestamp:J

    .line 1080
    iput-object v0, v1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    .line 1084
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    .line 1086
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    invoke-virtual {v2, v1}, Landroid/hardware/TriggerEventListener;->onTrigger(Landroid/hardware/TriggerEvent;)V

    .line 1089
    const/4 v2, 0x1

    return v2

    .line 1066
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected greylist-max-o dispatchSensorEvent(I[FIJ)V
    .locals 7
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 1041
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispatchSensorEvent(I[FIJI)I

    .line 1042
    return-void
.end method

.method protected blacklist getListener()Ljava/lang/String;
    .locals 2

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TriggerEventQueue_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 1029
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1030
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 1031
    monitor-exit v0

    .line 1032
    return-void

    .line 1031
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
