.class public Landroid/view/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/AnimationUtils$AnimationState;
    }
.end annotation


# static fields
.field private static final greylist-max-o SEQUENTIALLY:I = 0x1

.field private static final greylist-max-o TOGETHER:I

.field private static greylist-max-o sAnimationState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/animation/AnimationUtils$AnimationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Landroid/view/animation/AnimationUtils$1;

    invoke-direct {v0}, Landroid/view/animation/AnimationUtils$1;-><init>()V

    sput-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static greylist createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/animation/AnimationSet;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    .line 169
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 171
    .local v1, "depth":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_a

    :cond_0
    const/4 v2, 0x1

    if-eq v3, v2, :cond_a

    .line 174
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 175
    goto :goto_0

    .line 178
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "name":Ljava/lang/String;
    const-string v4, "set"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    .line 182
    move-object v4, v0

    check-cast v4, Landroid/view/animation/AnimationSet;

    invoke-static {p0, p1, v4, p3}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    goto :goto_1

    .line 183
    :cond_2
    const-string v4, "alpha"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 184
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/AlphaAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    goto :goto_1

    .line 185
    :cond_3
    const-string v4, "scale"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 186
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/ScaleAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    goto :goto_1

    .line 187
    :cond_4
    const-string v4, "rotate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 188
    new-instance v4, Landroid/view/animation/RotateAnimation;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/RotateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    goto :goto_1

    .line 189
    :cond_5
    const-string/jumbo v4, "translate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 190
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/TranslateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    goto :goto_1

    .line 191
    :cond_6
    const-string v4, "cliprect"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 192
    new-instance v4, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    goto :goto_1

    .line 193
    :cond_7
    const-string v4, "extend"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 194
    new-instance v4, Landroid/view/animation/ExtendAnimation;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/ExtendAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    .line 199
    :goto_1
    if-eqz p2, :cond_8

    .line 200
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 202
    .end local v2    # "name":Ljava/lang/String;
    :cond_8
    goto/16 :goto_0

    .line 196
    .restart local v2    # "name":Ljava/lang/String;
    :cond_9
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    .end local v2    # "name":Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method private static greylist-max-o createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    .line 399
    .local v0, "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 401
    .local v1, "depth":I
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_c

    :cond_0
    const/4 v2, 0x1

    if-eq v3, v2, :cond_c

    .line 404
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 405
    goto :goto_0

    .line 408
    :cond_1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 410
    .local v2, "attrs":Landroid/util/AttributeSet;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "name":Ljava/lang/String;
    const-string v5, "linearInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 413
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, v5

    goto/16 :goto_1

    .line 414
    :cond_2
    const-string v5, "accelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 415
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 416
    :cond_3
    const-string v5, "decelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 417
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 418
    :cond_4
    const-string v5, "accelerateDecelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 419
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v0, v5

    goto :goto_1

    .line 420
    :cond_5
    const-string v5, "cycleInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 421
    new-instance v5, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 422
    :cond_6
    const-string v5, "anticipateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 423
    new-instance v5, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 424
    :cond_7
    const-string v5, "overshootInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 425
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 426
    :cond_8
    const-string v5, "anticipateOvershootInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 427
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 428
    :cond_9
    const-string v5, "bounceInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 429
    new-instance v5, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v5}, Landroid/view/animation/BounceInterpolator;-><init>()V

    move-object v0, v5

    goto :goto_1

    .line 430
    :cond_a
    const-string v5, "pathInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 431
    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .line 435
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 433
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_b
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown interpolator name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 436
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    :cond_c
    return-object v0
.end method

.method private static greylist-max-o createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x0

    .line 250
    .local v0, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 252
    .local v1, "depth":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_4

    :cond_0
    const/4 v2, 0x1

    if-eq v3, v2, :cond_4

    .line 255
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 256
    goto :goto_0

    .line 259
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "name":Ljava/lang/String;
    const-string v4, "layoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    new-instance v4, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v4, p0, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    goto :goto_1

    .line 263
    :cond_2
    const-string v4, "gridLayoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 264
    new-instance v4, Landroid/view/animation/GridLayoutAnimationController;

    invoke-direct {v4, p0, p2}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    .line 268
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 266
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown layout animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 270
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method public static whitelist currentAnimationTimeMillis()J
    .locals 5

    .line 115
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    .line 116
    .local v0, "state":Landroid/view/animation/AnimationUtils$AnimationState;
    iget-boolean v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->animationClockLocked:Z

    if-eqz v1, :cond_0

    .line 118
    iget-wide v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->currentVsyncTimeMillis:J

    iget-wide v3, v0, Landroid/view/animation/AnimationUtils$AnimationState;->lastReportedTimeMillis:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    return-wide v1

    .line 121
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->lastReportedTimeMillis:J

    .line 122
    iget-wide v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->lastReportedTimeMillis:J

    return-wide v1
.end method

.method public static whitelist loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 136
    const-string v0, "Can\'t load animation resource ID #0x"

    const/4 v1, 0x0

    .line 138
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 139
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 139
    :cond_0
    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 148
    .local v0, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 149
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v0

    .line 140
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :catch_1
    move-exception v2

    .line 141
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 143
    .restart local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 152
    :cond_1
    throw v0
.end method

.method public static whitelist loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 341
    const-string v0, "Can\'t load animation resource ID #0x"

    const/4 v1, 0x0

    .line 343
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/view/animation/AnimationUtils;->createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 344
    :cond_0
    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v2

    .line 351
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 353
    .local v0, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 354
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v0

    .line 345
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :catch_1
    move-exception v2

    .line 346
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 348
    .restart local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 349
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 357
    :cond_1
    throw v0
.end method

.method public static greylist-max-o loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 371
    const-string v0, "Can\'t load animation resource ID #0x"

    const/4 v1, 0x0

    .line 373
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 374
    invoke-static {p0, p1, v1}, Landroid/view/animation/AnimationUtils;->createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    if-eqz v1, :cond_0

    .line 387
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 374
    :cond_0
    return-object v0

    .line 386
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 383
    .local v0, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 384
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "res":Landroid/content/res/Resources;
    .end local p1    # "theme":Landroid/content/res/Resources$Theme;
    .end local p2    # "id":I
    throw v0

    .line 375
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "res":Landroid/content/res/Resources;
    .restart local p1    # "theme":Landroid/content/res/Resources$Theme;
    .restart local p2    # "id":I
    :catch_1
    move-exception v2

    .line 376
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 378
    .restart local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 379
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "res":Landroid/content/res/Resources;
    .end local p1    # "theme":Landroid/content/res/Resources$Theme;
    .end local p2    # "id":I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "res":Landroid/content/res/Resources;
    .restart local p1    # "theme":Landroid/content/res/Resources$Theme;
    .restart local p2    # "id":I
    :goto_0
    if-eqz v1, :cond_1

    .line 387
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 388
    :cond_1
    throw v0
.end method

.method public static whitelist loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 219
    const-string v0, "Can\'t load animation resource ID #0x"

    const/4 v1, 0x0

    .line 221
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 222
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 222
    :cond_0
    return-object v0

    .line 234
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 231
    .local v0, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 232
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v0

    .line 223
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :catch_1
    move-exception v2

    .line 224
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 226
    .restart local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 227
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 235
    :cond_1
    throw v0
.end method

.method public static blacklist lockAnimationClock(J)V
    .locals 2
    .param p0, "vsyncMillis"    # J

    .line 88
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    .line 89
    .local v0, "state":Landroid/view/animation/AnimationUtils$AnimationState;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->animationClockLocked:Z

    .line 90
    iput-wide p0, v0, Landroid/view/animation/AnimationUtils$AnimationState;->currentVsyncTimeMillis:J

    .line 91
    return-void
.end method

.method public static whitelist makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "fromLeft"    # Z

    .line 283
    if-eqz p1, :cond_0

    .line 284
    const v0, 0x10a0002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_0

    .line 286
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    const v0, 0x10a00a5

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 289
    .restart local v0    # "a":Landroid/view/animation/Animation;
    :goto_0
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 290
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 291
    return-object v0
.end method

.method public static whitelist makeInChildBottomAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .line 325
    const v0, 0x10a00a2

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 326
    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 327
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 328
    return-object v0
.end method

.method public static whitelist makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "toRight"    # Z

    .line 304
    if-eqz p1, :cond_0

    .line 305
    const v0, 0x10a0003

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_0

    .line 307
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    const v0, 0x10a00a8

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 310
    .restart local v0    # "a":Landroid/view/animation/Animation;
    :goto_0
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 311
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 312
    return-object v0
.end method

.method public static blacklist unlockAnimationClock()V
    .locals 2

    .line 101
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->animationClockLocked:Z

    .line 102
    return-void
.end method
