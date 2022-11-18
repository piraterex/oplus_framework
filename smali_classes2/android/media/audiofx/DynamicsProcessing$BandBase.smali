.class public Landroid/media/audiofx/DynamicsProcessing$BandBase;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandBase"
.end annotation


# instance fields
.field private greylist-max-o mCutoffFrequency:F

.field private greylist-max-o mEnabled:Z


# direct methods
.method public constructor whitelist <init>(ZF)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "cutoffFrequency"    # F

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mEnabled:Z

    .line 414
    iput p2, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mCutoffFrequency:F

    .line 415
    return-void
.end method


# virtual methods
.method public whitelist getCutoffFrequency()F
    .locals 1

    .line 445
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mCutoffFrequency:F

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mEnabled:Z

    return v0
.end method

.method public whitelist setCutoffFrequency(F)V
    .locals 0
    .param p1, "frequency"    # F

    .line 456
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mCutoffFrequency:F

    .line 457
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 437
    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mEnabled:Z

    .line 438
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, " Enabled: %b\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mCutoffFrequency:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, " CutoffFrequency: %f\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
