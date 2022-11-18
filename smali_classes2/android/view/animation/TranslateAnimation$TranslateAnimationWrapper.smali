.class Landroid/view/animation/TranslateAnimation$TranslateAnimationWrapper;
.super Ljava/lang/Object;
.source "TranslateAnimation.java"

# interfaces
.implements Landroid/view/animation/ITranslateAnimationWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/TranslateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslateAnimationWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/animation/TranslateAnimation;


# direct methods
.method private constructor blacklist <init>(Landroid/view/animation/TranslateAnimation;)V
    .locals 0

    .line 249
    iput-object p1, p0, Landroid/view/animation/TranslateAnimation$TranslateAnimationWrapper;->this$0:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/animation/TranslateAnimation;Landroid/view/animation/TranslateAnimation$TranslateAnimationWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/animation/TranslateAnimation$TranslateAnimationWrapper;-><init>(Landroid/view/animation/TranslateAnimation;)V

    return-void
.end method


# virtual methods
.method public blacklist getFromXValue()F
    .locals 1

    .line 251
    iget-object v0, p0, Landroid/view/animation/TranslateAnimation$TranslateAnimationWrapper;->this$0:Landroid/view/animation/TranslateAnimation;

    iget v0, v0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    return v0
.end method

.method public blacklist getToXValue()F
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/view/animation/TranslateAnimation$TranslateAnimationWrapper;->this$0:Landroid/view/animation/TranslateAnimation;

    iget v0, v0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    return v0
.end method

.method public blacklist setFromXValue(F)V
    .locals 1
    .param p1, "value"    # F

    .line 255
    iget-object v0, p0, Landroid/view/animation/TranslateAnimation$TranslateAnimationWrapper;->this$0:Landroid/view/animation/TranslateAnimation;

    iput p1, v0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 256
    return-void
.end method
