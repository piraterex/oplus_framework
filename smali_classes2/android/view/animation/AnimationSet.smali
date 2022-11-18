.class public Landroid/view/animation/AnimationSet;
.super Landroid/view/animation/Animation;
.source "AnimationSet.java"


# static fields
.field private static final greylist-max-o PROPERTY_CHANGE_BOUNDS_MASK:I = 0x80

.field private static final greylist-max-o PROPERTY_DURATION_MASK:I = 0x20

.field private static final greylist-max-o PROPERTY_FILL_AFTER_MASK:I = 0x1

.field private static final greylist-max-o PROPERTY_FILL_BEFORE_MASK:I = 0x2

.field private static final greylist-max-o PROPERTY_MORPH_MATRIX_MASK:I = 0x40

.field private static final greylist-max-o PROPERTY_REPEAT_MODE_MASK:I = 0x4

.field private static final greylist-max-o PROPERTY_SHARE_INTERPOLATOR_MASK:I = 0x10

.field private static final greylist-max-o PROPERTY_START_OFFSET_MASK:I = 0x8


# instance fields
.field private greylist-max-o mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDirty:Z

.field private greylist-max-o mFlags:I

.field private greylist-max-o mHasAlpha:Z

.field private greylist-max-o mLastEnd:J

.field private greylist-max-o mStoredOffsets:[J

.field private greylist-max-o mTempTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 68
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 83
    sget-object v1, Lcom/android/internal/R$styleable;->AnimationSet:[I

    .line 84
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 86
    .local v1, "a":Landroid/content/res/TypedArray;
    nop

    .line 87
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 86
    const/16 v4, 0x10

    invoke-direct {p0, v4, v3}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    .line 88
    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_4

    .line 92
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 95
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, v3

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 98
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 101
    :cond_2
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    .line 102
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 104
    :cond_3
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 109
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .locals 1
    .param p1, "shareInterpolator"    # Z

    .line 120
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 121
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    .line 122
    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    .line 123
    return-void
.end method

.method private greylist-max-o init()V
    .locals 2

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartTime:J

    .line 151
    return-void
.end method

.method private greylist-max-o setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 142
    if-eqz p2, :cond_0

    .line 143
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    goto :goto_0

    .line 145
    :cond_0
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 147
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addAnimation(Landroid/view/animation/Animation;)V
    .locals 9
    .param p1, "a"    # Landroid/view/animation/Animation;

    .line 219
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 222
    .local v0, "noMatrix":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 226
    :cond_1
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2

    move v1, v2

    .line 229
    .local v1, "changeBounds":Z
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 233
    :cond_3
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 234
    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_1

    .line 236
    :cond_4
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 237
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    .line 238
    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_1

    .line 240
    :cond_5
    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    .line 241
    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    .line 245
    :goto_1
    iput-boolean v2, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    .line 246
    return-void
.end method

.method protected bridge synthetic whitelist clone()Landroid/view/animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist clone()Landroid/view/animation/AnimationSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 127
    invoke-super {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 128
    .local v0, "animation":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 131
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 132
    .local v1, "count":I
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 134
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 135
    iget-object v4, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    .end local v3    # "i":I
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist computeDurationHint()J
    .locals 8

    .line 324
    const-wide/16 v0, 0x0

    .line 325
    .local v0, "duration":J
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 326
    .local v2, "count":I
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 327
    .local v3, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 328
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v5

    .line 329
    .local v5, "d":J
    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    move-wide v0, v5

    .line 327
    .end local v5    # "d":J
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 331
    .end local v4    # "i":I
    :cond_1
    return-wide v0
.end method

.method public whitelist getAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getDuration()J
    .locals 8

    .line 301
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 302
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 303
    .local v1, "count":I
    const-wide/16 v2, 0x0

    .line 305
    .local v2, "duration":J
    iget v4, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 306
    .local v4, "durationSet":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 307
    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    goto :goto_2

    .line 309
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 310
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 309
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 314
    .end local v5    # "i":I
    :cond_2
    :goto_2
    return-wide v2
.end method

.method public whitelist getStartTime()J
    .locals 8

    .line 268
    const-wide v0, 0x7fffffffffffffffL

    .line 270
    .local v0, "startTime":J
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 271
    .local v2, "count":I
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 273
    .local v3, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 274
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    .line 275
    .local v5, "a":Landroid/view/animation/Animation;
    invoke-virtual {v5}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 273
    .end local v5    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 278
    .end local v4    # "i":I
    :cond_0
    return-wide v0
.end method

.method public whitelist getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 11
    .param p1, "currentTime"    # J
    .param p3, "t"    # Landroid/view/animation/Transformation;

    .line 390
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 391
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 392
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 394
    .local v2, "temp":Landroid/view/animation/Transformation;
    const/4 v3, 0x0

    .line 395
    .local v3, "more":Z
    const/4 v4, 0x0

    .line 396
    .local v4, "started":Z
    const/4 v5, 0x1

    .line 398
    .local v5, "ended":Z
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    .line 400
    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x1

    if-ltz v6, :cond_5

    .line 401
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/animation/Animation;

    .line 403
    .local v8, "a":Landroid/view/animation/Animation;
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 404
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getScaleFactor()F

    move-result v9

    invoke-virtual {v8, p1, p2, v2, v9}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v9, v10

    goto :goto_2

    :cond_1
    :goto_1
    move v9, v7

    :goto_2
    move v3, v9

    .line 405
    invoke-virtual {p3, v2}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 407
    if-nez v4, :cond_3

    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    move v9, v10

    goto :goto_4

    :cond_3
    :goto_3
    move v9, v7

    :goto_4
    move v4, v9

    .line 408
    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v5, :cond_4

    goto :goto_5

    :cond_4
    move v7, v10

    :goto_5
    move v5, v7

    .line 400
    .end local v8    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 411
    .end local v6    # "i":I
    :cond_5
    if-eqz v4, :cond_6

    iget-boolean v6, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    if-nez v6, :cond_6

    .line 412
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->dispatchAnimationStart()V

    .line 413
    iput-boolean v7, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    .line 416
    :cond_6
    iget-boolean v6, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    if-eq v5, v6, :cond_7

    .line 417
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->dispatchAnimationEnd()V

    .line 418
    iput-boolean v5, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    .line 421
    :cond_7
    return v3
.end method

.method public blacklist getTransformationAt(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 371
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 373
    .local v0, "temp":Landroid/view/animation/Transformation;
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 374
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    .line 376
    .local v2, "a":Landroid/view/animation/Animation;
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 377
    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 378
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 373
    .end local v2    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 380
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o hasAlpha()Z
    .locals 4

    .line 182
    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    if-eqz v0, :cond_1

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    .line 185
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 186
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 188
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 189
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    .line 191
    goto :goto_1

    .line 188
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "count":I
    .end local v1    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    return v0
.end method

.method public blacklist hasExtension()Z
    .locals 3

    .line 544
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 545
    .local v1, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasExtension()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    const/4 v0, 0x1

    return v0

    .line 548
    .end local v1    # "animation":Landroid/view/animation/Animation;
    :cond_0
    goto :goto_0

    .line 549
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist initialize(IIII)V
    .locals 23
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 441
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 443
    iget v1, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v2, v1, 0x20

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 444
    .local v2, "durationSet":Z
    :goto_0
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v5, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    .line 445
    .local v3, "fillAfterSet":Z
    :goto_1
    and-int/lit8 v6, v1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v4

    .line 446
    .local v6, "fillBeforeSet":Z
    :goto_2
    and-int/lit8 v7, v1, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v4

    .line 447
    .local v7, "repeatModeSet":Z
    :goto_3
    and-int/lit8 v8, v1, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_4

    move v8, v5

    goto :goto_4

    :cond_4
    move v8, v4

    .line 449
    .local v8, "shareInterpolator":Z
    :goto_4
    const/16 v9, 0x8

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_5

    move v4, v5

    :cond_5
    move v1, v4

    .line 452
    .local v1, "startOffsetSet":Z
    if-eqz v8, :cond_6

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/view/animation/AnimationSet;->ensureInterpolator()V

    .line 456
    :cond_6
    iget-object v4, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 457
    .local v4, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 459
    .local v5, "count":I
    iget-wide v9, v0, Landroid/view/animation/AnimationSet;->mDuration:J

    .line 460
    .local v9, "duration":J
    iget-boolean v11, v0, Landroid/view/animation/AnimationSet;->mFillAfter:Z

    .line 461
    .local v11, "fillAfter":Z
    iget-boolean v12, v0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    .line 462
    .local v12, "fillBefore":Z
    iget v13, v0, Landroid/view/animation/AnimationSet;->mRepeatMode:I

    .line 463
    .local v13, "repeatMode":I
    iget-object v14, v0, Landroid/view/animation/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 464
    .local v14, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v16, v14

    .end local v14    # "interpolator":Landroid/view/animation/Interpolator;
    .local v16, "interpolator":Landroid/view/animation/Interpolator;
    iget-wide v14, v0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    .line 467
    .local v14, "startOffset":J
    move-wide/from16 v17, v14

    .end local v14    # "startOffset":J
    .local v17, "startOffset":J
    iget-object v14, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    .line 468
    .local v14, "storedOffsets":[J
    if-eqz v1, :cond_8

    .line 469
    if-eqz v14, :cond_7

    array-length v15, v14

    if-eq v15, v5, :cond_9

    .line 470
    :cond_7
    new-array v15, v5, [J

    iput-object v15, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    move-object v14, v15

    goto :goto_5

    .line 472
    :cond_8
    if-eqz v14, :cond_9

    .line 473
    const/4 v15, 0x0

    iput-object v15, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    move-object v14, v15

    .line 476
    :cond_9
    :goto_5
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_6
    if-ge v15, v5, :cond_10

    .line 477
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Landroid/view/animation/Animation;

    .line 478
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v2, :cond_a

    .line 479
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 481
    :cond_a
    if-eqz v3, :cond_b

    .line 482
    invoke-virtual {v0, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 484
    :cond_b
    if-eqz v6, :cond_c

    .line 485
    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 487
    :cond_c
    if-eqz v7, :cond_d

    .line 488
    invoke-virtual {v0, v13}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 490
    :cond_d
    if-eqz v8, :cond_e

    .line 491
    move/from16 v19, v2

    move-object/from16 v2, v16

    .end local v16    # "interpolator":Landroid/view/animation/Interpolator;
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    .local v19, "durationSet":Z
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_7

    .line 490
    .end local v19    # "durationSet":Z
    .local v2, "durationSet":Z
    .restart local v16    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_e
    move/from16 v19, v2

    move-object/from16 v2, v16

    .line 493
    .end local v16    # "interpolator":Landroid/view/animation/Interpolator;
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    .restart local v19    # "durationSet":Z
    :goto_7
    if-eqz v1, :cond_f

    .line 494
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v20

    .line 495
    .local v20, "offset":J
    move/from16 v16, v1

    move-object/from16 v22, v2

    .end local v1    # "startOffsetSet":Z
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    .local v16, "startOffsetSet":Z
    .local v22, "interpolator":Landroid/view/animation/Interpolator;
    add-long v1, v20, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 496
    aput-wide v20, v14, v15

    goto :goto_8

    .line 493
    .end local v16    # "startOffsetSet":Z
    .end local v20    # "offset":J
    .end local v22    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v1    # "startOffsetSet":Z
    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_f
    move/from16 v16, v1

    move-object/from16 v22, v2

    .line 498
    .end local v1    # "startOffsetSet":Z
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v16    # "startOffsetSet":Z
    .restart local v22    # "interpolator":Landroid/view/animation/Interpolator;
    :goto_8
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v3, p3

    move/from16 v4, p4

    .end local v3    # "fillAfterSet":Z
    .end local v4    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .local v20, "fillAfterSet":Z
    .local v21, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 476
    .end local v0    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v16, v22

    goto :goto_6

    .line 500
    .end local v15    # "i":I
    .end local v19    # "durationSet":Z
    .end local v20    # "fillAfterSet":Z
    .end local v21    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v22    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v1    # "startOffsetSet":Z
    .local v2, "durationSet":Z
    .restart local v3    # "fillAfterSet":Z
    .restart local v4    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .local v16, "interpolator":Landroid/view/animation/Interpolator;
    :cond_10
    return-void
.end method

.method public greylist-max-o initializeInvalidateRegion(IIII)V
    .locals 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 338
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mPreviousRegion:Landroid/graphics/RectF;

    .line 339
    .local v0, "region":Landroid/graphics/RectF;
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 340
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 342
    iget-boolean v1, p0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    if-eqz v1, :cond_3

    .line 343
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 344
    .local v1, "count":I
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 345
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 347
    .local v3, "temp":Landroid/view/animation/Transformation;
    iget-object v4, p0, Landroid/view/animation/AnimationSet;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 349
    .local v4, "previousTransformation":Landroid/view/animation/Transformation;
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_3

    .line 350
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    .line 351
    .local v6, "a":Landroid/view/animation/Animation;
    invoke-virtual {v6}, Landroid/view/animation/Animation;->isFillEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getFillBefore()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 352
    :cond_0
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 353
    iget-object v7, v6, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 354
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_1

    .line 355
    :cond_1
    nop

    .line 354
    :goto_1
    invoke-virtual {v6, v8, v3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 356
    invoke-virtual {v4, v3}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 349
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v7    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 360
    .end local v1    # "count":I
    .end local v2    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v3    # "temp":Landroid/view/animation/Transformation;
    .end local v4    # "previousTransformation":Landroid/view/animation/Transformation;
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method public whitelist reset()V
    .locals 0

    .line 504
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 505
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->restoreChildrenStartOffset()V

    .line 506
    return-void
.end method

.method greylist-max-o restoreChildrenStartOffset()V
    .locals 7

    .line 512
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    .line 513
    .local v0, "offsets":[J
    if-nez v0, :cond_0

    return-void

    .line 515
    :cond_0
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 516
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 518
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 519
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    aget-wide v5, v0, v3

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 518
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 521
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist restrictDuration(J)V
    .locals 4
    .param p1, "durationMillis"    # J

    .line 283
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 285
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 286
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 288
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 289
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist scaleCurrentDuration(F)V
    .locals 4
    .param p1, "scale"    # F

    .line 429
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 430
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 431
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 432
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist setDuration(J)V
    .locals 4
    .param p1, "durationMillis"    # J

    .line 207
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 208
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 209
    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    .line 210
    return-void
.end method

.method public whitelist setFillAfter(Z)V
    .locals 1
    .param p1, "fillAfter"    # Z

    .line 155
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 156
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 157
    return-void
.end method

.method public whitelist setFillBefore(Z)V
    .locals 1
    .param p1, "fillBefore"    # Z

    .line 161
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 162
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 163
    return-void
.end method

.method public whitelist setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 167
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 168
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 169
    return-void
.end method

.method public whitelist setStartOffset(J)V
    .locals 1
    .param p1, "startOffset"    # J

    .line 173
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 174
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 175
    return-void
.end method

.method public whitelist setStartTime(J)V
    .locals 4
    .param p1, "startTimeMillis"    # J

    .line 255
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 257
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 260
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 261
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    .line 262
    .local v3, "a":Landroid/view/animation/Animation;
    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 260
    .end local v3    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist willChangeBounds()Z
    .locals 2

    .line 538
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist willChangeTransformationMatrix()Z
    .locals 2

    .line 533
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
