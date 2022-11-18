.class public final Landroid/window/SplashScreenView;
.super Landroid/widget/FrameLayout;
.source "SplashScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SplashScreenView$SplashScreenViewParcelable;,
        Landroid/window/SplashScreenView$IconAnimateListener;,
        Landroid/window/SplashScreenView$Builder;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mBrandingImageView:Landroid/view/View;

.field private blacklist mClientCallback:Landroid/os/RemoteCallback;

.field private blacklist mHasRemoved:Z

.field private blacklist mIconAnimationDuration:Ljava/time/Duration;

.field private blacklist mIconAnimationStart:Ljava/time/Instant;

.field private blacklist mIconView:Landroid/view/View;

.field private blacklist mInitBackgroundColor:I

.field private blacklist mIsCopied:Z

.field private blacklist mNotCopyable:Z

.field private blacklist mParceledBrandingBitmap:Landroid/graphics/Bitmap;

.field private blacklist mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

.field private blacklist mParceledIconBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSurfaceHost:Landroid/view/SurfaceControlViewHost;

.field private blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private blacklist mSurfacePackageCopy:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private blacklist mSurfaceView:Landroid/view/SurfaceView;

.field private final blacklist mTmpPos:[I

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private blacklist mWindow:Landroid/view/Window;


# direct methods
.method public static synthetic blacklist $r8$lambda$D0RL7Bo_UxH9XARimkg9Y6WDPms(Landroid/window/SplashScreenView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/window/SplashScreenView;->animationStartCallback(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconView(Landroid/window/SplashScreenView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfacePackageCopy(Landroid/window/SplashScreenView;)Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView;->mSurfacePackageCopy:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBrandingImageView(Landroid/window/SplashScreenView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClientCallback(Landroid/window/SplashScreenView;Landroid/os/RemoteCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView;->mClientCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIconAnimationDuration(Landroid/window/SplashScreenView;Ljava/time/Duration;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView;->mIconAnimationDuration:Ljava/time/Duration;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIconAnimationStart(Landroid/window/SplashScreenView;Ljava/time/Instant;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView;->mIconAnimationStart:Ljava/time/Instant;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIconView(Landroid/window/SplashScreenView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitBackgroundColor(Landroid/window/SplashScreenView;I)V
    .locals 0

    iput p1, p0, Landroid/window/SplashScreenView;->mInitBackgroundColor:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmParceledBrandingBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmParceledIconBackgroundBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmParceledIconBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceHost(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfacePackage(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfacePackageCopy(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView;->mSurfacePackageCopy:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceView(Landroid/window/SplashScreenView;Landroid/view/SurfaceView;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 79
    const-class v0, Landroid/window/SplashScreenView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    .line 80
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 375
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/window/SplashScreenView;->mTmpPos:[I

    .line 376
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 380
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/window/SplashScreenView;->mTmpPos:[I

    .line 381
    return-void
.end method

.method private blacklist animationStartCallback(J)V
    .locals 2
    .param p1, "animDuration"    # J

    .line 503
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView;->mIconAnimationStart:Ljava/time/Instant;

    .line 504
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 505
    invoke-static {p1, p2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView;->mIconAnimationDuration:Ljava/time/Duration;

    .line 507
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$syncTransferSurfaceOnDraw$0(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 3
    .param p0, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "parent"    # Landroid/view/SurfaceControl;

    .line 469
    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 470
    const-string v2, "SurfacePackage\'surface reparented to %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist releaseAnimationSurfaceHost()V
    .locals 5

    .line 601
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Landroid/window/SplashScreenView;->mIsCopied:Z

    if-nez v2, :cond_1

    .line 602
    sget-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shell removed splash screen. Releasing SurfaceControlViewHost on thread #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 606
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/window/SplashScreenView;->releaseIconHost(Landroid/view/SurfaceControlViewHost;)V

    .line 609
    iput-object v1, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    goto :goto_0

    .line 610
    :cond_1
    iget-object v2, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 611
    iput-object v1, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 612
    iget-object v0, p0, Landroid/window/SplashScreenView;->mClientCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 614
    :cond_2
    :goto_0
    return-void
.end method

.method public static blacklist releaseIconHost(Landroid/view/SurfaceControlViewHost;)V
    .locals 2
    .param p0, "host"    # Landroid/view/SurfaceControlViewHost;

    .line 621
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 622
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/window/SplashScreenView$IconAnimateListener;

    if-eqz v1, :cond_0

    .line 623
    move-object v1, v0

    check-cast v1, Landroid/window/SplashScreenView$IconAnimateListener;

    invoke-interface {v1}, Landroid/window/SplashScreenView$IconAnimateListener;->stopAnimation()V

    .line 625
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 626
    return-void
.end method


# virtual methods
.method public blacklist attachHostWindow(Landroid/view/Window;)V
    .locals 0
    .param p1, "window"    # Landroid/view/Window;

    .line 634
    iput-object p1, p0, Landroid/window/SplashScreenView;->mWindow:Landroid/view/Window;

    .line 635
    return-void
.end method

.method public blacklist getBrandingView()Landroid/view/View;
    .locals 1

    .line 651
    iget-object v0, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getIconAnimationDuration()Ljava/time/Duration;
    .locals 1

    .line 448
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconAnimationDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getIconAnimationStart()Ljava/time/Instant;
    .locals 1

    .line 456
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconAnimationStart:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getIconView()Landroid/view/View;
    .locals 1

    .line 642
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getInitBackgroundColor()I
    .locals 1

    .line 659
    iget v0, p0, Landroid/window/SplashScreenView;->mInitBackgroundColor:I

    return v0
.end method

.method public blacklist getSurfaceHost()Landroid/view/SurfaceControlViewHost;
    .locals 1

    .line 421
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    return-object v0
.end method

.method blacklist initIconAnimation(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 478
    instance-of v0, p1, Landroid/window/SplashScreenView$IconAnimateListener;

    if-nez v0, :cond_0

    .line 479
    return-void

    .line 481
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/window/SplashScreenView$IconAnimateListener;

    .line 482
    .local v0, "aniDrawable":Landroid/window/SplashScreenView$IconAnimateListener;
    new-instance v1, Landroid/window/SplashScreenView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/window/SplashScreenView$$ExternalSyntheticLambda0;-><init>(Landroid/window/SplashScreenView;)V

    invoke-interface {v0, v1}, Landroid/window/SplashScreenView$IconAnimateListener;->prepareAnimate(Ljava/util/function/LongConsumer;)V

    .line 483
    new-instance v1, Landroid/window/SplashScreenView$1;

    invoke-direct {v1, p0}, Landroid/window/SplashScreenView$1;-><init>(Landroid/window/SplashScreenView;)V

    invoke-interface {v0, v1}, Landroid/window/SplashScreenView$IconAnimateListener;->setAnimationJankMonitoring(Landroid/animation/AnimatorListenerAdapter;)V

    .line 500
    return-void
.end method

.method public blacklist isCopyable()Z
    .locals 1

    .line 396
    iget-boolean v0, p0, Landroid/window/SplashScreenView;->mNotCopyable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist onCopied()V
    .locals 2

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SplashScreenView;->mIsCopied:Z

    .line 406
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    sget-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 410
    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    const-string v1, "Setting SurfaceView\'s SurfacePackage to null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 416
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 0

    .line 557
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 558
    invoke-direct {p0}, Landroid/window/SplashScreenView;->releaseAnimationSurfaceHost()V

    .line 559
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 563
    move-object v0, p0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 565
    iget-object v1, v0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    iget-object v2, v0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 566
    iget-object v1, v0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 567
    .local v1, "brandingHeight":I
    if-eqz v1, :cond_5

    iget-object v2, v0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    if-nez v2, :cond_0

    goto :goto_1

    .line 570
    :cond_0
    iget-object v2, v0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 571
    .local v2, "visibility":I
    if-eqz v2, :cond_1

    .line 572
    return-void

    .line 574
    :cond_1
    sub-int v3, p5, p3

    .line 576
    .local v3, "currentHeight":I
    iget-object v4, v0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    iget-object v5, v0, Landroid/window/SplashScreenView;->mTmpPos:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 577
    iget-object v4, v0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    iget-object v5, v0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 578
    iget-object v4, v0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 580
    .local v4, "iconHeight":I
    iget-object v5, v0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    .line 581
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 582
    .local v5, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v5, :cond_2

    .line 583
    sget-object v6, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    const-string v7, "Unable to adjust branding image layout, layout changed?"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void

    .line 586
    :cond_2
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 587
    .local v6, "marginBottom":I
    iget-object v7, v0, Landroid/window/SplashScreenView;->mTmpPos:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int v7, v3, v7

    sub-int/2addr v7, v4

    .line 588
    .local v7, "remainingHeight":I
    sub-int v8, v7, v1

    .line 589
    .local v8, "remainingMaxMargin":I
    if-ge v7, v1, :cond_3

    .line 591
    iget-object v9, v0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 592
    :cond_3
    if-ge v8, v6, :cond_4

    .line 594
    int-to-double v9, v8

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 595
    iget-object v9, v0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    :cond_4
    :goto_0
    return-void

    .line 568
    .end local v2    # "visibility":I
    .end local v3    # "currentHeight":I
    .end local v4    # "iconHeight":I
    .end local v5    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "marginBottom":I
    .end local v7    # "remainingHeight":I
    .end local v8    # "remainingMaxMargin":I
    :cond_5
    :goto_1
    return-void
.end method

.method public whitelist remove()V
    .locals 4

    .line 516
    iget-boolean v0, p0, Landroid/window/SplashScreenView;->mHasRemoved:Z

    if-eqz v0, :cond_0

    .line 517
    return-void

    .line 519
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/window/SplashScreenView;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 522
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 523
    :cond_1
    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 526
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 527
    iput-object v1, p0, Landroid/window/SplashScreenView;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    .line 529
    :cond_3
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 530
    iget-object v0, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 531
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 532
    iput-object v1, p0, Landroid/window/SplashScreenView;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    .line 534
    :cond_4
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 535
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 536
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 538
    :cond_5
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 539
    iput-object v1, p0, Landroid/window/SplashScreenView;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 541
    :cond_6
    iget-object v0, p0, Landroid/window/SplashScreenView;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_9

    .line 542
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    .line 543
    .local v0, "decorView":Lcom/android/internal/policy/DecorView;
    sget-boolean v2, Landroid/window/SplashScreenView;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 544
    sget-object v2, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "remove starting view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_7
    if-eqz v0, :cond_8

    .line 547
    invoke-virtual {v0, p0}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 549
    :cond_8
    iput-object v1, p0, Landroid/window/SplashScreenView;->mWindow:Landroid/view/Window;

    .line 551
    .end local v0    # "decorView":Lcom/android/internal/policy/DecorView;
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SplashScreenView;->mHasRemoved:Z

    .line 552
    return-void
.end method

.method public whitelist setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .line 426
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 430
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 433
    :cond_0
    return-void
.end method

.method public blacklist setNotCopyable()V
    .locals 1

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SplashScreenView;->mNotCopyable:Z

    .line 389
    return-void
.end method

.method public blacklist syncTransferSurfaceOnDraw()V
    .locals 3

    .line 464
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_0

    .line 465
    return-void

    .line 467
    :cond_0
    sget-boolean v1, Landroid/window/SplashScreenView;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 468
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v1, Landroid/window/SplashScreenView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/window/SplashScreenView$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z

    .line 471
    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transferring surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 475
    return-void
.end method
