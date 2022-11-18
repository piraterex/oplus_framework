.class Lcom/android/internal/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/AlertController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/AlertController;

    .line 152
    iput-object p1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonPositive(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonPositiveMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonPositiveMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    goto :goto_0

    .line 158
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonNegative(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonNegativeMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonNegativeMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 160
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonNeutral(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 163
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    const/4 v0, 0x0

    .line 166
    .restart local v0    # "m":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmHandler(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v3}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmDialogInterface(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 173
    return-void
.end method
