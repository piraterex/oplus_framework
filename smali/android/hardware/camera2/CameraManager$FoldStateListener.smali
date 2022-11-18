.class final Landroid/hardware/camera2/CameraManager$FoldStateListener;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FoldStateListener"
.end annotation


# instance fields
.field private final blacklist mFoldedDeviceStates:[I

.field final synthetic blacklist this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/CameraManager;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .line 174
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070064

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    .line 177
    return-void
.end method

.method private blacklist handleStateChange(I)V
    .locals 6
    .param p1, "state"    # I

    .line 180
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 181
    .local v0, "folded":Z
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v1}, Landroid/hardware/camera2/CameraManager;->-$$Nest$fgetmLock(Landroid/hardware/camera2/CameraManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v2, v0}, Landroid/hardware/camera2/CameraManager;->-$$Nest$fputmFoldedDeviceState(Landroid/hardware/camera2/CameraManager;Z)V

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v2, "invalidListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;>;"
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->-$$Nest$fgetmDeviceStateListeners(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 185
    .local v4, "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    .line 186
    .local v5, "callback":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    if-eqz v5, :cond_0

    .line 187
    invoke-interface {v5, v0}, Landroid/hardware/camera2/CameraManager$DeviceStateListener;->onDeviceStateChanged(Z)V

    goto :goto_1

    .line 189
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v4    # "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;"
    .end local v5    # "callback":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    :goto_1
    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 193
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->-$$Nest$fgetmDeviceStateListeners(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 195
    .end local v2    # "invalidListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;>;"
    :cond_2
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public final blacklist onBaseStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 200
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(I)V

    .line 201
    return-void
.end method

.method public final blacklist onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 205
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(I)V

    .line 206
    return-void
.end method
