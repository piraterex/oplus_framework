.class public interface abstract Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatteryCallback"
.end annotation


# virtual methods
.method public abstract greylist-max-o batteryNeedsCpuUpdate()V
.end method

.method public abstract greylist-max-o batteryPowerChanged(Z)V
.end method

.method public abstract greylist-max-o batterySendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract greylist-max-o batteryStatsReset()V
.end method
