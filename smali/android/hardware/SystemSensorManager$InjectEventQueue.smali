.class final Landroid/hardware/SystemSensorManager$InjectEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InjectEventQueue"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/SystemSensorManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1099
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$InjectEventQueue;->this$0:Landroid/hardware/SystemSensorManager;

    .line 1100
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 1101
    return-void
.end method


# virtual methods
.method protected greylist-max-o addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 1120
    return-void
.end method

.method protected greylist-max-o dispatchFlushCompleteEvent(I)V
    .locals 0
    .param p1, "handle"    # I

    .line 1115
    return-void
.end method

.method protected greylist-max-o dispatchSensorEvent(I[FIJ)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 1110
    return-void
.end method

.method greylist-max-o injectSensorData(I[FIJ)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 1104
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorDataBase(I[FIJ)I

    move-result v0

    return v0
.end method

.method protected greylist-max-o removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 1125
    return-void
.end method
