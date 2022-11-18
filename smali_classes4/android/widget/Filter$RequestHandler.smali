.class Landroid/widget/Filter$RequestHandler;
.super Landroid/os/Handler;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Filter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/Filter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 218
    iput-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 219
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 220
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    .line 232
    .local v0, "what":I
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 254
    :sswitch_0
    iget-object v1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v1}, Landroid/widget/Filter;->-$$Nest$fgetmLock(Landroid/widget/Filter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v2}, Landroid/widget/Filter;->-$$Nest$fgetmThreadHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v2}, Landroid/widget/Filter;->-$$Nest$fgetmThreadHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 257
    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/widget/Filter;->-$$Nest$fputmThreadHandler(Landroid/widget/Filter;Landroid/os/Handler;)V

    .line 259
    :cond_0
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 234
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/Filter$RequestArguments;

    .line 236
    .local v1, "args":Landroid/widget/Filter$RequestArguments;
    :try_start_1
    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    iget-object v3, v1, Landroid/widget/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Filter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    nop

    :goto_0
    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v2}, Landroid/widget/Filter;->-$$Nest$fgetmResultHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 242
    .local v2, "message":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 243
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 244
    goto :goto_1

    .line 241
    .end local v2    # "message":Landroid/os/Message;
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 237
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v3, v1, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    .line 239
    const-string v3, "Filter"

    const-string v4, "An exception occured during performFiltering()!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 241
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 246
    .local v2, "message":Landroid/os/Message;
    :goto_1
    iget-object v3, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v3}, Landroid/widget/Filter;->-$$Nest$fgetmLock(Landroid/widget/Filter;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 247
    :try_start_3
    iget-object v4, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v4}, Landroid/widget/Filter;->-$$Nest$fgetmThreadHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 248
    iget-object v4, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v4}, Landroid/widget/Filter;->-$$Nest$fgetmThreadHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v4

    const v5, -0x21524111

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 249
    .local v4, "finishMessage":Landroid/os/Message;
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v5}, Landroid/widget/Filter;->-$$Nest$fgetmThreadHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 251
    .end local v4    # "finishMessage":Landroid/os/Message;
    :cond_1
    monitor-exit v3

    .line 252
    goto :goto_3

    .line 251
    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    .line 241
    .end local v2    # "message":Landroid/os/Message;
    :goto_2
    iget-object v3, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v3}, Landroid/widget/Filter;->-$$Nest$fgetmResultHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 242
    .local v3, "message":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 243
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 244
    throw v2

    .line 262
    .end local v1    # "args":Landroid/widget/Filter$RequestArguments;
    .end local v3    # "message":Landroid/os/Message;
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f2f0ff3 -> :sswitch_1
        -0x21524111 -> :sswitch_0
    .end sparse-switch
.end method
