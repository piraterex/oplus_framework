.class Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;
.super Landroid/telephony/mbms/StreamingServiceCallback;
.source "MbmsStreamingServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

.field final synthetic blacklist val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IStreamingServiceCallback;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    .line 174
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-direct {p0}, Landroid/telephony/mbms/StreamingServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBroadcastSignalStrengthUpdated(I)V
    .locals 4
    .param p1, "signalStrength"    # I

    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onBroadcastSignalStrengthUpdated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 178
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IStreamingServiceCallback;->onError(ILjava/lang/String;)V

    .line 185
    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Middleware cannot send an unknown error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;
    .end local p1    # "errorCode":I
    .end local p2    # "message":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;
    .restart local p1    # "errorCode":I
    .restart local p2    # "message":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 186
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public whitelist onMediaDescriptionUpdated()V
    .locals 4

    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0}, Landroid/telephony/mbms/IStreamingServiceCallback;->onMediaDescriptionUpdated()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onStreamMethodUpdated(I)V
    .locals 4
    .param p1, "methodType"    # I

    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onStreamMethodUpdated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onStreamStateUpdated(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .line 192
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IStreamingServiceCallback;->onStreamStateUpdated(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 196
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
