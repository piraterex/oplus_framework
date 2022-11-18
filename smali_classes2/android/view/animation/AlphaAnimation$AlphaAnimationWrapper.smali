.class Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper;
.super Ljava/lang/Object;
.source "AlphaAnimation.java"

# interfaces
.implements Landroid/view/animation/IAlphaAnimationWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/AlphaAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaAnimationWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/animation/AlphaAnimation;


# direct methods
.method private constructor blacklist <init>(Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    .line 102
    iput-object p1, p0, Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper;->this$0:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/animation/AlphaAnimation;Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper;-><init>(Landroid/view/animation/AlphaAnimation;)V

    return-void
.end method


# virtual methods
.method public blacklist getFromAlpha()F
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper;->this$0:Landroid/view/animation/AlphaAnimation;

    invoke-static {v0}, Landroid/view/animation/AlphaAnimation;->-$$Nest$fgetmFromAlpha(Landroid/view/animation/AlphaAnimation;)F

    move-result v0

    return v0
.end method

.method public blacklist getToAlpha()F
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper;->this$0:Landroid/view/animation/AlphaAnimation;

    invoke-static {v0}, Landroid/view/animation/AlphaAnimation;->-$$Nest$fgetmToAlpha(Landroid/view/animation/AlphaAnimation;)F

    move-result v0

    return v0
.end method

.method public blacklist setFromAlpha(F)V
    .locals 1
    .param p1, "fromAlpha"    # F

    .line 110
    iget-object v0, p0, Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper;->this$0:Landroid/view/animation/AlphaAnimation;

    invoke-static {v0, p1}, Landroid/view/animation/AlphaAnimation;->-$$Nest$fputmFromAlpha(Landroid/view/animation/AlphaAnimation;F)V

    .line 111
    return-void
.end method
