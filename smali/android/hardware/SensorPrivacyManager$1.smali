.class Landroid/hardware/SensorPrivacyManager$1;
.super Landroid/hardware/ISensorPrivacyListener$Stub;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/SensorPrivacyManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/SensorPrivacyManager;

    .line 311
    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSensorPrivacyChanged$0(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;IIZ)V
    .locals 2
    .param p0, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z

    .line 317
    new-instance v0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;-><init>(IIZLandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams-IA;)V

    .line 318
    invoke-interface {p0, v0}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V

    .line 317
    return-void
.end method


# virtual methods
.method public blacklist onSensorPrivacyChanged(IIZ)V
    .locals 5
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z

    .line 314
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmLock(Landroid/hardware/SensorPrivacyManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 316
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 317
    .local v2, "listener":Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v3}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;IIZ)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 315
    .end local v2    # "listener":Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
