.class public interface abstract Landroid/os/ISystemVibratorExt;
.super Ljava/lang/Object;
.source "ISystemVibratorExt.java"


# virtual methods
.method public blacklist convertToLinearVibration(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/os/IBinder;Landroid/os/VibrationAttributes;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist doVibrate(ILjava/lang/String;Landroid/os/VibrationEffect;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVibratorStatus()I
    .locals 1

    .line 40
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getVibratorTouchStyle()I
    .locals 1

    .line 47
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    return-void
.end method

.method public blacklist linearMotorVibrate(ILjava/lang/String;[I[JIILjava/lang/String;Landroid/os/VibrationAttributes;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "waveformIds"    # [I
    .param p4, "timings"    # [J
    .param p5, "strength"    # I
    .param p6, "repeat"    # I
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "attributes"    # Landroid/os/VibrationAttributes;
    .param p9, "token"    # Landroid/os/IBinder;

    .line 37
    return-void
.end method

.method public blacklist setVibratorStrength(I)V
    .locals 0
    .param p1, "strength"    # I

    .line 44
    return-void
.end method

.method public blacklist setVibratorTouchStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .line 51
    return-void
.end method
