.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final greylist-max-p BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final greylist-max-p POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final greylist-max-o PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final greylist-max-o PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final greylist-max-o PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final greylist-max-o PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final greylist-max-o TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sRectEvaluator:Landroid/animation/RectEvaluator;

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# instance fields
.field greylist-max-o mReparent:Z

.field greylist-max-o mResizeClip:Z

.field greylist-max-o tempLocation:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 61
    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:clip"

    const-string v2, "android:changeBounds:parent"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 87
    new-instance v0, Landroid/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 100
    new-instance v0, Landroid/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Landroid/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 114
    new-instance v0, Landroid/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroid/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 131
    new-instance v0, Landroid/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 149
    new-instance v0, Landroid/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 171
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 168
    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 173
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 176
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 168
    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 178
    sget-object v1, Lcom/android/internal/R$styleable;->ChangeBounds:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 179
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 180
    .local v0, "resizeClip":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    invoke-virtual {p0, v0}, Landroid/transition/ChangeBounds;->setResizeClip(Z)V

    .line 182
    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .locals 7
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 237
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 239
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 240
    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 245
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_1
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-string v3, "android:changeBounds:clip"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_2
    return-void
.end method

.method private greylist-max-o parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .param p1, "startParent"    # Landroid/view/View;
    .param p2, "endParent"    # Landroid/view/View;

    .line 265
    const/4 v0, 0x1

    .line 266
    .local v0, "parentMatches":Z
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_3

    .line 267
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 268
    .local v2, "endValues":Landroid/transition/TransitionValues;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 269
    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    goto :goto_2

    .line 271
    :cond_1
    iget-object v4, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    move v0, v1

    .line 274
    .end local v2    # "endValues":Landroid/transition/TransitionValues;
    :cond_3
    :goto_2
    return v0
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 261
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 262
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 256
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 257
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 37
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 280
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    if-eqz v9, :cond_1b

    if-nez v10, :cond_0

    move-object v9, v8

    move-object v12, v10

    const/4 v0, 0x0

    goto/16 :goto_b

    .line 283
    :cond_0
    iget-object v11, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 284
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v12, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 285
    .local v12, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "android:changeBounds:parent"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/view/ViewGroup;

    .line 286
    .local v13, "startParent":Landroid/view/ViewGroup;
    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/view/ViewGroup;

    .line 287
    .local v14, "endParent":Landroid/view/ViewGroup;
    if-eqz v13, :cond_1a

    if-nez v14, :cond_1

    move-object v9, v8

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object v12, v10

    goto/16 :goto_a

    .line 290
    :cond_1
    iget-object v15, v10, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 291
    .local v15, "view":Landroid/view/View;
    invoke-direct {v8, v13, v14}, Landroid/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 292
    iget-object v1, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/graphics/Rect;

    .line 293
    .local v7, "startBounds":Landroid/graphics/Rect;
    iget-object v1, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/graphics/Rect;

    .line 294
    .local v6, "endBounds":Landroid/graphics/Rect;
    iget v5, v7, Landroid/graphics/Rect;->left:I

    .line 295
    .local v5, "startLeft":I
    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 296
    .local v1, "endLeft":I
    iget v3, v7, Landroid/graphics/Rect;->top:I

    .line 297
    .local v3, "startTop":I
    iget v4, v6, Landroid/graphics/Rect;->top:I

    .line 298
    .local v4, "endTop":I
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 299
    .local v0, "startRight":I
    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 300
    .local v2, "endRight":I
    move-object/from16 v19, v11

    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v19, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    .line 301
    .local v11, "startBottom":I
    move-object/from16 v20, v12

    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v20, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    .line 302
    .local v12, "endBottom":I
    move-object/from16 v21, v13

    .end local v13    # "startParent":Landroid/view/ViewGroup;
    .local v21, "startParent":Landroid/view/ViewGroup;
    sub-int v13, v0, v5

    .line 303
    .local v13, "startWidth":I
    move-object/from16 v22, v14

    .end local v14    # "endParent":Landroid/view/ViewGroup;
    .local v22, "endParent":Landroid/view/ViewGroup;
    sub-int v14, v11, v3

    .line 304
    .local v14, "startHeight":I
    move-object/from16 v23, v7

    .end local v7    # "startBounds":Landroid/graphics/Rect;
    .local v23, "startBounds":Landroid/graphics/Rect;
    sub-int v7, v2, v1

    .line 305
    .local v7, "endWidth":I
    move-object/from16 v24, v6

    .end local v6    # "endBounds":Landroid/graphics/Rect;
    .local v24, "endBounds":Landroid/graphics/Rect;
    sub-int v6, v12, v4

    .line 306
    .local v6, "endHeight":I
    iget-object v8, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 307
    .local v8, "startClip":Landroid/graphics/Rect;
    move-object/from16 v25, v15

    .end local v15    # "view":Landroid/view/View;
    .local v25, "view":Landroid/view/View;
    iget-object v15, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 308
    .local v9, "endClip":Landroid/graphics/Rect;
    const/4 v15, 0x0

    .line 309
    .local v15, "numChanges":I
    if-eqz v13, :cond_2

    if-nez v14, :cond_3

    :cond_2
    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    .line 310
    :cond_3
    if-ne v5, v1, :cond_4

    if-eq v3, v4, :cond_5

    :cond_4
    add-int/lit8 v15, v15, 0x1

    .line 311
    :cond_5
    if-ne v0, v2, :cond_6

    if-eq v11, v12, :cond_7

    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 313
    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    :cond_8
    if-nez v8, :cond_a

    if-eqz v9, :cond_a

    .line 315
    :cond_9
    add-int/lit8 v15, v15, 0x1

    .line 317
    :cond_a
    if-lez v15, :cond_16

    .line 318
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Landroid/view/ViewGroup;

    if-eqz v10, :cond_b

    .line 319
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 320
    .local v10, "parent":Landroid/view/ViewGroup;
    move-object/from16 v26, v8

    const/4 v8, 0x1

    .end local v8    # "startClip":Landroid/graphics/Rect;
    .local v26, "startClip":Landroid/graphics/Rect;
    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 321
    new-instance v8, Landroid/transition/ChangeBounds$7;

    move-object/from16 v27, v9

    move-object/from16 v9, p0

    .end local v9    # "endClip":Landroid/graphics/Rect;
    .local v27, "endClip":Landroid/graphics/Rect;
    invoke-direct {v8, v9, v10}, Landroid/transition/ChangeBounds$7;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 348
    .local v8, "transitionListener":Landroid/transition/Transition$TransitionListener;
    invoke-virtual {v9, v8}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_0

    .line 318
    .end local v10    # "parent":Landroid/view/ViewGroup;
    .end local v26    # "startClip":Landroid/graphics/Rect;
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .local v8, "startClip":Landroid/graphics/Rect;
    .restart local v9    # "endClip":Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v9, p0

    .line 351
    .end local v8    # "startClip":Landroid/graphics/Rect;
    .end local v9    # "endClip":Landroid/graphics/Rect;
    .restart local v26    # "startClip":Landroid/graphics/Rect;
    .restart local v27    # "endClip":Landroid/graphics/Rect;
    :goto_0
    iget-boolean v8, v9, Landroid/transition/ChangeBounds;->mResizeClip:Z

    const/4 v10, 0x2

    if-nez v8, :cond_10

    .line 352
    move-object/from16 v8, v25

    .end local v25    # "view":Landroid/view/View;
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8, v5, v3, v0, v11}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 353
    if-ne v15, v10, :cond_d

    .line 354
    if-ne v13, v7, :cond_c

    if-ne v14, v6, :cond_c

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v10

    move/from16 v25, v15

    .end local v15    # "numChanges":I
    .local v25, "numChanges":I
    int-to-float v15, v5

    move/from16 v28, v6

    .end local v6    # "endHeight":I
    .local v28, "endHeight":I
    int-to-float v6, v3

    move/from16 v29, v14

    .end local v14    # "startHeight":I
    .local v29, "startHeight":I
    int-to-float v14, v1

    move/from16 v30, v7

    .end local v7    # "endWidth":I
    .local v30, "endWidth":I
    int-to-float v7, v4

    invoke-virtual {v10, v15, v6, v14, v7}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v6

    .line 357
    .local v6, "topLeftPath":Landroid/graphics/Path;
    sget-object v7, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v10, 0x0

    invoke-static {v8, v7, v10, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 359
    .local v6, "anim":Landroid/animation/Animator;
    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v11

    move/from16 v35, v28

    move/from16 v14, v29

    move/from16 v36, v30

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v28, v13

    goto/16 :goto_7

    .line 354
    .end local v25    # "numChanges":I
    .end local v28    # "endHeight":I
    .end local v29    # "startHeight":I
    .end local v30    # "endWidth":I
    .local v6, "endHeight":I
    .restart local v7    # "endWidth":I
    .restart local v14    # "startHeight":I
    .restart local v15    # "numChanges":I
    :cond_c
    move/from16 v28, v6

    move/from16 v30, v7

    move/from16 v29, v14

    move/from16 v25, v15

    .line 360
    .end local v6    # "endHeight":I
    .end local v7    # "endWidth":I
    .end local v14    # "startHeight":I
    .end local v15    # "numChanges":I
    .restart local v25    # "numChanges":I
    .restart local v28    # "endHeight":I
    .restart local v29    # "startHeight":I
    .restart local v30    # "endWidth":I
    new-instance v6, Landroid/transition/ChangeBounds$ViewBounds;

    invoke-direct {v6, v8}, Landroid/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 361
    .local v6, "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v7

    int-to-float v14, v5

    int-to-float v15, v3

    int-to-float v10, v1

    move/from16 v32, v13

    .end local v13    # "startWidth":I
    .local v32, "startWidth":I
    int-to-float v13, v4

    invoke-virtual {v7, v14, v15, v10, v13}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v7

    .line 363
    .local v7, "topLeftPath":Landroid/graphics/Path;
    sget-object v10, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 364
    const/4 v13, 0x0

    invoke-static {v6, v10, v13, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 366
    .local v10, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v14

    int-to-float v15, v0

    int-to-float v13, v11

    move-object/from16 v33, v7

    .end local v7    # "topLeftPath":Landroid/graphics/Path;
    .local v33, "topLeftPath":Landroid/graphics/Path;
    int-to-float v7, v2

    move-object/from16 v34, v8

    .end local v8    # "view":Landroid/view/View;
    .local v34, "view":Landroid/view/View;
    int-to-float v8, v12

    invoke-virtual {v14, v15, v13, v7, v8}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v7

    .line 368
    .local v7, "bottomRightPath":Landroid/graphics/Path;
    sget-object v8, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    const/4 v13, 0x0

    invoke-static {v6, v8, v13, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 370
    .local v8, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 371
    .local v13, "set":Landroid/animation/AnimatorSet;
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 372
    move-object v14, v13

    .line 373
    .local v14, "anim":Landroid/animation/Animator;
    new-instance v15, Landroid/transition/ChangeBounds$8;

    invoke-direct {v15, v9, v6}, Landroid/transition/ChangeBounds$8;-><init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 378
    .end local v6    # "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    .end local v7    # "bottomRightPath":Landroid/graphics/Path;
    .end local v8    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v10    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    .end local v13    # "set":Landroid/animation/AnimatorSet;
    .end local v33    # "topLeftPath":Landroid/graphics/Path;
    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v31, v4

    move/from16 v33, v11

    move-object v6, v14

    move/from16 v35, v28

    move/from16 v14, v29

    move/from16 v36, v30

    move/from16 v28, v32

    move-object/from16 v8, v34

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v32, v5

    goto/16 :goto_7

    .line 379
    .end local v25    # "numChanges":I
    .end local v28    # "endHeight":I
    .end local v29    # "startHeight":I
    .end local v30    # "endWidth":I
    .end local v32    # "startWidth":I
    .end local v34    # "view":Landroid/view/View;
    .local v6, "endHeight":I
    .local v7, "endWidth":I
    .local v8, "view":Landroid/view/View;
    .local v13, "startWidth":I
    .local v14, "startHeight":I
    .restart local v15    # "numChanges":I
    :cond_d
    move/from16 v28, v6

    move/from16 v30, v7

    move-object/from16 v34, v8

    move/from16 v32, v13

    move/from16 v29, v14

    move/from16 v25, v15

    .end local v6    # "endHeight":I
    .end local v7    # "endWidth":I
    .end local v8    # "view":Landroid/view/View;
    .end local v13    # "startWidth":I
    .end local v14    # "startHeight":I
    .end local v15    # "numChanges":I
    .restart local v25    # "numChanges":I
    .restart local v28    # "endHeight":I
    .restart local v29    # "startHeight":I
    .restart local v30    # "endWidth":I
    .restart local v32    # "startWidth":I
    .restart local v34    # "view":Landroid/view/View;
    if-ne v5, v1, :cond_f

    if-eq v3, v4, :cond_e

    move-object/from16 v8, v34

    goto :goto_1

    .line 385
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v6

    int-to-float v7, v0

    int-to-float v8, v11

    int-to-float v10, v2

    int-to-float v13, v12

    invoke-virtual {v6, v7, v8, v10, v13}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v6

    .line 387
    .local v6, "bottomRight":Landroid/graphics/Path;
    sget-object v7, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    move-object/from16 v8, v34

    const/4 v10, 0x0

    .end local v34    # "view":Landroid/view/View;
    .restart local v8    # "view":Landroid/view/View;
    invoke-static {v8, v7, v10, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 389
    .local v6, "anim":Landroid/animation/Animator;
    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v31, v4

    move/from16 v33, v11

    move/from16 v35, v28

    move/from16 v14, v29

    move/from16 v36, v30

    move/from16 v28, v32

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v32, v5

    goto/16 :goto_7

    .line 379
    .end local v6    # "anim":Landroid/animation/Animator;
    .end local v8    # "view":Landroid/view/View;
    .restart local v34    # "view":Landroid/view/View;
    :cond_f
    move-object/from16 v8, v34

    .line 380
    .end local v34    # "view":Landroid/view/View;
    .restart local v8    # "view":Landroid/view/View;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v6

    int-to-float v7, v5

    int-to-float v10, v3

    int-to-float v13, v1

    int-to-float v14, v4

    invoke-virtual {v6, v7, v10, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v6

    .line 382
    .local v6, "topLeftPath":Landroid/graphics/Path;
    sget-object v7, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v10, 0x0

    invoke-static {v8, v7, v10, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 384
    .local v6, "anim":Landroid/animation/Animator;
    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v31, v4

    move/from16 v33, v11

    move/from16 v35, v28

    move/from16 v14, v29

    move/from16 v36, v30

    move/from16 v28, v32

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v32, v5

    goto/16 :goto_7

    .line 391
    .end local v8    # "view":Landroid/view/View;
    .end local v28    # "endHeight":I
    .end local v29    # "startHeight":I
    .end local v30    # "endWidth":I
    .end local v32    # "startWidth":I
    .local v6, "endHeight":I
    .restart local v7    # "endWidth":I
    .restart local v13    # "startWidth":I
    .restart local v14    # "startHeight":I
    .restart local v15    # "numChanges":I
    .local v25, "view":Landroid/view/View;
    :cond_10
    move/from16 v28, v6

    move/from16 v30, v7

    move/from16 v32, v13

    move/from16 v29, v14

    move-object/from16 v8, v25

    move/from16 v25, v15

    .end local v6    # "endHeight":I
    .end local v7    # "endWidth":I
    .end local v13    # "startWidth":I
    .end local v14    # "startHeight":I
    .end local v15    # "numChanges":I
    .restart local v8    # "view":Landroid/view/View;
    .local v25, "numChanges":I
    .restart local v28    # "endHeight":I
    .restart local v29    # "startHeight":I
    .restart local v30    # "endWidth":I
    .restart local v32    # "startWidth":I
    move/from16 v10, v32

    .end local v30    # "endWidth":I
    .end local v32    # "startWidth":I
    .restart local v7    # "endWidth":I
    .local v10, "startWidth":I
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 392
    .local v13, "maxWidth":I
    nop

    .end local v28    # "endHeight":I
    .end local v29    # "startHeight":I
    .restart local v6    # "endHeight":I
    .restart local v14    # "startHeight":I
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 394
    .local v15, "maxHeight":I
    move/from16 v28, v0

    .end local v0    # "startRight":I
    .local v28, "startRight":I
    add-int v0, v5, v13

    move/from16 v29, v2

    .end local v2    # "endRight":I
    .local v29, "endRight":I
    add-int v2, v3, v15

    invoke-virtual {v8, v5, v3, v0, v2}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "positionAnimator":Landroid/animation/ObjectAnimator;
    if-ne v5, v1, :cond_12

    if-eq v3, v4, :cond_11

    goto :goto_2

    :cond_11
    move/from16 v34, v1

    move/from16 v33, v3

    move/from16 v32, v5

    move-object v5, v0

    goto :goto_3

    .line 399
    :cond_12
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v2

    move-object/from16 v30, v0

    .end local v0    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v30, "positionAnimator":Landroid/animation/ObjectAnimator;
    int-to-float v0, v5

    move/from16 v32, v5

    .end local v5    # "startLeft":I
    .local v32, "startLeft":I
    int-to-float v5, v3

    move/from16 v33, v3

    .end local v3    # "startTop":I
    .local v33, "startTop":I
    int-to-float v3, v1

    move/from16 v34, v1

    .end local v1    # "endLeft":I
    .local v34, "endLeft":I
    int-to-float v1, v4

    invoke-virtual {v2, v0, v5, v3, v1}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 401
    .local v0, "topLeftPath":Landroid/graphics/Path;
    sget-object v1, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v2, 0x0

    invoke-static {v8, v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v5, v1

    .line 404
    .end local v0    # "topLeftPath":Landroid/graphics/Path;
    .end local v30    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v5, "positionAnimator":Landroid/animation/ObjectAnimator;
    :goto_3
    move/from16 v30, v33

    .end local v33    # "startTop":I
    .local v30, "startTop":I
    move-object/from16 v3, v27

    .line 405
    .local v3, "finalClip":Landroid/graphics/Rect;
    if-nez v26, :cond_13

    .line 406
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v10, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v0

    .end local v26    # "startClip":Landroid/graphics/Rect;
    .local v0, "startClip":Landroid/graphics/Rect;
    goto :goto_4

    .line 405
    .end local v0    # "startClip":Landroid/graphics/Rect;
    .restart local v26    # "startClip":Landroid/graphics/Rect;
    :cond_13
    const/4 v1, 0x0

    move-object/from16 v2, v26

    .line 408
    .end local v26    # "startClip":Landroid/graphics/Rect;
    .local v2, "startClip":Landroid/graphics/Rect;
    :goto_4
    if-nez v27, :cond_14

    .line 409
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v0

    .end local v27    # "endClip":Landroid/graphics/Rect;
    .local v0, "endClip":Landroid/graphics/Rect;
    goto :goto_5

    .line 408
    .end local v0    # "endClip":Landroid/graphics/Rect;
    .restart local v27    # "endClip":Landroid/graphics/Rect;
    :cond_14
    move-object/from16 v1, v27

    .line 411
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .local v1, "endClip":Landroid/graphics/Rect;
    :goto_5
    const/4 v0, 0x0

    .line 412
    .local v0, "clipAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_15

    .line 413
    invoke-virtual {v8, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 414
    move-object/from16 v17, v0

    .end local v0    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v17, "clipAnimator":Landroid/animation/ObjectAnimator;
    sget-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    move/from16 v33, v4

    const/4 v4, 0x2

    .end local v4    # "endTop":I
    .local v33, "endTop":I
    new-array v4, v4, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v4, v16

    const/16 v16, 0x1

    aput-object v1, v4, v16

    move-object/from16 v16, v1

    .end local v1    # "endClip":Landroid/graphics/Rect;
    .local v16, "endClip":Landroid/graphics/Rect;
    const-string v1, "clipBounds"

    invoke-static {v8, v1, v0, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 416
    .end local v17    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v4, "clipAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/transition/ChangeBounds$9;

    move/from16 v18, v28

    .end local v28    # "startRight":I
    .local v18, "startRight":I
    move-object v0, v1

    move/from16 v28, v10

    move-object/from16 v27, v16

    move/from16 v16, v34

    move-object v10, v1

    .end local v10    # "startWidth":I
    .end local v34    # "endLeft":I
    .local v16, "endLeft":I
    .restart local v27    # "endClip":Landroid/graphics/Rect;
    .local v28, "startWidth":I
    move-object/from16 v1, p0

    move-object/from16 v26, v2

    .end local v2    # "startClip":Landroid/graphics/Rect;
    .restart local v26    # "startClip":Landroid/graphics/Rect;
    move-object v2, v8

    move/from16 v31, v33

    move/from16 v33, v11

    move-object v11, v4

    .end local v4    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v11, "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v31, "endTop":I
    .local v33, "startBottom":I
    move/from16 v4, v16

    move/from16 v34, v13

    move-object v13, v5

    .end local v5    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v13, "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v34, "maxWidth":I
    move/from16 v5, v31

    move/from16 v35, v6

    .end local v6    # "endHeight":I
    .local v35, "endHeight":I
    move/from16 v6, v29

    move/from16 v36, v7

    .end local v7    # "endWidth":I
    .local v36, "endWidth":I
    move v7, v12

    invoke-direct/range {v0 .. v7}, Landroid/transition/ChangeBounds$9;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v11, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v11

    goto :goto_6

    .line 412
    .end local v16    # "endLeft":I
    .end local v18    # "startRight":I
    .end local v26    # "startClip":Landroid/graphics/Rect;
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .end local v31    # "endTop":I
    .end local v33    # "startBottom":I
    .end local v35    # "endHeight":I
    .end local v36    # "endWidth":I
    .restart local v0    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .restart local v1    # "endClip":Landroid/graphics/Rect;
    .restart local v2    # "startClip":Landroid/graphics/Rect;
    .local v4, "endTop":I
    .restart local v5    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .restart local v6    # "endHeight":I
    .restart local v7    # "endWidth":I
    .restart local v10    # "startWidth":I
    .local v11, "startBottom":I
    .local v13, "maxWidth":I
    .local v28, "startRight":I
    .local v34, "endLeft":I
    :cond_15
    move-object/from16 v17, v0

    move-object/from16 v27, v1

    move-object/from16 v26, v2

    move/from16 v31, v4

    move/from16 v35, v6

    move/from16 v36, v7

    move/from16 v33, v11

    move/from16 v18, v28

    move/from16 v16, v34

    move/from16 v28, v10

    move/from16 v34, v13

    move-object v13, v5

    .line 434
    .end local v1    # "endClip":Landroid/graphics/Rect;
    .end local v2    # "startClip":Landroid/graphics/Rect;
    .end local v4    # "endTop":I
    .end local v5    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v6    # "endHeight":I
    .end local v7    # "endWidth":I
    .end local v10    # "startWidth":I
    .end local v11    # "startBottom":I
    .local v13, "positionAnimator":Landroid/animation/ObjectAnimator;
    .restart local v16    # "endLeft":I
    .restart local v18    # "startRight":I
    .restart local v26    # "startClip":Landroid/graphics/Rect;
    .restart local v27    # "endClip":Landroid/graphics/Rect;
    .local v28, "startWidth":I
    .restart local v31    # "endTop":I
    .restart local v33    # "startBottom":I
    .local v34, "maxWidth":I
    .restart local v35    # "endHeight":I
    .restart local v36    # "endWidth":I
    :goto_6
    invoke-static {v13, v0}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v6

    .line 437
    .end local v0    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "finalClip":Landroid/graphics/Rect;
    .end local v13    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v15    # "maxHeight":I
    .end local v34    # "maxWidth":I
    .local v6, "anim":Landroid/animation/Animator;
    :goto_7
    return-object v6

    .line 317
    .end local v16    # "endLeft":I
    .end local v18    # "startRight":I
    .end local v26    # "startClip":Landroid/graphics/Rect;
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .end local v28    # "startWidth":I
    .end local v29    # "endRight":I
    .end local v30    # "startTop":I
    .end local v31    # "endTop":I
    .end local v32    # "startLeft":I
    .end local v33    # "startBottom":I
    .end local v35    # "endHeight":I
    .end local v36    # "endWidth":I
    .local v0, "startRight":I
    .local v1, "endLeft":I
    .local v2, "endRight":I
    .local v3, "startTop":I
    .restart local v4    # "endTop":I
    .local v5, "startLeft":I
    .local v6, "endHeight":I
    .restart local v7    # "endWidth":I
    .local v8, "startClip":Landroid/graphics/Rect;
    .restart local v9    # "endClip":Landroid/graphics/Rect;
    .restart local v11    # "startBottom":I
    .local v13, "startWidth":I
    .local v15, "numChanges":I
    .local v25, "view":Landroid/view/View;
    :cond_16
    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v35, v6

    move/from16 v36, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move/from16 v33, v11

    move/from16 v28, v13

    move-object/from16 v8, v25

    move-object/from16 v9, p0

    move/from16 v25, v15

    .line 439
    .end local v0    # "startRight":I
    .end local v1    # "endLeft":I
    .end local v2    # "endRight":I
    .end local v3    # "startTop":I
    .end local v4    # "endTop":I
    .end local v5    # "startLeft":I
    .end local v6    # "endHeight":I
    .end local v7    # "endWidth":I
    .end local v9    # "endClip":Landroid/graphics/Rect;
    .end local v11    # "startBottom":I
    .end local v12    # "endBottom":I
    .end local v13    # "startWidth":I
    .end local v14    # "startHeight":I
    .end local v15    # "numChanges":I
    .end local v23    # "startBounds":Landroid/graphics/Rect;
    .end local v24    # "endBounds":Landroid/graphics/Rect;
    .end local v25    # "view":Landroid/view/View;
    .local v8, "view":Landroid/view/View;
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v12, p3

    goto :goto_8

    .line 440
    .end local v8    # "view":Landroid/view/View;
    .end local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "startParent":Landroid/view/ViewGroup;
    .end local v22    # "endParent":Landroid/view/ViewGroup;
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v12, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "startParent":Landroid/view/ViewGroup;
    .local v14, "endParent":Landroid/view/ViewGroup;
    .local v15, "view":Landroid/view/View;
    :cond_17
    move-object v9, v8

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object v8, v15

    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "startParent":Landroid/view/ViewGroup;
    .end local v14    # "endParent":Landroid/view/ViewGroup;
    .end local v15    # "view":Landroid/view/View;
    .restart local v8    # "view":Landroid/view/View;
    .restart local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "startParent":Landroid/view/ViewGroup;
    .restart local v22    # "endParent":Landroid/view/ViewGroup;
    iget-object v0, v9, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 441
    move-object/from16 v7, p2

    iget-object v0, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowX"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v9, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int v10, v0, v2

    .line 442
    .local v10, "startX":I
    iget-object v0, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v9, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int v11, v0, v3

    .line 443
    .local v11, "startY":I
    move-object/from16 v12, p3

    iget-object v0, v12, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v9, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-int v13, v0, v1

    .line 444
    .local v13, "endX":I
    iget-object v0, v12, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v9, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int v14, v0, v1

    .line 446
    .local v14, "endY":I
    if-ne v10, v13, :cond_19

    if-eq v11, v14, :cond_18

    goto :goto_9

    .line 471
    .end local v10    # "startX":I
    .end local v11    # "startY":I
    .end local v13    # "endX":I
    .end local v14    # "endY":I
    :cond_18
    :goto_8
    const/4 v0, 0x0

    return-object v0

    .line 447
    .restart local v10    # "startX":I
    .restart local v11    # "startY":I
    .restart local v13    # "endX":I
    .restart local v14    # "endY":I
    :cond_19
    :goto_9
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 448
    .local v15, "width":I
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 449
    .local v5, "height":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 450
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v0

    .line 451
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 452
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v0

    .line 453
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    add-int v0, v10, v15

    add-int v1, v11, v5

    invoke-virtual {v2, v10, v11, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 454
    invoke-virtual {v8}, Landroid/view/View;->getTransitionAlpha()F

    move-result v23

    .line 455
    .local v23, "transitionAlpha":F
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    int-to-float v1, v10

    move-object/from16 v24, v3

    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .local v24, "canvas":Landroid/graphics/Canvas;
    int-to-float v3, v11

    move-object/from16 v25, v4

    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .local v25, "bitmap":Landroid/graphics/Bitmap;
    int-to-float v4, v13

    move/from16 v26, v5

    .end local v5    # "height":I
    .local v26, "height":I
    int-to-float v5, v14

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v5

    .line 458
    .local v5, "topLeftPath":Landroid/graphics/Path;
    sget-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x0

    invoke-static {v0, v1, v5}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 460
    .local v17, "origin":Landroid/animation/PropertyValuesHolder;
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object v17, v0, v1

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 461
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/transition/ChangeBounds$10;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    .end local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v16, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v2, p1

    move-object v6, v3

    move-object/from16 v18, v24

    .end local v24    # "canvas":Landroid/graphics/Canvas;
    .local v18, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v3, v16

    move-object v7, v4

    move-object/from16 v24, v25

    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v25    # "bitmap":Landroid/graphics/Bitmap;
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    .local v24, "bitmap":Landroid/graphics/Bitmap;
    move-object v4, v8

    move/from16 v25, v26

    move-object/from16 v26, v5

    .end local v5    # "topLeftPath":Landroid/graphics/Path;
    .local v25, "height":I
    .local v26, "topLeftPath":Landroid/graphics/Path;
    move/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Landroid/transition/ChangeBounds$10;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v7, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 468
    return-object v7

    .line 287
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v8    # "view":Landroid/view/View;
    .end local v10    # "startX":I
    .end local v15    # "width":I
    .end local v16    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "origin":Landroid/animation/PropertyValuesHolder;
    .end local v18    # "canvas":Landroid/graphics/Canvas;
    .end local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "startParent":Landroid/view/ViewGroup;
    .end local v22    # "endParent":Landroid/view/ViewGroup;
    .end local v23    # "transitionAlpha":F
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .end local v25    # "height":I
    .end local v26    # "topLeftPath":Landroid/graphics/Path;
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "startParent":Landroid/view/ViewGroup;
    .local v14, "endParent":Landroid/view/ViewGroup;
    :cond_1a
    move-object v9, v8

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object v12, v10

    .line 288
    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "startParent":Landroid/view/ViewGroup;
    .end local v14    # "endParent":Landroid/view/ViewGroup;
    .restart local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "startParent":Landroid/view/ViewGroup;
    .restart local v22    # "endParent":Landroid/view/ViewGroup;
    :goto_a
    const/4 v0, 0x0

    return-object v0

    .line 280
    .end local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "startParent":Landroid/view/ViewGroup;
    .end local v22    # "endParent":Landroid/view/ViewGroup;
    :cond_1b
    move-object v9, v8

    move-object v12, v10

    const/4 v0, 0x0

    .line 281
    :goto_b
    return-object v0
.end method

.method public whitelist getResizeClip()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 186
    sget-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 234
    return-void
.end method

.method public whitelist setResizeClip(Z)V
    .locals 0
    .param p1, "resizeClip"    # Z

    .line 204
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 205
    return-void
.end method
