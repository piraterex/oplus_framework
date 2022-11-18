.class final Landroid/os/VibrationEffect$AmplitudeVibrationParameter;
.super Landroid/os/VibrationEffect$VibrationParameter;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmplitudeVibrationParameter"
.end annotation


# instance fields
.field public final blacklist amplitude:F


# direct methods
.method constructor blacklist <init>(F)V
    .locals 2
    .param p1, "amplitude"    # F

    .line 1445
    invoke-direct {p0}, Landroid/os/VibrationEffect$VibrationParameter;-><init>()V

    .line 1446
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Amplitude must be within [0,1]"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1448
    iput p1, p0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;->amplitude:F

    .line 1449
    return-void
.end method
