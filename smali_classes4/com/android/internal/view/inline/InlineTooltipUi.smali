.class public final Lcom/android/internal/view/inline/InlineTooltipUi;
.super Landroid/widget/PopupWindow;
.source "InlineTooltipUi.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;
    }
.end annotation


# static fields
.field private static final blacklist FIRST_TIME_SHOW_DEFAULT_DELAY_MS:I = 0xfa

.field private static final blacklist TAG:Ljava/lang/String; = "InlineTooltipUi"


# instance fields
.field private final blacklist mAnchorOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final blacklist mAnchoredOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final blacklist mContentContainer:Landroid/view/ViewGroup;

.field private blacklist mDelayShowAtStart:Z

.field private blacklist mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

.field private blacklist mDelaying:Z

.field private blacklist mHasEverDetached:Z

.field private blacklist mShowDelayConfigMs:I

.field private blacklist mShowing:Z

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private blacklist mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasEverDetached(Lcom/android/internal/view/inline/InlineTooltipUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mHasEverDetached:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDelaying(Lcom/android/internal/view/inline/InlineTooltipUi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelaying:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasEverDetached(Lcom/android/internal/view/inline/InlineTooltipUi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mHasEverDetached:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$madjustPosition(Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->adjustPosition()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateInner(Lcom/android/internal/view/inline/InlineTooltipUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->updateInner(Landroid/view/View;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowAtStart:Z

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelaying:Z

    .line 66
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mTmpRect:Landroid/graphics/Rect;

    .line 68
    new-instance v2, Lcom/android/internal/view/inline/InlineTooltipUi$1;

    invoke-direct {v2, p0}, Lcom/android/internal/view/inline/InlineTooltipUi$1;-><init>(Lcom/android/internal/view/inline/InlineTooltipUi;)V

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchorOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 82
    new-instance v2, Lcom/android/internal/view/inline/InlineTooltipUi$2;

    invoke-direct {v2, p0}, Lcom/android/internal/view/inline/InlineTooltipUi$2;-><init>(Lcom/android/internal/view/inline/InlineTooltipUi;)V

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchoredOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 103
    new-instance v2, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/content/ContextWrapper;

    invoke-direct {v3, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    .line 104
    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWm:Landroid/view/WindowManager;

    .line 108
    const-string v2, "autofill"

    const-string v3, "autofill_inline_tooltip_first_show_delay"

    const/16 v4, 0xfa

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowDelayConfigMs:I

    .line 113
    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setTouchModal(Z)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setOutsideTouchable(Z)V

    .line 115
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setInputMethodMode(I)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setFocusable(Z)V

    .line 117
    return-void
.end method

.method private blacklist adjustPosition()V
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 306
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->update(Landroid/view/View;)V

    .line 308
    return-void
.end method

.method private blacklist getPreferHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 218
    .local v0, "achoredHeight":I
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private blacklist hide()V
    .locals 3

    .line 342
    const-string v0, "InlineTooltipUi"

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z

    if-eqz v1, :cond_1

    .line 343
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 344
    const-string v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchoredOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 347
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 348
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_1
    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Exception hiding window "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method private blacklist removeDelayShowTooltip(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    .line 193
    :cond_0
    return-void
.end method

.method private blacklist show(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 311
    const-string v0, "InlineTooltipUi"

    iput-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 314
    :try_start_0
    const-string v1, "android"

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 315
    const-string v1, "Autofill Inline Tooltip"

    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    iget-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z

    if-nez v1, :cond_1

    .line 317
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 318
    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    const/16 v1, 0x28

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 322
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x400000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 324
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchoredOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 325
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z

    goto :goto_0

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception showing window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 330
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 331
    .local v1, "e":Landroid/view/WindowManager$BadTokenException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed with token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gone."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v1    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_0
    nop

    .line 338
    :goto_1
    return-void
.end method

.method private blacklist updateInner(Landroid/view/View;)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;

    .line 196
    iget-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mHasEverDetached:Z

    if-eqz v0, :cond_0

    .line 197
    return-void

    .line 200
    :cond_0
    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setWindowLayoutType(I)V

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->getPreferHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 204
    .local v0, "offsetY":I
    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setWidth(I)V

    .line 206
    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setHeight(I)V

    .line 207
    const/4 v1, 0x0

    const/16 v2, 0x31

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/internal/view/inline/InlineTooltipUi;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_0

    .line 209
    :cond_1
    const/4 v4, 0x0

    const/4 v6, -0x2

    const/4 v7, -0x2

    move-object v2, p0

    move-object v3, p1

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/view/inline/InlineTooltipUi;->update(Landroid/view/View;IIII)V

    .line 212
    :goto_0
    return-void
.end method


# virtual methods
.method protected blacklist attachToAnchor(Landroid/view/View;III)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchorOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 275
    return-void
.end method

.method public whitelist test-api close()V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->dismiss()V

    .line 132
    return-void
.end method

.method protected blacklist detachFromAnchor()V
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchorOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->removeDelayShowTooltip(Landroid/view/View;)V

    .line 284
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mHasEverDetached:Z

    .line 285
    invoke-super {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 286
    return-void
.end method

.method public whitelist dismiss()V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setTransitioningToDismiss(Z)V

    .line 296
    invoke-direct {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->hide()V

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->detachFromAnchor()V

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 301
    :cond_1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 302
    return-void

    .line 291
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 425
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 428
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Window: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 431
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "showing: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 432
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "view: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 433
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "params: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 436
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "screen coordinates: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 438
    const-string v1, "N/A"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v1

    .line 441
    .local v1, "coordinates":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 444
    .end local v0    # "prefix2":Ljava/lang/String;
    .end local v1    # "coordinates":[I
    :cond_2
    :goto_0
    return-void
.end method

.method protected blacklist findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "gravity"    # I
    .param p8, "allowScroll"    # Z

    .line 224
    invoke-super/range {p0 .. p8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    .line 228
    .local v0, "isAbove":Z
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 229
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mTmpRect:Landroid/graphics/Rect;

    .line 231
    .local v2, "r":Landroid/graphics/Rect;
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 232
    if-eqz v0, :cond_0

    .line 233
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->getPreferHeight(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 235
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 239
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist getAnimationStyle()I
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getContentView()Landroid/view/View;
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public whitelist getElevation()F
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .locals 2

    .line 385
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist hasContentView()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist hasDecorView()Z
    .locals 1

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .line 395
    if-nez p1, :cond_0

    .line 398
    return-void

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .line 402
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 412
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setTooltipView(Landroid/widget/inline/InlineContentView;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/inline/InlineContentView;

    .line 124
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 125
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 127
    return-void
.end method

.method public whitelist setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .line 417
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist showAsDropDown(Landroid/view/View;III)V
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setShowing(Z)V

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setDropDown(Z)V

    .line 260
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/view/inline/InlineTooltipUi;->attachToAnchor(Landroid/view/View;III)V

    .line 261
    nop

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 261
    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 263
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getAllowScrollingAnchorParent()Z

    move-result v9

    .line 263
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/view/inline/InlineTooltipUi;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    .line 265
    .local v1, "aboveAnchor":Z
    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->updateAboveAnchor(Z)V

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 268
    invoke-direct {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->show(Landroid/view/WindowManager$LayoutParams;)V

    .line 269
    return-void
.end method

.method public blacklist update(Landroid/view/View;)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;

    .line 153
    if-nez p1, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "oldAnchor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->removeDelayShowTooltip(Landroid/view/View;)V

    .line 158
    :cond_0
    return-void

    .line 161
    .end local v0    # "oldAnchor":Landroid/view/View;
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowAtStart:Z

    if-eqz v0, :cond_3

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowAtStart:Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelaying:Z

    .line 167
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    if-nez v0, :cond_2

    .line 168
    new-instance v0, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;-><init>(Lcom/android/internal/view/inline/InlineTooltipUi;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    .line 171
    :cond_2
    iget v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowDelayConfigMs:I

    .line 173
    .local v0, "delayTimeMs":I
    nop

    .line 174
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "animator_duration_scale"

    .line 173
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .local v1, "scale":F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 179
    .end local v1    # "scale":F
    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "delayTimeMs":I
    goto :goto_1

    .line 181
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelaying:Z

    if-nez v0, :cond_4

    .line 184
    invoke-direct {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->updateInner(Landroid/view/View;)V

    goto :goto_2

    .line 181
    :cond_4
    :goto_1
    nop

    .line 186
    :goto_2
    return-void
.end method

.method protected blacklist update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0, p2}, Lcom/android/internal/view/inline/InlineTooltipUi;->show(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->hide()V

    .line 250
    :goto_0
    return-void
.end method
