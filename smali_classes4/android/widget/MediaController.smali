.class public Landroid/widget/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final greylist-max-o sDefaultTimeout:I = 0xbb8


# instance fields
.field private final greylist-max-o mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private greylist mAnchor:Landroid/view/View;

.field private final blacklist mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final blacklist mBackCallback:Landroid/window/OnBackInvokedCallback;

.field private blacklist mBackCallbackRegistered:Z

.field private final greylist mContext:Landroid/content/Context;

.field private greylist-max-p mCurrentTime:Landroid/widget/TextView;

.field private greylist mDecor:Landroid/view/View;

.field private greylist mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private greylist-max-o mDragging:Z

.field private greylist-max-p mEndTime:Landroid/widget/TextView;

.field private final greylist-max-o mFadeOut:Ljava/lang/Runnable;

.field private greylist mFfwdButton:Landroid/widget/ImageButton;

.field private final greylist mFfwdListener:Landroid/view/View$OnClickListener;

.field greylist-max-o mFormatBuilder:Ljava/lang/StringBuilder;

.field greylist-max-o mFormatter:Ljava/util/Formatter;

.field private greylist-max-o mFromXml:Z

.field private final greylist-max-o mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private greylist-max-o mListenersSet:Z

.field private greylist-max-p mNextButton:Landroid/widget/ImageButton;

.field private greylist-max-o mNextListener:Landroid/view/View$OnClickListener;

.field private greylist mPauseButton:Landroid/widget/ImageButton;

.field private greylist-max-o mPauseDescription:Ljava/lang/CharSequence;

.field private final greylist-max-o mPauseListener:Landroid/view/View$OnClickListener;

.field private greylist-max-o mPlayDescription:Ljava/lang/CharSequence;

.field private greylist mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private greylist-max-p mPrevButton:Landroid/widget/ImageButton;

.field private greylist-max-o mPrevListener:Landroid/view/View$OnClickListener;

.field private greylist mProgress:Landroid/widget/ProgressBar;

.field private greylist mRewButton:Landroid/widget/ImageButton;

.field private final greylist mRewListener:Landroid/view/View$OnClickListener;

.field private greylist mRoot:Landroid/view/View;

.field private final greylist mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final greylist-max-o mShowProgress:Ljava/lang/Runnable;

.field private greylist mShowing:Z

.field private final greylist-max-o mTouchListener:Landroid/view/View$OnTouchListener;

.field private final greylist-max-o mUseFastForward:Z

.field private greylist mWindow:Landroid/view/Window;

.field private greylist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentTime(Landroid/widget/MediaController;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDecor(Landroid/widget/MediaController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDecorLayoutParams(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDragging(Landroid/widget/MediaController;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/MediaController;->mDragging:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlayer(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .locals 0

    iget-object p0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowProgress(Landroid/widget/MediaController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowing(Landroid/widget/MediaController;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/MediaController;->mShowing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowManager(Landroid/widget/MediaController;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDragging(Landroid/widget/MediaController;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/MediaController;->mDragging:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoPauseResume(Landroid/widget/MediaController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterOnBackInvokedCallback(Landroid/widget/MediaController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/MediaController;->registerOnBackInvokedCallback()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetProgress(Landroid/widget/MediaController;)I
    .locals 0

    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstringForTime(Landroid/widget/MediaController;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterOnBackInvokedCallback(Landroid/widget/MediaController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/MediaController;->unregisterOnBackInvokedCallback()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateFloatingWindowLayout(Landroid/widget/MediaController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePausePlay(Landroid/widget/MediaController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    .line 166
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    new-instance v0, Landroid/widget/MediaController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$$ExternalSyntheticLambda0;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 127
    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 225
    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 238
    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 446
    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    .line 453
    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    .line 574
    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 616
    new-instance v0, Landroid/widget/MediaController$7;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 690
    new-instance v0, Landroid/widget/MediaController$8;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$8;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 703
    new-instance v0, Landroid/widget/MediaController$9;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$9;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 142
    iput-object p0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 143
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 145
    iput-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    .line 146
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 147
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useFastForward"    # Z

    .line 156
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v0, Landroid/widget/MediaController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$$ExternalSyntheticLambda0;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 127
    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 225
    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 238
    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 446
    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    .line 453
    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    .line 574
    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 616
    new-instance v0, Landroid/widget/MediaController$7;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 690
    new-instance v0, Landroid/widget/MediaController$8;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$8;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 703
    new-instance v0, Landroid/widget/MediaController$9;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$9;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 157
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 158
    iput-boolean p2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 159
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindowLayout()V

    .line 160
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindow()V

    .line 161
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 162
    return-void
.end method

.method private greylist-max-o disableUnsupportedButtons()V
    .locals 2

    .line 365
    :try_start_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 368
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 371
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_2

    .line 372
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 381
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_3

    .line 382
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_3
    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 390
    :goto_0
    return-void
.end method

.method private greylist-max-o doPauseResume()V
    .locals 1

    .line 597
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    goto :goto_0

    .line 600
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 602
    :goto_0
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 603
    return-void
.end method

.method private greylist-max-o initControllerView(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 297
    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 298
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 299
    const v1, 0x1040525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MediaController;->mPlayDescription:Ljava/lang/CharSequence;

    .line 300
    nop

    .line 301
    const v1, 0x1040524

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MediaController;->mPauseDescription:Ljava/lang/CharSequence;

    .line 302
    const v1, 0x102041b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 303
    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 305
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :cond_0
    const v1, 0x10202cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 309
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 310
    iget-object v4, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_2

    .line 312
    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 316
    :cond_2
    const v1, 0x1020477

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 317
    if-eqz v1, :cond_4

    .line 318
    iget-object v4, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_4

    .line 320
    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 325
    :cond_4
    const v1, 0x10203d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 326
    if-eqz v1, :cond_5

    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Landroid/widget/MediaController;->mListenersSet:Z

    if-nez v2, :cond_5

    .line 327
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 329
    :cond_5
    const v1, 0x1020441

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 330
    if-eqz v1, :cond_6

    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/widget/MediaController;->mListenersSet:Z

    if-nez v2, :cond_6

    .line 331
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 334
    :cond_6
    const v1, 0x10203a6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 335
    if-eqz v1, :cond_8

    .line 336
    instance-of v2, v1, Landroid/widget/SeekBar;

    if-eqz v2, :cond_7

    .line 337
    check-cast v1, Landroid/widget/SeekBar;

    .line 338
    .local v1, "seeker":Landroid/widget/SeekBar;
    iget-object v2, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 340
    .end local v1    # "seeker":Landroid/widget/SeekBar;
    :cond_7
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 343
    :cond_8
    const v1, 0x102052e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    .line 344
    const v1, 0x1020531

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 346
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    .line 348
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    .line 349
    return-void
.end method

.method private greylist-max-o initFloatingWindow()V
    .locals 3

    .line 169
    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    .line 170
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    .line 171
    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 173
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    .line 174
    iget-object v2, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/MediaController;->mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 176
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 181
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 183
    invoke-virtual {p0, v1}, Landroid/widget/MediaController;->setFocusable(Z)V

    .line 184
    invoke-virtual {p0, v1}, Landroid/widget/MediaController;->setFocusableInTouchMode(Z)V

    .line 185
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->setDescendantFocusability(I)V

    .line 186
    invoke-virtual {p0}, Landroid/widget/MediaController;->requestFocus()Z

    .line 187
    return-void
.end method

.method private greylist-max-o initFloatingWindowLayout()V
    .locals 4

    .line 193
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 194
    iget-object v0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 195
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 196
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 197
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 198
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 199
    const/16 v2, 0x3e8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 200
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x820020

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 203
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 204
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 205
    return-void
.end method

.method private greylist-max-o installPrevNextListeners()V
    .locals 4

    .line 717
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 718
    iget-object v3, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 722
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 723
    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 726
    :cond_3
    return-void
.end method

.method private blacklist registerOnBackInvokedCallback()V
    .locals 4

    .line 760
    iget-boolean v0, p0, Landroid/widget/MediaController;->mBackCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 761
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 765
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 766
    invoke-static {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/MediaController;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-virtual {v1, v2, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 770
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/MediaController;->mBackCallbackRegistered:Z

    .line 772
    :cond_1
    return-void
.end method

.method private greylist-max-o setProgress()I
    .locals 7

    .line 479
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Landroid/widget/MediaController;->mDragging:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 483
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v1

    .line 484
    .local v1, "duration":I
    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_2

    .line 485
    if-lez v1, :cond_1

    .line 487
    const-wide/16 v3, 0x3e8

    int-to-long v5, v0

    mul-long/2addr v5, v3

    int-to-long v3, v1

    div-long/2addr v5, v3

    .line 488
    .local v5, "pos":J
    long-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 490
    .end local v5    # "pos":J
    :cond_1
    iget-object v2, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v2

    .line 491
    .local v2, "percent":I
    iget-object v3, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v4, v2, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 494
    .end local v2    # "percent":I
    :cond_2
    iget-object v2, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 495
    invoke-direct {p0, v1}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    :cond_3
    iget-object v2, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 497
    invoke-direct {p0, v0}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    :cond_4
    return v0

    .line 480
    .end local v0    # "position":I
    .end local v1    # "duration":I
    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o stringForTime(I)Ljava/lang/String;
    .locals 10
    .param p1, "timeMs"    # I

    .line 464
    div-int/lit16 v0, p1, 0x3e8

    .line 466
    .local v0, "totalSeconds":I
    rem-int/lit8 v1, v0, 0x3c

    .line 467
    .local v1, "seconds":I
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 468
    .local v2, "minutes":I
    div-int/lit16 v3, v0, 0xe10

    .line 470
    .local v3, "hours":I
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 471
    const/4 v4, 0x1

    const/4 v6, 0x2

    if-lez v3, :cond_0

    .line 472
    iget-object v7, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v6

    const-string v4, "%d:%02d:%02d"

    invoke-virtual {v7, v4, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 474
    :cond_0
    iget-object v7, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    const-string v4, "%02d:%02d"

    invoke-virtual {v7, v4, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private blacklist unregisterOnBackInvokedCallback()V
    .locals 3

    .line 746
    iget-boolean v0, p0, Landroid/widget/MediaController;->mBackCallbackRegistered:Z

    if-nez v0, :cond_0

    .line 747
    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 750
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 751
    invoke-static {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MediaController;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 754
    invoke-virtual {v1, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 756
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/MediaController;->mBackCallbackRegistered:Z

    .line 757
    return-void
.end method

.method private greylist-max-o updateFloatingWindowLayout()V
    .locals 6

    .line 210
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 211
    .local v1, "anchorPos":[I
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 215
    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v5, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 216
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 215
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 218
    iget-object v2, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 219
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 220
    const/4 v3, 0x0

    aget v3, v1, v3

    iget-object v4, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v4, v5

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 221
    const/4 v0, 0x1

    aget v0, v1, v0

    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 222
    return-void
.end method

.method private greylist updatePausePlay()V
    .locals 2

    .line 584
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_1

    .line 587
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 589
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mPauseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 591
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 592
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mPlayDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 594
    :goto_0
    return-void

    .line 585
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 528
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 529
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 530
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 531
    .local v1, "uniqueDown":Z
    :goto_0
    const/16 v3, 0x4f

    const/16 v4, 0xbb8

    if-eq v0, v3, :cond_c

    const/16 v3, 0x55

    if-eq v0, v3, :cond_c

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_1

    goto :goto_4

    .line 542
    :cond_1
    const/16 v3, 0x7e

    if-ne v0, v3, :cond_3

    .line 543
    if-eqz v1, :cond_2

    iget-object v3, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_2

    .line 544
    iget-object v3, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 545
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 546
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    .line 548
    :cond_2
    return v2

    .line 549
    :cond_3
    const/16 v3, 0x56

    if-eq v0, v3, :cond_a

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_4

    goto :goto_3

    .line 557
    :cond_4
    const/16 v3, 0x19

    if-eq v0, v3, :cond_9

    const/16 v3, 0x18

    if-eq v0, v3, :cond_9

    const/16 v3, 0xa4

    if-eq v0, v3, :cond_9

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 563
    :cond_5
    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    const/16 v3, 0x52

    if-ne v0, v3, :cond_6

    goto :goto_1

    .line 570
    :cond_6
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    .line 571
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 564
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 565
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    .line 567
    :cond_8
    return v2

    .line 562
    :cond_9
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 551
    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    iget-object v3, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 552
    iget-object v3, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 553
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 554
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    .line 556
    :cond_b
    return v2

    .line 534
    :cond_c
    :goto_4
    if-eqz v1, :cond_d

    .line 535
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    .line 536
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    .line 537
    iget-object v3, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_d

    .line 538
    invoke-virtual {v3}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 541
    :cond_d
    return v2
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 687
    const-class v0, Landroid/widget/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hide()V
    .locals 3

    .line 431
    iget-object v0, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-nez v0, :cond_0

    .line 432
    return-void

    .line 434
    :cond_0
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    if-eqz v0, :cond_1

    .line 436
    :try_start_0
    iget-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 437
    iget-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    .line 442
    invoke-direct {p0}, Landroid/widget/MediaController;->unregisterOnBackInvokedCallback()V

    .line 444
    :cond_1
    return-void
.end method

.method public whitelist isShowing()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    return v0
.end method

.method protected greylist-max-o makeControllerView()Landroid/view/View;
    .locals 3

    .line 288
    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 289
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v1, 0x10900a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 291
    invoke-direct {p0, v1}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    .line 293
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public whitelist onFinishInflate()V
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, v0}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    .line 153
    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 512
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    .line 513
    goto :goto_0

    .line 509
    :pswitch_2
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 510
    goto :goto_0

    .line 506
    :pswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 507
    nop

    .line 517
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 522
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setAnchorView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 263
    iget-object v0, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 266
    :cond_0
    iput-object p1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 267
    if-eqz p1, :cond_1

    .line 268
    iget-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 271
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 276
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/MediaController;->removeAllViews()V

    .line 277
    invoke-virtual {p0}, Landroid/widget/MediaController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 278
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Landroid/widget/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 663
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 666
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 669
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 670
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 672
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 673
    if-eqz p1, :cond_3

    iget-object v3, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 675
    :cond_4
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    .line 676
    if-eqz p1, :cond_5

    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 678
    :cond_6
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 679
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 681
    :cond_7
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    .line 682
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 683
    return-void
.end method

.method public whitelist setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 0
    .param p1, "player"    # Landroid/widget/MediaController$MediaPlayerControl;

    .line 251
    iput-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 252
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 253
    return-void
.end method

.method public whitelist setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "next"    # Landroid/view/View$OnClickListener;
    .param p2, "prev"    # Landroid/view/View$OnClickListener;

    .line 729
    iput-object p1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 730
    iput-object p2, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MediaController;->mListenersSet:Z

    .line 733
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 734
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    .line 736
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v2, :cond_0

    .line 737
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 739
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v2, :cond_1

    .line 740
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 743
    :cond_1
    return-void
.end method

.method public whitelist show()V
    .locals 1

    .line 356
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 357
    return-void
.end method

.method public whitelist show(I)V
    .locals 3
    .param p1, "timeout"    # I

    .line 399
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 400
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    .line 401
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 404
    :cond_0
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    .line 405
    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    .line 406
    iget-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    .line 409
    :cond_1
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 414
    iget-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->post(Ljava/lang/Runnable;)Z

    .line 416
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    iget-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 418
    iget-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/MediaController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 420
    :cond_2
    invoke-direct {p0}, Landroid/widget/MediaController;->registerOnBackInvokedCallback()V

    .line 421
    return-void
.end method
