.class Landroid/transition/ChangeText$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeText;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/transition/ChangeText;

.field final synthetic blacklist val$endSelectionEnd:I

.field final synthetic blacklist val$endSelectionStart:I

.field final synthetic blacklist val$endText:Ljava/lang/CharSequence;

.field final synthetic blacklist val$startText:Ljava/lang/CharSequence;

.field final synthetic blacklist val$view:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/ChangeText;

    .line 194
    iput-object p1, p0, Landroid/transition/ChangeText$1;->this$0:Landroid/transition/ChangeText;

    iput-object p2, p0, Landroid/transition/ChangeText$1;->val$startText:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/transition/ChangeText$1;->val$view:Landroid/widget/TextView;

    iput-object p4, p0, Landroid/transition/ChangeText$1;->val$endText:Ljava/lang/CharSequence;

    iput p5, p0, Landroid/transition/ChangeText$1;->val$endSelectionStart:I

    iput p6, p0, Landroid/transition/ChangeText$1;->val$endSelectionEnd:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 197
    iget-object v0, p0, Landroid/transition/ChangeText$1;->val$startText:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/transition/ChangeText$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroid/transition/ChangeText$1;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/transition/ChangeText$1;->val$endText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Landroid/transition/ChangeText$1;->val$view:Landroid/widget/TextView;

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Landroid/transition/ChangeText$1;->this$0:Landroid/transition/ChangeText;

    check-cast v0, Landroid/widget/EditText;

    iget v2, p0, Landroid/transition/ChangeText$1;->val$endSelectionStart:I

    iget v3, p0, Landroid/transition/ChangeText$1;->val$endSelectionEnd:I

    invoke-static {v1, v0, v2, v3}, Landroid/transition/ChangeText;->-$$Nest$msetSelection(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    .line 204
    :cond_0
    return-void
.end method
