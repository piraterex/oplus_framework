.class Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;
.super Ljava/lang/Object;
.source "RippleAnimationSession.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleAnimationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorListener"
.end annotation


# instance fields
.field private final blacklist mSession:Landroid/graphics/drawable/RippleAnimationSession;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/RippleAnimationSession;)V
    .locals 0
    .param p1, "session"    # Landroid/graphics/drawable/RippleAnimationSession;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;->mSession:Landroid/graphics/drawable/RippleAnimationSession;

    .line 280
    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 295
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 289
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;->mSession:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-static {v0, p1}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$monAnimationEnd(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/Animator;)V

    .line 290
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 300
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 285
    return-void
.end method
