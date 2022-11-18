.class public abstract Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
.super Ljava/lang/Object;
.source "FingerprintGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/FingerprintGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FingerprintGestureCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGestureDetected(I)V
    .locals 0
    .param p1, "gesture"    # I

    .line 183
    return-void
.end method

.method public whitelist onGestureDetectionAvailabilityChanged(Z)V
    .locals 0
    .param p1, "available"    # Z

    .line 175
    return-void
.end method
