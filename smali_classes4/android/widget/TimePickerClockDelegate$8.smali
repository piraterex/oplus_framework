.class Landroid/widget/TimePickerClockDelegate$8;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TimePickerClockDelegate;

    .line 1048
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$8;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1053
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 1068
    return-void

    .line 1058
    :sswitch_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$8;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetAmOrPm(Landroid/widget/TimePickerClockDelegate;I)V

    .line 1059
    goto :goto_0

    .line 1064
    :sswitch_1
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$8;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v2, v2, v2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetCurrentItemShowing(Landroid/widget/TimePickerClockDelegate;IZZ)V

    .line 1065
    goto :goto_0

    .line 1061
    :sswitch_2
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$8;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v1, v2, v2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetCurrentItemShowing(Landroid/widget/TimePickerClockDelegate;IZZ)V

    .line 1062
    goto :goto_0

    .line 1055
    :sswitch_3
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$8;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetAmOrPm(Landroid/widget/TimePickerClockDelegate;I)V

    .line 1056
    nop

    .line 1071
    :goto_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$8;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$mtryVibrate(Landroid/widget/TimePickerClockDelegate;)V

    .line 1072
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10201e8 -> :sswitch_3
        0x1020323 -> :sswitch_2
        0x10203b6 -> :sswitch_1
        0x1020436 -> :sswitch_0
    .end sparse-switch
.end method
