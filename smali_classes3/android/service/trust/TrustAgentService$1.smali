.class Landroid/service/trust/TrustAgentService$1;
.super Landroid/os/Handler;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method constructor blacklist <init>(Landroid/service/trust/TrustAgentService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/trust/TrustAgentService;

    .line 218
    iput-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 220
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 228
    :pswitch_0
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v0}, Landroid/service/trust/TrustAgentService;->onUserMayRequestUnlock()V

    .line 229
    goto/16 :goto_3

    .line 225
    :pswitch_1
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/trust/TrustAgentService;->onUserRequestedUnlock(Z)V

    .line 226
    goto/16 :goto_3

    .line 272
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 273
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "token_handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 274
    .local v1, "handle":J
    const-string/jumbo v3, "token_removed_result"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 275
    .local v3, "success":Z
    iget-object v4, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v4, v1, v2, v3}, Landroid/service/trust/TrustAgentService;->onEscrowTokenRemoved(JZ)V

    .line 276
    goto/16 :goto_3

    .line 265
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "handle":J
    .end local v3    # "success":Z
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 266
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string/jumbo v1, "token_handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 267
    .local v3, "handle":J
    const-string/jumbo v1, "token_state"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 268
    .local v1, "tokenState":I
    iget-object v2, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v2, v3, v4, v1}, Landroid/service/trust/TrustAgentService;->onEscrowTokenStateReceived(JI)V

    .line 269
    goto/16 :goto_3

    .line 257
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "tokenState":I
    .end local v3    # "handle":J
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 258
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 259
    .local v1, "token":[B
    const-string/jumbo v2, "token_handle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 260
    .local v2, "handle":J
    const-string/jumbo v4, "user_handle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 261
    .local v4, "user":Landroid/os/UserHandle;
    iget-object v5, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/service/trust/TrustAgentService;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V

    .line 262
    goto :goto_3

    .line 231
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "token":[B
    .end local v2    # "handle":J
    .end local v4    # "user":Landroid/os/UserHandle;
    :pswitch_5
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/service/trust/TrustAgentService;->onDeviceUnlockLockout(J)V

    .line 232
    goto :goto_3

    .line 254
    :pswitch_6
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v0}, Landroid/service/trust/TrustAgentService;->onDeviceUnlocked()V

    .line 255
    goto :goto_3

    .line 251
    :pswitch_7
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v0}, Landroid/service/trust/TrustAgentService;->onDeviceLocked()V

    .line 252
    goto :goto_3

    .line 248
    :pswitch_8
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v0}, Landroid/service/trust/TrustAgentService;->onTrustTimeout()V

    .line 249
    goto :goto_3

    .line 234
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/trust/TrustAgentService$ConfigurationData;

    .line 235
    .local v0, "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget-object v2, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->options:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/service/trust/TrustAgentService;->onConfigure(Ljava/util/List;)Z

    move-result v1

    .line 236
    .local v1, "result":Z
    iget-object v2, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    .line 238
    :try_start_0
    iget-object v2, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v2}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmLock(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :try_start_1
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v3}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmCallback(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v3

    iget-object v4, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    invoke-interface {v3, v1, v4}, Landroid/service/trust/ITrustAgentServiceCallback;->onConfigureCompleted(ZLandroid/os/IBinder;)V

    .line 240
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    .end local v1    # "result":Z
    .end local p0    # "this":Landroid/service/trust/TrustAgentService$1;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 241
    .restart local v0    # "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    .restart local v1    # "result":Z
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService$1;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    const-string v4, "calling onSetTrustAgentFeaturesEnabledCompleted()"

    invoke-static {v3, v4}, Landroid/service/trust/TrustAgentService;->-$$Nest$monError(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    .line 243
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_3

    .line 222
    .end local v0    # "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    .end local v1    # "result":Z
    :pswitch_a
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/service/trust/TrustAgentService;->onUnlockAttempt(Z)V

    .line 223
    nop

    .line 279
    :cond_2
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
