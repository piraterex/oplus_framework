.class Landroid/widget/ViewFlipper$1;
.super Landroid/content/BroadcastReceiver;
.source "ViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ViewFlipper;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ViewFlipper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ViewFlipper;

    .line 73
    iput-object p1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-static {v1, v2}, Landroid/widget/ViewFlipper;->-$$Nest$fputmUserPresent(Landroid/widget/ViewFlipper;Z)V

    .line 79
    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-static {v1}, Landroid/widget/ViewFlipper;->-$$Nest$mupdateRunning(Landroid/widget/ViewFlipper;)V

    goto :goto_0

    .line 80
    :cond_0
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/widget/ViewFlipper;->-$$Nest$fputmUserPresent(Landroid/widget/ViewFlipper;Z)V

    .line 82
    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-static {v1, v2}, Landroid/widget/ViewFlipper;->-$$Nest$mupdateRunning(Landroid/widget/ViewFlipper;Z)V

    .line 84
    :cond_1
    :goto_0
    return-void
.end method
