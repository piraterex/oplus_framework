.class final Landroid/nfc/cardemulation/HostApduService$MsgHandler;
.super Landroid/os/Handler;
.source "HostApduService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/HostApduService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/nfc/cardemulation/HostApduService;


# direct methods
.method constructor blacklist <init>(Landroid/nfc/cardemulation/HostApduService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/nfc/cardemulation/HostApduService;

    .line 245
    iput-object p1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "RemoteException calling into NfcService."

    const-string v2, "Response not sent; service was deactivated."

    const/4 v3, 0x0

    const-string v4, "ApduService"

    packed-switch v0, :pswitch_data_0

    .line 310
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 298
    :pswitch_0
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 299
    const-string v0, "notifyUnhandled not sent; service was deactivated."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 303
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 304
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto/16 :goto_1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 294
    :pswitch_1
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iput-object v3, v0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    .line 295
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/HostApduService;->onDeactivated(I)V

    .line 296
    goto/16 :goto_1

    .line 281
    :pswitch_2
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    if-nez v0, :cond_1

    .line 282
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 286
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 287
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    goto :goto_1

    .line 288
    :catch_1
    move-exception v0

    .line 289
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 250
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 251
    .local v0, "dataBundle":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 252
    return-void

    .line 254
    :cond_2
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v1, v1, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v5, v1, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    .line 256
    :cond_3
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 257
    .local v5, "apdu":[B
    if-eqz v5, :cond_6

    .line 258
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v6, v5, v3}, Landroid/nfc/cardemulation/HostApduService;->processCommandApdu([BLandroid/os/Bundle;)[B

    move-result-object v6

    .line 259
    .local v6, "responseApdu":[B
    if-eqz v6, :cond_5

    .line 260
    iget-object v7, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v7, v7, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    if-nez v7, :cond_4

    .line 261
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 264
    :cond_4
    const/4 v2, 0x1

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 265
    .local v2, "responseMsg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v3, "responseBundle":Landroid/os/Bundle;
    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 267
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 268
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v1, v1, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 270
    :try_start_2
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v1, v1, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 274
    goto :goto_0

    .line 271
    :catch_2
    move-exception v1

    .line 272
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "TAG"

    const-string v7, "Response not sent; RemoteException calling into NfcService."

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "responseMsg":Landroid/os/Message;
    .end local v3    # "responseBundle":Landroid/os/Bundle;
    .end local v6    # "responseApdu":[B
    :cond_5
    :goto_0
    goto :goto_1

    .line 277
    :cond_6
    const-string v1, "Received MSG_COMMAND_APDU without data."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    nop

    .line 312
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v5    # "apdu":[B
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
