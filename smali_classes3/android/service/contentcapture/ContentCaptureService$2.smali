.class Landroid/service/contentcapture/ContentCaptureService$2;
.super Landroid/view/contentcapture/IContentCaptureDirectManager$Stub;
.source "ContentCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/ContentCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/contentcapture/ContentCaptureService;


# direct methods
.method constructor blacklist <init>(Landroid/service/contentcapture/ContentCaptureService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/contentcapture/ContentCaptureService;

    .line 194
    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$2;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-direct {p0}, Landroid/view/contentcapture/IContentCaptureDirectManager$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$sendEvents$0(Ljava/lang/Object;ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Landroid/content/ContentCaptureOptions;

    .line 199
    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleSendEvents(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V

    return-void
.end method


# virtual methods
.method public blacklist sendEvents(Landroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .locals 7
    .param p1, "events"    # Landroid/content/pm/ParceledListSlice;
    .param p2, "reason"    # I
    .param p3, "options"    # Landroid/content/ContentCaptureOptions;

    .line 199
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$2;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$2$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$2;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 199
    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    return-void
.end method
