.class public final Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;
.super Ljava/lang/Object;
.source "BackgroundBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Aggregator"
.end annotation


# instance fields
.field private final blacklist mDrawables:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFrameRtUpdates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mHasUiUpdates:Z

.field private blacklist mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

.field private blacklist mLastFrameNumber:J

.field private blacklist mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final blacklist mRtLock:Ljava/lang/Object;

.field private blacklist mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mRtLock:Ljava/lang/Object;

    .line 254
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    .line 255
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    .line 257
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameNumber:J

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 260
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 265
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 266
    return-void
.end method

.method private blacklist handleDispatchBlurTransactionLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V
    .locals 2
    .param p1, "frameNumber"    # J
    .param p3, "blurRegions"    # [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .param p4, "forceUpdate"    # Z

    .line 440
    nop

    .line 441
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->getBlurRegionsForFrameLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)[[F

    move-result-object v0

    .line 442
    .local v0, "blurRegionsArray":[[F
    if-eqz v0, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchBlurRegions([[FJ)V

    .line 445
    :cond_0
    return-void
.end method

.method private blacklist registerPreDrawListener()V
    .locals 2

    .line 313
    new-instance v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;)V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 336
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 337
    return-void
.end method


# virtual methods
.method public blacklist createBackgroundBlurDrawable(Landroid/content/Context;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 272
    new-instance v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable-IA;)V

    .line 273
    .local v0, "drawable":Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    .line 275
    return-object v0
.end method

.method public blacklist getBlurRegionsCopyForRT()[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .locals 4

    .line 382
    iget-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    new-instance v2, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iget-object v3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-direct {v2, v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    aput-object v2, v1, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    return-object v0
.end method

.method public blacklist getBlurRegionsForFrameLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)[[F
    .locals 4
    .param p1, "frameNumber"    # J
    .param p3, "blurRegionsForFrame"    # [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .param p4, "forceUpdate"    # Z

    .line 402
    const/4 v0, 0x0

    if-nez p4, :cond_1

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    .line 403
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_1

    .line 404
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 412
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gtz v1, :cond_3

    .line 413
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 414
    .local v1, "frameUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 415
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 416
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 418
    .end local v1    # "frameUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    .end local v2    # "i":I
    :cond_2
    goto :goto_0

    .line 420
    :cond_3
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 421
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blur regions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_4
    array-length v0, p3

    new-array v0, v0, [[F

    .line 425
    .local v0, "blurRegionsArray":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 426
    aget-object v2, p3, v1

    invoke-virtual {v2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->toFloatArray()[F

    move-result-object v2

    aput-object v2, v0, v1

    .line 427
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 428
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p3, v1

    invoke-virtual {v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 431
    .end local v1    # "i":I
    :cond_6
    return-object v0
.end method

.method public blacklist hasRegions()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasUpdates()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    return v0
.end method

.method synthetic blacklist lambda$registerPreDrawListener$0$com-android-internal-graphics-drawable-BackgroundBlurDrawable$Aggregator([Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;ZJ)V
    .locals 2
    .param p1, "blurRegionsForNextFrame"    # [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .param p2, "hasUiUpdates"    # Z
    .param p3, "frame"    # J

    .line 320
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mRtLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iput-wide p3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameNumber:J

    .line 322
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 323
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->handleDispatchBlurTransactionLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V

    .line 325
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$registerPreDrawListener$1$com-android-internal-graphics-drawable-BackgroundBlurDrawable$Aggregator()Z
    .locals 4

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasUpdates()Z

    move-result v0

    .line 316
    .local v0, "hasUiUpdates":Z
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasRegions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->getBlurRegionsCopyForRT()[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    move-result-object v1

    .line 319
    .local v1, "blurRegionsForNextFrame":[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    new-instance v3, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 328
    .end local v1    # "blurRegionsForNextFrame":[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasRegions()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 330
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 331
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 333
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method blacklist onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V
    .locals 5
    .param p1, "drawable"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 283
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurRadius(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmVisible(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 285
    .local v0, "shouldBeDrawn":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 286
    .local v2, "isDrawn":Z
    if-eqz v0, :cond_2

    .line 287
    iput-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    .line 288
    if-nez v2, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    :cond_1
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 298
    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 299
    iput-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    .line 300
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 301
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 302
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasRegions()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 308
    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->registerPreDrawListener()V

    .line 310
    :cond_4
    return-void
.end method

.method blacklist onRenderNodePositionChanged(JLjava/lang/Runnable;)V
    .locals 4
    .param p1, "frameNumber"    # J
    .param p3, "update"    # Ljava/lang/Runnable;

    .line 343
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mRtLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 345
    .local v1, "frameRtUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    if-nez v1, :cond_0

    .line 346
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 347
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 349
    :cond_0
    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 351
    iget-wide v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameNumber:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->handleDispatchBlurTransactionLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V

    .line 356
    .end local v1    # "frameRtUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    :cond_1
    monitor-exit v0

    .line 358
    return-void

    .line 356
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
