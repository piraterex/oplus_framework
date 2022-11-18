.class public abstract Landroid/hardware/input/InputManagerInternal;
.super Ljava/lang/Object;
.source "InputManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
.end method

.method public abstract blacklist getCursorPosition()Landroid/graphics/PointF;
.end method

.method public abstract blacklist getVirtualMousePointerDisplayId()I
.end method

.method public abstract blacklist pilferPointers(Landroid/os/IBinder;)V
.end method

.method public abstract blacklist registerLidSwitchCallback(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
.end method

.method public abstract blacklist setDisplayEligibilityForPointerCapture(IZ)V
.end method

.method public abstract blacklist setDisplayViewports(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract greylist-max-o setInteractive(Z)V
.end method

.method public abstract blacklist setPointerAcceleration(FI)V
.end method

.method public abstract blacklist setPointerIconVisible(ZI)V
.end method

.method public abstract greylist-max-o setPulseGestureEnabled(Z)V
.end method

.method public abstract blacklist setVirtualMousePointerDisplayId(I)Z
.end method

.method public abstract greylist-max-o toggleCapsLock(I)V
.end method

.method public abstract blacklist transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z
.end method

.method public abstract blacklist unregisterLidSwitchCallback(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
.end method
