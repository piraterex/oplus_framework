.class Landroid/widget/TimePickerClockDelegate$1;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerClockDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    .line 231
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 234
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$mtoggleRadialPickerMode(Landroid/widget/TimePickerClockDelegate;)V

    .line 235
    return-void
.end method
