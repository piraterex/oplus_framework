.class public final Landroid/os/CombinedVibration$ParallelCombination;
.super Ljava/lang/Object;
.source "CombinedVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParallelCombination"
.end annotation


# instance fields
.field private final blacklist mEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/CombinedVibration$ParallelCombination;->mEffects:Landroid/util/SparseArray;

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;
    .locals 1
    .param p1, "vibratorId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 156
    iget-object v0, p0, Landroid/os/CombinedVibration$ParallelCombination;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    return-object p0
.end method

.method public whitelist combine()Landroid/os/CombinedVibration;
    .locals 2

    .line 172
    iget-object v0, p0, Landroid/os/CombinedVibration$ParallelCombination;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Landroid/os/CombinedVibration$Stereo;

    iget-object v1, p0, Landroid/os/CombinedVibration$ParallelCombination;->mEffects:Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/os/CombinedVibration$Stereo;-><init>(Landroid/util/SparseArray;)V

    .line 177
    .local v0, "combined":Landroid/os/CombinedVibration;
    invoke-virtual {v0}, Landroid/os/CombinedVibration;->validate()V

    .line 178
    return-object v0

    .line 173
    .end local v0    # "combined":Landroid/os/CombinedVibration;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Combination must have at least one element to combine."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
