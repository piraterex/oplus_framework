.class final Landroid/view/View$CheckForLongPress;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private blacklist mClassification:I

.field private greylist-max-o mOriginalPressedState:Z

.field private greylist-max-o mOriginalWindowAttachCount:I

.field private greylist-max-o mX:F

.field private greylist-max-o mY:F

.field final synthetic blacklist this$0:Landroid/view/View;


# direct methods
.method private constructor greylist <init>(Landroid/view/View;)V
    .locals 0

    .line 29602
    iput-object p1, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29603
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;Landroid/view/View$CheckForLongPress-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o rememberPressedState()V
    .locals 1

    .line 29626
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalPressedState:Z

    .line 29627
    return-void
.end method

.method public greylist-max-o rememberWindowAttachCount()V
    .locals 1

    .line 29622
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mWindowAttachCount:I

    iput v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 29623
    return-void
.end method

.method public whitelist test-api run()V
    .locals 3

    .line 29607
    iget-boolean v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalPressedState:Z

    iget-object v1, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mWindowAttachCount:I

    if-ne v0, v1, :cond_0

    .line 29609
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    iget v1, p0, Landroid/view/View$CheckForLongPress;->mClassification:I

    invoke-static {v0, v1}, Landroid/view/View;->-$$Nest$mrecordGestureClassification(Landroid/view/View;I)V

    .line 29610
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    iget v1, p0, Landroid/view/View$CheckForLongPress;->mX:F

    iget v2, p0, Landroid/view/View$CheckForLongPress;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performLongClick(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29611
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/View;->-$$Nest$fputmHasPerformedLongPress(Landroid/view/View;Z)V

    .line 29614
    :cond_0
    return-void
.end method

.method public greylist-max-o setAnchor(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 29617
    iput p1, p0, Landroid/view/View$CheckForLongPress;->mX:F

    .line 29618
    iput p2, p0, Landroid/view/View$CheckForLongPress;->mY:F

    .line 29619
    return-void
.end method

.method public blacklist setClassification(I)V
    .locals 0
    .param p1, "classification"    # I

    .line 29630
    iput p1, p0, Landroid/view/View$CheckForLongPress;->mClassification:I

    .line 29631
    return-void
.end method
