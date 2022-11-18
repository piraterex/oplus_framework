.class public abstract Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LockoutResetCallback"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onLockoutReset(I)V
    .locals 0
    .param p1, "sensorId"    # I

    .line 522
    return-void
.end method
