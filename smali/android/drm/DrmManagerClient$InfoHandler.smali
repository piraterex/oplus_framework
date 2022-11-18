.class Landroid/drm/DrmManagerClient$InfoHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoHandler"
.end annotation


# static fields
.field public static final greylist-max-o INFO_EVENT_TYPE:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor blacklist <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 202
    iput-object p1, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 203
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 204
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "info":Landroid/drm/DrmInfoEvent;
    const/4 v1, 0x0

    .line 210
    .local v1, "error":Landroid/drm/DrmErrorEvent;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DrmManagerClient"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 212
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 213
    .local v2, "uniqueId":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 214
    .local v3, "infoType":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "message":Ljava/lang/String;
    packed-switch v3, :pswitch_data_1

    .line 235
    new-instance v5, Landroid/drm/DrmErrorEvent;

    invoke-direct {v5, v2, v3, v4}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    move-object v1, v5

    goto :goto_1

    .line 219
    :pswitch_1
    :try_start_0
    invoke-static {v4}, Landroid/drm/DrmUtils;->removeFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 220
    :catch_0
    move-exception v5

    .line 221
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v5, Landroid/drm/DrmInfoEvent;

    invoke-direct {v5, v2, v3, v4}, Landroid/drm/DrmInfoEvent;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    .line 224
    goto :goto_1

    .line 231
    :pswitch_2
    new-instance v5, Landroid/drm/DrmInfoEvent;

    invoke-direct {v5, v2, v3, v4}, Landroid/drm/DrmInfoEvent;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    .line 232
    nop

    .line 239
    :goto_1
    iget-object v5, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v5}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnInfoListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 240
    iget-object v5, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v5}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnInfoListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object v5

    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v5, v6, v0}, Landroid/drm/DrmManagerClient$OnInfoListener;->onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V

    .line 242
    :cond_0
    iget-object v5, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v5}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 243
    iget-object v5, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v5}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v5

    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v5, v6, v1}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    .line 245
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
