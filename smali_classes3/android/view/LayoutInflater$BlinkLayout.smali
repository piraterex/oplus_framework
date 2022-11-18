.class Landroid/view/LayoutInflater$BlinkLayout;
.super Landroid/widget/FrameLayout;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/LayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlinkLayout"
.end annotation


# static fields
.field private static final greylist-max-o BLINK_DELAY:I = 0x1f4

.field private static final greylist-max-o MESSAGE_BLINK:I = 0x42


# instance fields
.field private greylist-max-o mBlink:Z

.field private greylist-max-o mBlinkState:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBlink(Landroid/view/LayoutInflater$BlinkLayout;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBlinkState(Landroid/view/LayoutInflater$BlinkLayout;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBlinkState(Landroid/view/LayoutInflater$BlinkLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmakeBlink(Landroid/view/LayoutInflater$BlinkLayout;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/LayoutInflater$BlinkLayout;->makeBlink()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1316
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1317
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Landroid/view/LayoutInflater$BlinkLayout$1;

    invoke-direct {v1, p0}, Landroid/view/LayoutInflater$BlinkLayout$1;-><init>(Landroid/view/LayoutInflater$BlinkLayout;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    .line 1331
    return-void
.end method

.method private greylist-max-o makeBlink()V
    .locals 4

    .line 1334
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1335
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1336
    return-void
.end method


# virtual methods
.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1360
    iget-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    if-eqz v0, :cond_0

    .line 1361
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1363
    :cond_0
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 1

    .line 1340
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1342
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    .line 1343
    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    .line 1345
    invoke-direct {p0}, Landroid/view/LayoutInflater$BlinkLayout;->makeBlink()V

    .line 1346
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 1350
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1352
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    .line 1353
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    .line 1355
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1356
    return-void
.end method
