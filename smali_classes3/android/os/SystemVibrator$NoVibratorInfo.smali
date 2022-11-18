.class public Landroid/os/SystemVibrator$NoVibratorInfo;
.super Landroid/os/VibratorInfo;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoVibratorInfo"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 13

    .line 316
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v12, Landroid/os/VibratorInfo$FrequencyProfile;

    const/high16 v0, 0x7fc00000    # Float.NaN

    const/4 v1, 0x0

    invoke-direct {v12, v0, v0, v0, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(FFF[F)V

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x7fc00000    # Float.NaN

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfile;)V

    .line 330
    return-void
.end method
