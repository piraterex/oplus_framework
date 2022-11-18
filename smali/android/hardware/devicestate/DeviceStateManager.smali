.class public final Landroid/hardware/devicestate/DeviceStateManager;
.super Ljava/lang/Object;
.source "DeviceStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;,
        Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    }
.end annotation


# static fields
.field public static final blacklist DEVICE_STATE_CLOSE:I = 0x0

.field public static final blacklist DEVICE_STATE_CLOSE_ALL:I = 0x64

.field public static final blacklist DEVICE_STATE_HALFOPEN:I = 0x2

.field public static final blacklist DEVICE_STATE_OPEN:I = 0x3

.field public static final blacklist DEVICE_STATE_OPEN_ALL:I = 0x63

.field public static final blacklist DEVICE_STATE_TENT:I = 0x1

.field public static final blacklist INVALID_DEVICE_STATE:I = -0x1

.field public static final blacklist MAXIMUM_DEVICE_STATE:I = 0xff

.field public static final blacklist MINIMUM_DEVICE_STATE:I


# instance fields
.field private final blacklist mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getInstance()Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    move-result-object v0

    .line 69
    .local v0, "global":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    if-eqz v0, :cond_0

    .line 73
    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    .line 74
    return-void

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get instance of global device state manager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist isFoldedDeviceState(I)Z
    .locals 2
    .param p0, "deviceState"    # I

    .line 79
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/16 v1, 0x64

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist cancelStateRequest()V
    .locals 1

    .line 132
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->cancelStateRequest()V

    .line 133
    return-void
.end method

.method public blacklist getSupportedStates()[I
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getSupportedStates()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 145
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p2, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V

    .line 146
    return-void
.end method

.method public blacklist requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V
    .locals 1
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    .line 117
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 118
    return-void
.end method

.method public blacklist unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 153
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->unregisterDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 154
    return-void
.end method
