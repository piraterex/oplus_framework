.class Landroid/bluetooth/BluetoothHapClient$1;
.super Landroid/bluetooth/IBluetoothHapClientCallback$Stub;
.source "BluetoothHapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothHapClient;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothHapClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHapClient;

    .line 235
    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHapClientCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onPresetInfoChanged$3(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothHapClient$Callback;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetInfoList"    # Ljava/util/List;
    .param p3, "statusCode"    # I

    .line 279
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient$Callback;->onPresetInfoChanged(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onPresetSelected$0(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothHapClient$Callback;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I
    .param p3, "reasonCode"    # I

    .line 244
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient$Callback;->onPresetSelected(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic blacklist lambda$onPresetSelectionFailed$1(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothHapClient$Callback;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .line 255
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$Callback;->onPresetSelectionFailed(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onPresetSelectionForGroupFailed$2(Landroid/bluetooth/BluetoothHapClient$Callback;II)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothHapClient$Callback;
    .param p1, "hapGroupId"    # I
    .param p2, "statusCode"    # I

    .line 266
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$Callback;->onPresetSelectionForGroupFailed(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onSetPresetNameFailed$4(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothHapClient$Callback;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .line 290
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$Callback;->onSetPresetNameFailed(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSetPresetNameForGroupFailed$5(Landroid/bluetooth/BluetoothHapClient$Callback;II)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothHapClient$Callback;
    .param p1, "hapGroupId"    # I
    .param p2, "status"    # I

    .line 300
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$Callback;->onSetPresetNameForGroupFailed(II)V

    return-void
.end method


# virtual methods
.method public blacklist onPresetInfoChanged(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHapPresetInfo;",
            ">;I)V"
        }
    .end annotation

    .line 273
    .local p2, "presetInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHapPresetInfo;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 275
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

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

    .line 276
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHapClient$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHapClient$Callback;

    .line 277
    .local v2, "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 278
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 280
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHapClient$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 281
    :cond_0
    return-void
.end method

.method public blacklist onPresetSelected(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I
    .param p3, "reasonCode"    # I

    .line 239
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 241
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

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

    .line 242
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHapClient$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHapClient$Callback;

    .line 243
    .local v2, "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 244
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 245
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHapClient$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method public blacklist onPresetSelectionFailed(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .line 250
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 252
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

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

    .line 253
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHapClient$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHapClient$Callback;

    .line 254
    .local v2, "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 255
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 256
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHapClient$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method public blacklist onPresetSelectionForGroupFailed(II)V
    .locals 5
    .param p1, "hapGroupId"    # I
    .param p2, "statusCode"    # I

    .line 262
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

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

    .line 263
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHapClient$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHapClient$Callback;

    .line 264
    .local v2, "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 265
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 267
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHapClient$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 268
    :cond_0
    return-void
.end method

.method public blacklist onSetPresetNameFailed(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .line 285
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 287
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

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

    .line 288
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHapClient$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHapClient$Callback;

    .line 289
    .local v2, "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 290
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 291
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHapClient$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method public blacklist onSetPresetNameForGroupFailed(II)V
    .locals 5
    .param p1, "hapGroupId"    # I
    .param p2, "status"    # I

    .line 297
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

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

    .line 298
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHapClient$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHapClient$Callback;

    .line 299
    .local v2, "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 300
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothHapClient$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 301
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHapClient$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method
