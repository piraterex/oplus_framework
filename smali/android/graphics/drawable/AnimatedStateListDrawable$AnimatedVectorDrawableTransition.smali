.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;
.super Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableTransition"
.end annotation


# instance fields
.field private final greylist-max-o mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final greylist-max-o mHasReversibleFlag:Z

.field private final greylist-max-o mReversed:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;ZZ)V
    .locals 1
    .param p1, "avd"    # Landroid/graphics/drawable/AnimatedVectorDrawable;
    .param p2, "reversed"    # Z
    .param p3, "hasReversibleFlag"    # Z

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$Transition-IA;)V

    .line 333
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 334
    iput-boolean p2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mReversed:Z

    .line 335
    iput-boolean p3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mHasReversibleFlag:Z

    .line 336
    return-void
.end method


# virtual methods
.method public greylist-max-o canReverse()Z
    .locals 1

    .line 343
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mHasReversibleFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o reverse()V
    .locals 2

    .line 357
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reverse()V

    goto :goto_0

    .line 360
    :cond_0
    invoke-static {}, Landroid/graphics/drawable/AnimatedStateListDrawable;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t reverse, either the reversible is set to false, or the AnimatedVectorDrawable can\'t reverse"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return-void
.end method

.method public greylist-max-o start()V
    .locals 1

    .line 348
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mReversed:Z

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->reverse()V

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 353
    :goto_0
    return-void
.end method

.method public greylist-max-o stop()V
    .locals 1

    .line 367
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 368
    return-void
.end method
