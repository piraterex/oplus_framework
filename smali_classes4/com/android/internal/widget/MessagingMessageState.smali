.class public Lcom/android/internal/widget/MessagingMessageState;
.super Ljava/lang/Object;
.source "MessagingMessageState.java"


# instance fields
.field private blacklist mGroup:Lcom/android/internal/widget/MessagingGroup;

.field private final blacklist mHostView:Landroid/view/View;

.field private blacklist mIsHidingAnimated:Z

.field private blacklist mIsHistoric:Z

.field private blacklist mMessage:Landroid/app/Notification$MessagingStyle$Message;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "hostView"    # Landroid/view/View;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist getGroup()Lcom/android/internal/widget/MessagingGroup;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mGroup:Lcom/android/internal/widget/MessagingGroup;

    return-object v0
.end method

.method public blacklist getHostView()Landroid/view/View;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getMessage()Landroid/app/Notification$MessagingStyle$Message;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mMessage:Landroid/app/Notification$MessagingStyle$Message;

    return-object v0
.end method

.method public blacklist isHidingAnimated()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHidingAnimated:Z

    return v0
.end method

.method public blacklist recycle()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->recycle(Landroid/view/View;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHidingAnimated:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHistoric:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mGroup:Lcom/android/internal/widget/MessagingGroup;

    .line 82
    iput-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mMessage:Landroid/app/Notification$MessagingStyle$Message;

    .line 83
    return-void
.end method

.method public blacklist setGroup(Lcom/android/internal/widget/MessagingGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/android/internal/widget/MessagingGroup;

    .line 47
    iput-object p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mGroup:Lcom/android/internal/widget/MessagingGroup;

    .line 48
    return-void
.end method

.method public blacklist setIsHidingAnimated(Z)V
    .locals 2
    .param p1, "isHiding"    # Z

    .line 59
    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 60
    .local v0, "parent":Landroid/view/ViewParent;
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHidingAnimated:Z

    .line 61
    iget-object v1, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 62
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 65
    :cond_0
    return-void
.end method

.method public blacklist setIsHistoric(Z)V
    .locals 0
    .param p1, "isHistoric"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHistoric:Z

    .line 56
    return-void
.end method

.method public blacklist setMessage(Landroid/app/Notification$MessagingStyle$Message;)V
    .locals 0
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 39
    iput-object p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mMessage:Landroid/app/Notification$MessagingStyle$Message;

    .line 40
    return-void
.end method
