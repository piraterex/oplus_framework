.class Landroid/media/MediaCas$2;
.super Landroid/hardware/cas/V1_2/ICasListener$Stub;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaCas;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaCas;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaCas;

    .line 360
    iput-object p1, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Landroid/hardware/cas/V1_2/ICasListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEvent(IILjava/util/ArrayList;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/media/MediaCas$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaCas$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    :cond_0
    return-void
.end method

.method public blacklist onSessionEvent(Ljava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 4
    .param p2, "event"    # I
    .param p3, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    .local p1, "sessionId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCas$EventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 375
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 376
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 377
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 378
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v2, p1}, Landroid/media/MediaCas;->-$$Nest$mtoBytes(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B

    move-result-object v2

    const-string v3, "sessionId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 380
    iget-object v2, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v2, p4}, Landroid/media/MediaCas;->-$$Nest$mtoBytes(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 381
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 382
    iget-object v2, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaCas$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 384
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public blacklist onStatusUpdate(BI)V
    .locals 3
    .param p1, "status"    # B
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/MediaCas$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaCas$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 392
    :cond_0
    return-void
.end method
