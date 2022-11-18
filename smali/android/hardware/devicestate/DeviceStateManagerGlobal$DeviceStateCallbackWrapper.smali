.class final Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceStateCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;)Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 334
    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 335
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$notifyBaseStateChanged$1$android-hardware-devicestate-DeviceStateManagerGlobal$DeviceStateCallbackWrapper(I)V
    .locals 1
    .param p1, "newBaseState"    # I

    .line 343
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;->onBaseStateChanged(I)V

    return-void
.end method

.method synthetic blacklist lambda$notifyStateChanged$2$android-hardware-devicestate-DeviceStateManagerGlobal$DeviceStateCallbackWrapper(I)V
    .locals 1
    .param p1, "newDeviceState"    # I

    .line 347
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;->onStateChanged(I)V

    return-void
.end method

.method synthetic blacklist lambda$notifySupportedStatesChanged$0$android-hardware-devicestate-DeviceStateManagerGlobal$DeviceStateCallbackWrapper([I)V
    .locals 1
    .param p1, "newSupportedStates"    # [I

    .line 339
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;->onSupportedStatesChanged([I)V

    return-void
.end method

.method blacklist notifyBaseStateChanged(I)V
    .locals 2
    .param p1, "newBaseState"    # I

    .line 343
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method

.method blacklist notifyStateChanged(I)V
    .locals 2
    .param p1, "newDeviceState"    # I

    .line 347
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method blacklist notifySupportedStatesChanged([I)V
    .locals 2
    .param p1, "newSupportedStates"    # [I

    .line 338
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 340
    return-void
.end method
