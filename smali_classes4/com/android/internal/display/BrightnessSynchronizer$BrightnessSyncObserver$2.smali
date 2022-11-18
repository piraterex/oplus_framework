.class Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;
.super Landroid/database/ContentObserver;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 505
    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;->this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 508
    if-eqz p1, :cond_0

    .line 509
    return-void

    .line 511
    :cond_0
    invoke-static {}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$sfgetBRIGHTNESS_URI()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;->this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    iget-object v0, v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;->this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    iget-object v1, v1, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$mgetScreenBrightnessInt(Lcom/android/internal/display/BrightnessSynchronizer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$mhandleBrightnessChangeInt(Lcom/android/internal/display/BrightnessSynchronizer;I)V

    .line 514
    :cond_1
    return-void
.end method
