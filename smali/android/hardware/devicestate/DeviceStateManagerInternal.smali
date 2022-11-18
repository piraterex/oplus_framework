.class public abstract Landroid/hardware/devicestate/DeviceStateManagerInternal;
.super Ljava/lang/Object;
.source "DeviceStateManagerInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist enableDeviceStateAfterBoot(Z)V
.end method

.method public abstract blacklist getSupportedStateIdentifiers()[I
.end method

.method public abstract blacklist notifyKeyguardShowOrSleep(Z)V
.end method
