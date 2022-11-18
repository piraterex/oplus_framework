.class public final Landroid/graphics/text/MeasuredText$Builder;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/MeasuredText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/MeasuredText$Builder$HyphenationMode;
    }
.end annotation


# static fields
.field public static final whitelist HYPHENATION_MODE_FAST:I = 0x2

.field public static final whitelist HYPHENATION_MODE_NONE:I = 0x0

.field public static final whitelist HYPHENATION_MODE_NORMAL:I = 0x1

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mBottom:I

.field private blacklist mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private blacklist mComputeHyphenation:Z

.field private blacklist mComputeLayout:Z

.field private blacklist mCurrentOffset:I

.field private blacklist mFastHyphenation:Z

.field private blacklist mHintMt:Landroid/graphics/text/MeasuredText;

.field private blacklist mNativePtr:J

.field private final blacklist mText:[C

.field private blacklist mTop:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 211
    const-class v0, Landroid/graphics/text/MeasuredText;

    .line 213
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/text/MeasuredText;->-$$Nest$smnGetReleaseFunc()J

    move-result-wide v1

    .line 212
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/MeasuredText$Builder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 211
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/text/MeasuredText;)V
    .locals 2
    .param p1, "text"    # Landroid/graphics/text/MeasuredText;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 219
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    .line 220
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 221
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    .line 223
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    .line 224
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    .line 225
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 250
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmChars(Landroid/graphics/text/MeasuredText;)[C

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    .line 252
    invoke-static {}, Landroid/graphics/text/MeasuredText$Builder;->nInitBuilder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    .line 253
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmComputeLayout(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmComputeHyphenation(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 258
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmComputeLayout(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    .line 259
    iput-object p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    .line 260
    return-void

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input MeasuredText must not be created with setComputeLayout(false)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>([C)V
    .locals 2
    .param p1, "text"    # [C

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 219
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    .line 220
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 221
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    .line 223
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    .line 224
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    .line 225
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 236
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iput-object p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    .line 238
    invoke-static {}, Landroid/graphics/text/MeasuredText$Builder;->nInitBuilder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    .line 239
    return-void
.end method

.method private blacklist ensureNativePtrNoReuse()V
    .locals 4

    .line 476
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 479
    return-void

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder can not be reused."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native blacklist nAddReplacementRun(JJIIF)V
.end method

.method private static native blacklist nAddStyleRun(JJIIIIZ)V
.end method

.method private static native blacklist nBuildMeasuredText(JJ[CZZZ)J
.end method

.method private static native blacklist nFreeBuilder(J)V
.end method

.method private static native blacklist nInitBuilder()J
.end method


# virtual methods
.method public whitelist appendReplacementRun(Landroid/graphics/Paint;IF)Landroid/graphics/text/MeasuredText$Builder;
    .locals 10
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "length"    # I
    .param p3, "width"    # F

    .line 330
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "length can not be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 331
    iget v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    add-int/2addr v2, p2

    .line 332
    .local v2, "end":I
    iget-object v3, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    array-length v3, v3

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "Replacement exceeds the text length"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 333
    iget-wide v3, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    move v8, v2

    move v9, p3

    invoke-static/range {v3 .. v9}, Landroid/graphics/text/MeasuredText$Builder;->nAddReplacementRun(JJIIF)V

    .line 334
    iput v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    .line 335
    return-object p0
.end method

.method public whitelist appendStyleRun(Landroid/graphics/Paint;IZ)Landroid/graphics/text/MeasuredText$Builder;
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "length"    # I
    .param p3, "isRtl"    # Z

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;
    .locals 13
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p3, "length"    # I
    .param p4, "isRtl"    # Z

    .line 295
    move-object v0, p0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "length can not be negative"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 297
    iget v3, v0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    add-int v3, v3, p3

    .line 298
    .local v3, "end":I
    iget-object v4, v0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    array-length v4, v4

    if-gt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v4, "Style exceeds the text length"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 299
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/text/LineBreakConfig;->getLineBreakStyle()I

    move-result v1

    move v8, v1

    goto :goto_2

    .line 300
    :cond_2
    move v8, v2

    :goto_2
    nop

    .line 301
    .local v8, "lbStyle":I
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/text/LineBreakConfig;->getLineBreakWordStyle()I

    move-result v2

    move v9, v2

    goto :goto_3

    .line 302
    :cond_3
    move v9, v2

    :goto_3
    nop

    .line 303
    .local v9, "lbWordStyle":I
    iget-wide v4, v0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    iget v10, v0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    move v11, v3

    move/from16 v12, p4

    invoke-static/range {v4 .. v12}, Landroid/graphics/text/MeasuredText$Builder;->nAddStyleRun(JJIIIIZ)V

    .line 305
    iput v3, v0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    .line 307
    iget-object v1, v0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    move-object v2, p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 308
    iget v1, v0, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    iget-object v4, v0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    .line 309
    iget v1, v0, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    iget-object v4, v0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    .line 310
    return-object v0
.end method

.method public whitelist build()Landroid/graphics/text/MeasuredText;
    .locals 19

    .line 447
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Landroid/graphics/text/MeasuredText$Builder;->ensureNativePtrNoReuse()V

    .line 448
    iget v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    iget-object v2, v1, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    array-length v2, v2

    if-ne v0, v2, :cond_3

    .line 451
    iget-object v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmComputeHyphenation(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    iget-boolean v2, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The hyphenation configuration is different from given hint MeasuredText"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    if-nez v0, :cond_2

    move-wide v8, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v4

    move-wide v8, v4

    .line 457
    .local v8, "hintPtr":J
    :goto_1
    iget-wide v6, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    iget-object v10, v1, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    iget-boolean v11, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    iget-boolean v12, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    iget-boolean v13, v1, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    invoke-static/range {v6 .. v13}, Landroid/graphics/text/MeasuredText$Builder;->nBuildMeasuredText(JJ[CZZZ)J

    move-result-wide v4

    .line 459
    .local v4, "ptr":J
    new-instance v0, Landroid/graphics/text/MeasuredText;

    iget-object v13, v1, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    iget-boolean v14, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    iget-boolean v15, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    iget v6, v1, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    iget v7, v1, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    const/16 v18, 0x0

    move-object v10, v0

    move-wide v11, v4

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-direct/range {v10 .. v18}, Landroid/graphics/text/MeasuredText;-><init>(J[CZZIILandroid/graphics/text/MeasuredText-IA;)V

    .line 461
    .local v0, "res":Landroid/graphics/text/MeasuredText;
    sget-object v6, Landroid/graphics/text/MeasuredText$Builder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v6, v0, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    nop

    .line 464
    iget-wide v6, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/graphics/text/MeasuredText$Builder;->nFreeBuilder(J)V

    .line 465
    iput-wide v2, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    .line 462
    return-object v0

    .line 464
    .end local v0    # "res":Landroid/graphics/text/MeasuredText;
    .end local v4    # "ptr":J
    .end local v8    # "hintPtr":J
    :catchall_0
    move-exception v0

    iget-wide v4, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/graphics/text/MeasuredText$Builder;->nFreeBuilder(J)V

    .line 465
    iput-wide v2, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    .line 466
    throw v0

    .line 449
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Style info has not been provided for all text."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;
    .locals 3
    .param p1, "mode"    # I

    .line 399
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown hyphenation mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MeasuredText"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 415
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    goto :goto_0

    .line 409
    :pswitch_0
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 410
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 411
    goto :goto_0

    .line 405
    :pswitch_1
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 406
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 407
    goto :goto_0

    .line 401
    :pswitch_2
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 402
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 403
    nop

    .line 418
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setComputeHyphenation(Z)Landroid/graphics/text/MeasuredText$Builder;
    .locals 0
    .param p1, "computeHyphenation"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    nop

    .line 354
    nop

    .line 353
    invoke-virtual {p0, p1}, Landroid/graphics/text/MeasuredText$Builder;->setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;

    .line 355
    return-object p0
.end method

.method public whitelist setComputeLayout(Z)Landroid/graphics/text/MeasuredText$Builder;
    .locals 0
    .param p1, "computeLayout"    # Z

    .line 434
    iput-boolean p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    .line 435
    return-object p0
.end method
