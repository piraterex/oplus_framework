.class Lcom/android/internal/util/ScreenshotHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/ScreenshotHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/ScreenshotHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/ScreenshotHelper;

    .line 240
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 243
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 244
    :try_start_0
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$mresetConnection(Lcom/android/internal/util/ScreenshotHelper;)V

    .line 247
    :cond_0
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
