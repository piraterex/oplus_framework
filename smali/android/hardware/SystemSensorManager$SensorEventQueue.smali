.class final Landroid/hardware/SystemSensorManager$SensorEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventQueue"
.end annotation


# instance fields
.field private final greylist-max-o mListener:Landroid/hardware/SensorEventListener;

.field private final greylist-max-o mSensorsEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 873
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 870
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    .line 874
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    .line 875
    return-void
.end method


# virtual methods
.method public greylist-max-o addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 879
    new-instance v0, Landroid/hardware/SensorEvent;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmTargetSdkLevel(Landroid/hardware/SystemSensorManager;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    .line 881
    .local v0, "t":Landroid/hardware/SensorEvent;
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v1

    .line 882
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 883
    monitor-exit v1

    .line 884
    return-void

    .line 883
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected greylist-max-o dispatchAdditionalInfoEvent(III[F[I)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "serial"    # I
    .param p4, "floatValues"    # [F
    .param p5, "intValues"    # [I

    .line 995
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    instance-of v0, v0, Landroid/hardware/SensorEventCallback;

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 997
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    .line 999
    return-void

    .line 1001
    :cond_0
    new-instance v7, Landroid/hardware/SensorAdditionalInfo;

    move-object v1, v7

    move-object v2, v0

    move v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    .line 1003
    .local v1, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    check-cast v2, Landroid/hardware/SensorEventCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorEventCallback;->onSensorAdditionalInfo(Landroid/hardware/SensorAdditionalInfo;)V

    .line 1005
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    .end local v1    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_1
    return-void
.end method

.method protected greylist-max-o dispatchFlushCompleteEvent(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 979
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    instance-of v0, v0, Landroid/hardware/SensorEventListener2;

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 981
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    .line 983
    return-void

    .line 985
    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    check-cast v1, Landroid/hardware/SensorEventListener2;

    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener2;->onFlushCompleted(Landroid/hardware/Sensor;)V

    .line 987
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    return-void
.end method

.method protected blacklist dispatchSensorEvent(I[FIJI)I
    .locals 18
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "inAccuracy"    # I
    .param p4, "timestamp"    # J
    .param p6, "cmdArgs"    # I

    .line 912
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/hardware/Sensor;

    .line 913
    .local v11, "sensor":Landroid/hardware/Sensor;
    if-nez v11, :cond_0

    .line 919
    const/4 v0, -0x1

    return v0

    .line 923
    :cond_0
    const/4 v4, 0x0

    .line 924
    .local v4, "t":Landroid/hardware/SensorEvent;
    iget-object v5, v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v5

    .line 925
    :try_start_0
    iget-object v0, v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, v0

    .line 926
    .end local v4    # "t":Landroid/hardware/SensorEvent;
    .local v12, "t":Landroid/hardware/SensorEvent;
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    if-nez v12, :cond_1

    .line 935
    const/4 v0, -0x2

    return v0

    .line 939
    :cond_1
    iget-object v0, v12, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, v12, Landroid/hardware/SensorEvent;->values:[F

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 940
    move-wide/from16 v13, p4

    iput-wide v13, v12, Landroid/hardware/SensorEvent;->timestamp:J

    .line 941
    move/from16 v15, p3

    iput v15, v12, Landroid/hardware/SensorEvent;->accuracy:I

    .line 942
    iput-object v11, v12, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 945
    iget-object v0, v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 946
    .local v0, "accuracy":I
    iget v4, v12, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v4, :cond_2

    iget v4, v12, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v0, v4, :cond_2

    .line 947
    iget-object v4, v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v5, v12, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 948
    iget-object v4, v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v5, v12, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v6, v12, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v4, v5, v6}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 952
    :cond_2
    iget-object v4, v12, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/16 v5, 0x25

    const/4 v10, 0x1

    if-ne v4, v5, :cond_3

    .line 953
    iget-object v4, v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorDiscontinuityCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 954
    .local v4, "lastCount":I
    const/4 v5, 0x6

    aget v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    .line 955
    .local v5, "curCount":I
    if-ltz v4, :cond_3

    if-eq v4, v5, :cond_3

    .line 956
    iget-object v6, v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorDiscontinuityCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 957
    iput-boolean v10, v12, Landroid/hardware/SensorEvent;->firstEventAfterDiscontinuity:Z

    .line 962
    .end local v4    # "lastCount":I
    .end local v5    # "curCount":I
    :cond_3
    invoke-static {}, Landroid/hardware/SystemSensorManager;->-$$Nest$sfgetmSystemSensorManagerExt()Landroid/hardware/ISystemSensorManagerExt;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    sget-boolean v8, Landroid/hardware/SensorManager;->mInMirage:Z

    iget-object v6, v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v6}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmContext(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    move-result-object v16

    move-object v6, v11

    move-object v7, v12

    move/from16 v9, p6

    move/from16 v17, v10

    move-object/from16 v10, v16

    invoke-interface/range {v4 .. v10}, Landroid/hardware/ISystemSensorManagerExt;->dispatchSensorEventHook(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;ZILandroid/content/Context;)Landroid/hardware/SensorEvent;

    move-result-object v4

    .line 963
    .end local v12    # "t":Landroid/hardware/SensorEvent;
    .local v4, "t":Landroid/hardware/SensorEvent;
    if-nez v4, :cond_4

    .line 964
    const/4 v5, -0x3

    return v5

    .line 968
    :cond_4
    iget-object v5, v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v5, v4}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 971
    return v17

    .line 926
    .end local v0    # "accuracy":I
    .end local v4    # "t":Landroid/hardware/SensorEvent;
    .restart local v12    # "t":Landroid/hardware/SensorEvent;
    :catchall_0
    move-exception v0

    move/from16 v15, p3

    move-wide/from16 v13, p4

    move-object v4, v12

    goto :goto_0

    .end local v12    # "t":Landroid/hardware/SensorEvent;
    .restart local v4    # "t":Landroid/hardware/SensorEvent;
    :catchall_1
    move-exception v0

    move/from16 v15, p3

    move-wide/from16 v13, p4

    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method protected greylist-max-o dispatchSensorEvent(I[FIJ)V
    .locals 7
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "inAccuracy"    # I
    .param p4, "timestamp"    # J

    .line 900
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispatchSensorEvent(I[FIJI)I

    .line 901
    return-void
.end method

.method protected blacklist getListener()Ljava/lang/String;
    .locals 2

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorEventQueue_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 888
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v0

    .line 889
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 890
    monitor-exit v0

    .line 891
    return-void

    .line 890
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
