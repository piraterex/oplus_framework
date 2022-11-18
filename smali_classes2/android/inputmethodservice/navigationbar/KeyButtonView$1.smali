.class Landroid/inputmethodservice/navigationbar/KeyButtonView$1;
.super Ljava/lang/Object;
.source "KeyButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/KeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/KeyButtonView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/navigationbar/KeyButtonView;

    .line 70
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 72
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performLongClick()Z

    .line 77
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    iput-boolean v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-static {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->-$$Nest$fgetmCode(Landroid/inputmethodservice/navigationbar/KeyButtonView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-static {v0, v2, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->-$$Nest$msendEvent(Landroid/inputmethodservice/navigationbar/KeyButtonView;II)V

    .line 81
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 83
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    iput-boolean v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    .line 86
    :cond_2
    :goto_0
    return-void
.end method
