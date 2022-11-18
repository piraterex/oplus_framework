.class public final Landroid/hardware/input/InputDeviceBatteryState;
.super Landroid/hardware/BatteryState;
.source "InputDeviceBatteryState.java"


# static fields
.field private static final blacklist NULL_BATTERY_CAPACITY:F = NaNf


# instance fields
.field private final blacklist mDeviceId:I

.field private final blacklist mHasBattery:Z

.field private final blacklist mInputManager:Landroid/hardware/input/InputManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/InputManager;IZ)V
    .locals 0
    .param p1, "inputManager"    # Landroid/hardware/input/InputManager;
    .param p2, "deviceId"    # I
    .param p3, "hasBattery"    # Z

    .line 36
    invoke-direct {p0}, Landroid/hardware/BatteryState;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/hardware/input/InputDeviceBatteryState;->mInputManager:Landroid/hardware/input/InputManager;

    .line 38
    iput p2, p0, Landroid/hardware/input/InputDeviceBatteryState;->mDeviceId:I

    .line 39
    iput-boolean p3, p0, Landroid/hardware/input/InputDeviceBatteryState;->mHasBattery:Z

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist getCapacity()F
    .locals 3

    .line 57
    iget-boolean v0, p0, Landroid/hardware/input/InputDeviceBatteryState;->mHasBattery:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Landroid/hardware/input/InputDeviceBatteryState;->mInputManager:Landroid/hardware/input/InputManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceBatteryState;->mDeviceId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getBatteryCapacity(I)I

    move-result v0

    .line 59
    .local v0, "capacity":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 60
    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    return v1

    .line 63
    .end local v0    # "capacity":I
    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public whitelist getStatus()I
    .locals 2

    .line 49
    iget-boolean v0, p0, Landroid/hardware/input/InputDeviceBatteryState;->mHasBattery:Z

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Landroid/hardware/input/InputDeviceBatteryState;->mInputManager:Landroid/hardware/input/InputManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceBatteryState;->mDeviceId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getBatteryStatus(I)I

    move-result v0

    return v0
.end method

.method public whitelist isPresent()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Landroid/hardware/input/InputDeviceBatteryState;->mHasBattery:Z

    return v0
.end method
