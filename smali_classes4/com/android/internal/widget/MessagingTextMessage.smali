.class public Lcom/android/internal/widget/MessagingTextMessage;
.super Lcom/android/internal/widget/ImageFloatingTextView;
.source "MessagingTextMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingMessage;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist sInstancePool:Lcom/android/internal/widget/MessagingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/MessagingPool<",
            "Lcom/android/internal/widget/MessagingTextMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mState:Lcom/android/internal/widget/MessagingMessageState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/android/internal/widget/MessagingPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 58
    return-void
.end method

.method static blacklist createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;
    .locals 5
    .param p0, "layout"    # Lcom/android/internal/widget/IMessagingLayout;
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 74
    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    .line 75
    .local v0, "messagingLinearLayout":Lcom/android/internal/widget/MessagingLinearLayout;
    sget-object v1, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingPool;->acquire()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingTextMessage;

    .line 76
    .local v1, "createdMessage":Lcom/android/internal/widget/MessagingTextMessage;
    if-nez v1, :cond_0

    .line 77
    nop

    .line 78
    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 77
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900c5

    const/4 v4, 0x0

    .line 78
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/widget/MessagingTextMessage;

    .line 82
    sget-object v2, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingTextMessage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 84
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z

    .line 85
    return-object v1
.end method

.method public static blacklist dropCache()V
    .locals 1

    .line 94
    sget-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingPool;->clear()V

    .line 95
    return-void
.end method


# virtual methods
.method public blacklist getConsumedLines()I
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLineCount()I

    move-result v0

    return v0
.end method

.method public blacklist getLayoutHeight()I
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 128
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 129
    const/4 v1, 0x0

    return v1

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    return v1
.end method

.method public blacklist getMeasuredType()I
    .locals 5

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getMeasuredHeight()I

    move-result v0

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayoutHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 101
    .local v0, "measuredTooSmall":Z
    :goto_0
    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLineCount()I

    move-result v4

    if-gt v4, v3, :cond_1

    .line 102
    return v1

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 105
    .local v4, "layout":Landroid/text/Layout;
    if-nez v4, :cond_2

    .line 106
    return v1

    .line 108
    :cond_2
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    if-lez v1, :cond_3

    .line 109
    return v3

    .line 111
    :cond_3
    return v2
.end method

.method public blacklist getState()Lcom/android/internal/widget/MessagingMessageState;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    return-object v0
.end method

.method public blacklist recycle()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    .line 90
    sget-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/MessagingPool;->release(Landroid/view/View;)Z

    .line 91
    return-void
.end method

.method public blacklist setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setTextColor(I)V

    .line 137
    return-void
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setMaxLines(I)V

    .line 119
    return-void
.end method

.method public blacklist setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 67
    invoke-super {p0, p1}, Lcom/android/internal/widget/MessagingMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z

    .line 68
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingTextMessage;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
