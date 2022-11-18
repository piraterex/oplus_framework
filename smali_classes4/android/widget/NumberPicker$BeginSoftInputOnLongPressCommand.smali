.class Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor blacklist <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    .line 2461
    iput-object p1, p0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 2465
    iget-object v0, p0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->performLongClick()Z

    .line 2466
    return-void
.end method
