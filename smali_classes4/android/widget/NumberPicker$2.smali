.class Landroid/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor blacklist <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    .line 730
    iput-object p1, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 732
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$mhideSoftInput(Landroid/widget/NumberPicker;)V

    .line 733
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 734
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const v4, 0x102033c

    if-ne v0, v4, :cond_0

    .line 735
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v1, v2, v3}, Landroid/widget/NumberPicker;->-$$Nest$mpostChangeCurrentByOneFromLongPress(Landroid/widget/NumberPicker;ZJ)V

    goto :goto_0

    .line 737
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Landroid/widget/NumberPicker;->-$$Nest$mpostChangeCurrentByOneFromLongPress(Landroid/widget/NumberPicker;ZJ)V

    .line 739
    :goto_0
    return v1
.end method
