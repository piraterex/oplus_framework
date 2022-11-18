.class Landroid/service/contentcapture/ContentCaptureService$1;
.super Landroid/service/contentcapture/IContentCaptureService$Stub;
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

    .line 134
    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-direct {p0}, Landroid/service/contentcapture/IContentCaptureService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onActivityEvent$7(Ljava/lang/Object;Landroid/service/contentcapture/ActivityEvent;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/service/contentcapture/ActivityEvent;

    .line 185
    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnActivityEvent(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method

.method static synthetic blacklist lambda$onActivitySnapshot$3(Ljava/lang/Object;ILandroid/service/contentcapture/SnapshotData;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Landroid/service/contentcapture/SnapshotData;

    .line 161
    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnActivitySnapshot(Landroid/service/contentcapture/ContentCaptureService;ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method static synthetic blacklist lambda$onConnected$0(Ljava/lang/Object;Landroid/os/IBinder;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/os/IBinder;

    .line 140
    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnConnected(Landroid/service/contentcapture/ContentCaptureService;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataRemovalRequest$5(Ljava/lang/Object;Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 173
    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnDataRemovalRequest(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataRemovalRequest;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataShared$6(Ljava/lang/Object;Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "x$1"    # Landroid/service/contentcapture/IDataShareCallback;

    .line 179
    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnDataShared(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDisconnected$1(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 146
    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnDisconnected(Landroid/service/contentcapture/ContentCaptureService;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSessionFinished$4(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I

    .line 167
    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleFinishSession(Landroid/service/contentcapture/ContentCaptureService;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSessionStarted$2(Ljava/lang/Object;Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .locals 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Lcom/android/internal/os/IResultReceiver;
    .param p5, "x$4"    # I

    .line 153
    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnCreateSession(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method


# virtual methods
.method public blacklist onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/service/contentcapture/ActivityEvent;

    .line 185
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    return-void
.end method

.method public blacklist onActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "snapshotData"    # Landroid/service/contentcapture/SnapshotData;

    .line 160
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 161
    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    return-void
.end method

.method public blacklist onConnected(Landroid/os/IBinder;ZZ)V
    .locals 3
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "verbose"    # Z
    .param p3, "debug"    # Z

    .line 138
    sput-boolean p2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    .line 139
    sput-boolean p3, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    .line 140
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    return-void
.end method

.method public blacklist onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 173
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    return-void
.end method

.method public blacklist onDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .locals 3
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "callback"    # Landroid/service/contentcapture/IDataShareCallback;

    .line 179
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    return-void
.end method

.method public blacklist onDisconnected()V
    .locals 3

    .line 146
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method

.method public blacklist onSessionFinished(I)V
    .locals 4
    .param p1, "sessionId"    # I

    .line 167
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 167
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    return-void
.end method

.method public blacklist onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .locals 8
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p2, "sessionId"    # I
    .param p3, "uid"    # I
    .param p4, "clientReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p5, "initialState"    # I

    .line 153
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    .line 154
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 155
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 153
    move-object v3, p1

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    return-void
.end method
