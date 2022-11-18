.class public final synthetic Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;

    iput-boolean p2, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;

    iget-boolean v1, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;->lambda$onVibrating$0$android-hardware-input-InputDeviceVibrator$OnVibratorStateChangedListenerDelegate(Z)V

    return-void
.end method
