.class public abstract Landroid/location/GnssStatus$Callback;
.super Ljava/lang/Object;
.source "GnssStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFirstFix(I)V
    .locals 0
    .param p1, "ttffMillis"    # I

    .line 102
    return-void
.end method

.method public whitelist onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 0
    .param p1, "status"    # Landroid/location/GnssStatus;

    .line 110
    return-void
.end method

.method public whitelist onStarted()V
    .locals 0

    .line 88
    return-void
.end method

.method public whitelist onStopped()V
    .locals 0

    .line 94
    return-void
.end method
