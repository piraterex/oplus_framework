.class final Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;
.super Ljava/lang/Object;
.source "NotificationActionListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationActionListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextViewInfo"
.end annotation


# instance fields
.field final blacklist mIsPriority:Z

.field final blacklist mTextLength:I

.field final blacklist mTextView:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    invoke-static {p1}, Lcom/android/internal/widget/NotificationActionListLayout;->-$$Nest$smisPriority(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    .line 417
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextLength:I

    .line 418
    iput-object p1, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextView:Landroid/widget/TextView;

    .line 419
    return-void
.end method


# virtual methods
.method blacklist needsRebuild()Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextLength:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextView:Landroid/widget/TextView;

    .line 423
    invoke-static {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->-$$Nest$smisPriority(Landroid/view/View;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 422
    :goto_1
    return v0
.end method
