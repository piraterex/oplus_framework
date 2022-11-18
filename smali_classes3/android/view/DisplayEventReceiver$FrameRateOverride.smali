.class public Landroid/view/DisplayEventReceiver$FrameRateOverride;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameRateOverride"
.end annotation


# instance fields
.field public final blacklist frameRateHz:F

.field public final blacklist uid:I


# direct methods
.method public constructor blacklist <init>(IF)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "frameRateHz"    # F

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput p1, p0, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    .line 248
    iput p2, p0, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 249
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frameRateHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
