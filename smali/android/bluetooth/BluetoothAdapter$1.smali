.class Landroid/bluetooth/BluetoothAdapter$1;
.super Landroid/bluetooth/IBluetoothMetadataListener$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;

    .line 854
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothMetadataListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onMetadataChanged$0(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0
    .param p0, "listener"    # Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "key"    # I
    .param p3, "value"    # [B

    .line 866
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;->onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 867
    return-void
.end method


# virtual methods
.method public blacklist onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "key"    # I
    .param p3, "value"    # [B

    .line 857
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 858
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmMetadataListeners(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 859
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmMetadataListeners(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmMetadataListeners(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    .line 861
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 862
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 863
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    .line 864
    .local v4, "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/Executor;

    .line 865
    .local v5, "executor":Ljava/util/concurrent/Executor;
    new-instance v6, Landroid/bluetooth/BluetoothAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter$1$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/bluetooth/BluetoothDevice;I[B)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 868
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;"
    .end local v4    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 870
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;>;"
    :cond_0
    monitor-exit v0

    .line 871
    return-void

    .line 870
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
