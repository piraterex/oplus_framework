.class Landroid/widget/AnalogClock$1;
.super Landroid/content/BroadcastReceiver;
.source "AnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AnalogClock;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AnalogClock;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AnalogClock;

    .line 786
    iput-object p1, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 789
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    invoke-static {v0}, Landroid/widget/AnalogClock;->-$$Nest$mcreateClock(Landroid/widget/AnalogClock;)V

    .line 793
    :cond_0
    iget-object v0, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    invoke-static {v0}, Landroid/widget/AnalogClock;->-$$Nest$fgetmTick(Landroid/widget/AnalogClock;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 794
    return-void
.end method
