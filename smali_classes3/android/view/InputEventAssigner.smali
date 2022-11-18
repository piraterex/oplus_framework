.class public Landroid/view/InputEventAssigner;
.super Ljava/lang/Object;
.source "InputEventAssigner.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputEventAssigner"


# instance fields
.field private blacklist mDownEventId:I

.field private blacklist mHasUnprocessedDown:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    .line 48
    iput v0, p0, Landroid/view/InputEventAssigner;->mDownEventId:I

    return-void
.end method


# virtual methods
.method public blacklist notifyFrameProcessed()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    .line 57
    return-void
.end method

.method public blacklist processEvent(Landroid/view/InputEvent;)I
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 65
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 66
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 67
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 69
    .local v1, "action":I
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 70
    iput-boolean v2, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    .line 71
    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result v3

    iput v3, p0, Landroid/view/InputEventAssigner;->mDownEventId:I

    .line 73
    :cond_0
    iget-boolean v3, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 74
    iget v2, p0, Landroid/view/InputEventAssigner;->mDownEventId:I

    return v2

    .line 76
    :cond_1
    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_3

    .line 77
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    .line 81
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    .end local v1    # "action":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result v0

    return v0
.end method
