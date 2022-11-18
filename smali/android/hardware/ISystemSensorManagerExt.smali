.class public interface abstract Landroid/hardware/ISystemSensorManagerExt;
.super Ljava/lang/Object;
.source "ISystemSensorManagerExt.java"


# virtual methods
.method public blacklist dispatchEventDataAdjust(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Landroid/hardware/SensorEvent;
    .locals 2
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "events"    # Landroid/hardware/SensorEvent;

    .line 18
    new-instance v0, Landroid/hardware/SensorEvent;

    iget-object v1, p3, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    .line 19
    .local v0, "defaultEvent":Landroid/hardware/SensorEvent;
    return-object v0
.end method

.method public blacklist dispatchSensorEventEnd(II[FIIILjava/lang/String;)V
    .locals 0
    .param p1, "res"    # I
    .param p2, "handle"    # I
    .param p3, "values"    # [F
    .param p4, "accuracy"    # I
    .param p5, "type"    # I
    .param p6, "cmdArgs"    # I
    .param p7, "client"    # Ljava/lang/String;

    .line 29
    return-void
.end method

.method public blacklist dispatchSensorEventHook(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;ZILandroid/content/Context;)Landroid/hardware/SensorEvent;
    .locals 0
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "events"    # Landroid/hardware/SensorEvent;
    .param p4, "inMirage"    # Z
    .param p5, "cmdArgs"    # I
    .param p6, "context"    # Landroid/content/Context;

    .line 24
    return-object p3
.end method

.method public blacklist registerListenerImplHook(Landroid/content/Context;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/SensorEventListener;
    .param p3, "sensor"    # Landroid/hardware/Sensor;
    .param p4, "delayUs"    # I

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterListenerImplHook(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 14
    const/4 v0, 0x0

    return v0
.end method
