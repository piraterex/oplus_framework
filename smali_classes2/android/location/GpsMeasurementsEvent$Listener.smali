.class public interface abstract Landroid/location/GpsMeasurementsEvent$Listener;
.super Ljava/lang/Object;
.source "GpsMeasurementsEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsMeasurementsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract whitelist onGpsMeasurementsReceived(Landroid/location/GpsMeasurementsEvent;)V
.end method

.method public abstract whitelist onStatusChanged(I)V
.end method
