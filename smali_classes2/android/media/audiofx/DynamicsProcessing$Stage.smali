.class public Landroid/media/audiofx/DynamicsProcessing$Stage;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stage"
.end annotation


# instance fields
.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mInUse:Z


# direct methods
.method public constructor whitelist <init>(ZZ)V
    .locals 0
    .param p1, "inUse"    # Z
    .param p2, "enabled"    # Z

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mInUse:Z

    .line 321
    iput-boolean p2, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    .line 322
    return-void
.end method


# virtual methods
.method public whitelist isEnabled()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    return v0
.end method

.method public whitelist isInUse()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mInUse:Z

    return v0
.end method

.method public whitelist setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 336
    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    .line 337
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->isInUse()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, " Stage InUse: %b\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, " Stage Enabled: %b\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
