.class Landroid/bluetooth/BluetoothVolumeControl$1;
.super Landroid/bluetooth/IBluetoothVolumeControlCallback$Stub;
.source "BluetoothVolumeControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothVolumeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothVolumeControl;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothVolumeControl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothVolumeControl;

    .line 96
    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$1;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothVolumeControlCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onVolumeOffsetChanged$0(Landroid/bluetooth/BluetoothVolumeControl$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothVolumeControl$Callback;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volumeOffset"    # I

    .line 104
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl$Callback;->onVolumeOffsetChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method


# virtual methods
.method public blacklist onVolumeOffsetChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volumeOffset"    # I

    .line 99
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$1;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 101
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$1;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothVolumeControl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothVolumeControl$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothVolumeControl$Callback;

    .line 103
    .local v2, "callback":Landroid/bluetooth/BluetoothVolumeControl$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 104
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothVolumeControl$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl$1$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothVolumeControl$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothVolumeControl$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothVolumeControl$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method
