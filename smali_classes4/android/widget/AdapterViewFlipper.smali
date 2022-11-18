.class public Landroid/widget/AdapterViewFlipper;
.super Landroid/widget/AdapterViewAnimator;
.source "AdapterViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_INTERVAL:I = 0x2710

.field private static final greylist-max-o LOGD:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private greylist-max-o mAdvancedByHost:Z

.field private greylist-max-o mAutoStart:Z

.field private greylist-max-o mFlipInterval:I

.field private final greylist-max-o mFlipRunnable:Ljava/lang/Runnable;

.field private final greylist-max-o mReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mRunning:Z

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mUserPresent:Z

.field private greylist-max-o mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRunning(Landroid/widget/AdapterViewFlipper;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserPresent(Landroid/widget/AdapterViewFlipper;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateRunning(Landroid/widget/AdapterViewFlipper;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateRunning(Landroid/widget/AdapterViewFlipper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;)V

    .line 45
    const/16 v0, 0x2710

    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 48
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    .line 49
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 50
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    .line 52
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    .line 85
    new-instance v0, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    new-instance v0, Landroid/widget/AdapterViewFlipper$2;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    const/16 v0, 0x2710

    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 48
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    .line 49
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 50
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 51
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    .line 52
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    .line 85
    new-instance v3, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v3, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v3, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    new-instance v3, Landroid/widget/AdapterViewFlipper$2;

    invoke-direct {v3, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v3, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    .line 70
    sget-object v3, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 72
    .local v3, "a":Landroid/content/res/TypedArray;
    sget-object v6, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/AdapterViewFlipper;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 74
    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 76
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 80
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mLoopViews:Z

    .line 82
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-void
.end method

.method private greylist-max-o updateRunning()V
    .locals 1

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 227
    return-void
.end method

.method private greylist-max-o updateRunning(Z)V
    .locals 4
    .param p1, "flipNow"    # Z

    .line 238
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 240
    .local v0, "running":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eq v0, v1, :cond_2

    .line 241
    if-eqz v0, :cond_1

    .line 242
    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mWhichChild:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/AdapterViewFlipper;->showOnly(IZ)V

    .line 243
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/AdapterViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 245
    :cond_1
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 247
    :goto_1
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    .line 253
    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist fyiWillBeAdvancedByHostKThx()V
    .locals 1

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 297
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 301
    const-class v0, Landroid/widget/AdapterViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFlipInterval()I
    .locals 1

    .line 157
    iget v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    return v0
.end method

.method public whitelist isAutoStart()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public whitelist isFlipping()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 7

    .line 101
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onAttachedToWindow()V

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 116
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 115
    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 119
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->startFlipping()V

    .line 123
    :cond_0
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 127
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onDetachedFromWindow()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 130
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 132
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 136
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onWindowVisibilityChanged(I)V

    .line 137
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 138
    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 139
    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .line 143
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 144
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 145
    return-void
.end method

.method public whitelist setAutoStart(Z)V
    .locals 0
    .param p1, "autoStart"    # Z

    .line 267
    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 268
    return-void
.end method

.method public whitelist setFlipInterval(I)V
    .locals 0
    .param p1, "flipInterval"    # I

    .line 170
    iput p1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 171
    return-void
.end method

.method public whitelist showNext()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 197
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 199
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AdapterViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 202
    return-void
.end method

.method public whitelist showPrevious()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 212
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 214
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AdapterViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    .line 217
    return-void
.end method

.method public whitelist startFlipping()V
    .locals 1

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 178
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 179
    return-void
.end method

.method public whitelist stopFlipping()V
    .locals 1

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 186
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 187
    return-void
.end method
