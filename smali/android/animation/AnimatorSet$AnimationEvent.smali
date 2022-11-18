.class Landroid/animation/AnimatorSet$AnimationEvent;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationEvent"
.end annotation


# static fields
.field static final greylist-max-o ANIMATION_DELAY_ENDED:I = 0x1

.field static final greylist-max-o ANIMATION_END:I = 0x2

.field static final greylist-max-o ANIMATION_START:I


# instance fields
.field final greylist-max-o mEvent:I

.field final greylist-max-o mNode:Landroid/animation/AnimatorSet$Node;


# direct methods
.method constructor greylist-max-o <init>(Landroid/animation/AnimatorSet$Node;I)V
    .locals 0
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;
    .param p2, "event"    # I

    .line 1893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1894
    iput-object p1, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 1895
    iput p2, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 1896
    return-void
.end method


# virtual methods
.method greylist-max-o getTime()J
    .locals 4

    .line 1899
    iget v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v0, :cond_0

    .line 1900
    iget-object v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v0, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    return-wide v0

    .line 1901
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1902
    iget-object v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v0, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1903
    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v0, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 1902
    :goto_0
    return-wide v2

    .line 1905
    :cond_2
    iget-object v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v0, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 1910
    iget v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "start"

    goto :goto_0

    .line 1911
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "delay ended"

    goto :goto_0

    :cond_1
    const-string v0, "end"

    :goto_0
    nop

    .line 1912
    .local v0, "eventStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
