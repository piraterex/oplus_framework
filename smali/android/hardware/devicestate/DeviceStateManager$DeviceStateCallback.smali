.class public interface abstract Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
.super Ljava/lang/Object;
.source "DeviceStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceStateCallback"
.end annotation


# virtual methods
.method public blacklist onBaseStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 183
    return-void
.end method

.method public abstract blacklist onStateChanged(I)V
.end method

.method public blacklist onSupportedStatesChanged([I)V
    .locals 0
    .param p1, "supportedStates"    # [I

    .line 168
    return-void
.end method
