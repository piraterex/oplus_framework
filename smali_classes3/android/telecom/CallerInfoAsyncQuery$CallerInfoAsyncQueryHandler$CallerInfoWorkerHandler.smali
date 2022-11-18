.class public Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CallerInfoWorkerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method public constructor blacklist <init>(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 176
    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 177
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 178
    return-void
.end method

.method private blacklist handleGeoDescription(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 237
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 238
    .local v0, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    .line 239
    .local v1, "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    iget-object v2, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v2}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fgetmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 241
    .local v2, "startTimeMillis":J
    iget-object v4, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v4}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fgetmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telecom/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->geoDescription:Ljava/lang/String;

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 248
    .end local v2    # "startTimeMillis":J
    :cond_0
    iget-object v2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 249
    .local v2, "reply":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 251
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 252
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 182
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 183
    .local v0, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    .line 185
    .local v1, "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    if-nez v1, :cond_0

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected command (CookieWrapper is null): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ignored by CallerInfoWorkerHandler, passing onto parent."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "CallerInfoAsyncQuery"

    invoke-static {v4, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 206
    :cond_0
    iget v2, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 229
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->handleGeoDescription(Landroid/os/Message;)V

    .line 230
    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 222
    .local v2, "reply":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 223
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 225
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 227
    goto :goto_0

    .line 209
    .end local v2    # "reply":Landroid/os/Message;
    :pswitch_2
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V

    .line 210
    nop

    .line 234
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
