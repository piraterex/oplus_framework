.class public abstract Landroid/hardware/SensorManager$DynamicSensorCallback;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DynamicSensorCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDynamicSensorConnected(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 998
    return-void
.end method

.method public whitelist onDynamicSensorDisconnected(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 1005
    return-void
.end method
