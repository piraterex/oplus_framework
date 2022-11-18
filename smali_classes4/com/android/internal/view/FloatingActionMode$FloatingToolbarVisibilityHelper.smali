.class final Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
.super Ljava/lang/Object;
.source "FloatingActionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/FloatingActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarVisibilityHelper"
.end annotation


# static fields
.field private static final blacklist MIN_SHOW_DURATION_FOR_MOVE_HIDE:J = 0x1f4L


# instance fields
.field private blacklist mActive:Z

.field private blacklist mHideRequested:Z

.field private blacklist mLastShowTime:J

.field private blacklist mMoving:Z

.field private blacklist mOutOfBounds:Z

.field private final blacklist mToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

.field private blacklist mWindowFocused:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V
    .locals 1
    .param p1, "toolbar"    # Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    .line 354
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 355
    return-void
.end method


# virtual methods
.method public blacklist activate()V
    .locals 1

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    .line 359
    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mMoving:Z

    .line 360
    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    .line 363
    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mActive:Z

    .line 364
    return-void
.end method

.method public blacklist deactivate()V
    .locals 1

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mActive:Z

    .line 368
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 369
    return-void
.end method

.method public blacklist setHideRequested(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .line 372
    iput-boolean p1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    .line 373
    return-void
.end method

.method public blacklist setMoving(Z)V
    .locals 4
    .param p1, "moving"    # Z

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mLastShowTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 380
    .local v0, "showingLongEnough":Z
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 381
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mMoving:Z

    .line 383
    :cond_2
    return-void
.end method

.method public blacklist setOutOfBounds(Z)V
    .locals 0
    .param p1, "outOfBounds"    # Z

    .line 386
    iput-boolean p1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    .line 387
    return-void
.end method

.method public blacklist setWindowFocused(Z)V
    .locals 0
    .param p1, "windowFocused"    # Z

    .line 390
    iput-boolean p1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    .line 391
    return-void
.end method

.method public blacklist updateToolbarVisibility()V
    .locals 2

    .line 394
    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mActive:Z

    if-nez v0, :cond_0

    .line 395
    return-void

    .line 398
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mMoving:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->show()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mLastShowTime:J

    goto :goto_1

    .line 399
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->hide()V

    .line 404
    :goto_1
    return-void
.end method
