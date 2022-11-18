.class Landroid/widget/Spinner$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Spinner;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Spinner;

    .line 904
    iput-object p1, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGlobalLayout()V
    .locals 3

    .line 907
    iget-object v0, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    invoke-static {v0}, Landroid/widget/Spinner;->-$$Nest$fgetmPopup(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 908
    iget-object v0, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    invoke-static {v0}, Landroid/widget/Spinner;->-$$Nest$fgetmPopup(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getTextDirection()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    .line 910
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 911
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1

    .line 912
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 914
    :cond_1
    return-void
.end method
