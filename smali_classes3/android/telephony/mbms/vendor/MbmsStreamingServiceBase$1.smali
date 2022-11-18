.class Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;
.super Landroid/telephony/mbms/MbmsStreamingSessionCallback;
.source "MbmsStreamingServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

.field final synthetic blacklist val$callback:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IMbmsStreamingSessionCallback;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    .line 74
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->val$callback:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->val$subscriptionId:I

    invoke-direct {p0}, Landroid/telephony/mbms/MbmsStreamingSessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 78
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->val$callback:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback;->onError(ILjava/lang/String;)V

    .line 85
    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Middleware cannot send an unknown error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;
    .end local p1    # "errorCode":I
    .end local p2    # "message":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;
    .restart local p1    # "errorCode":I
    .restart local p2    # "message":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public whitelist onMiddlewareReady()V
    .locals 4

    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->val$callback:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    invoke-interface {v0}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback;->onMiddlewareReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onStreamingServicesUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/StreamingServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/StreamingServiceInfo;>;"
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->val$callback:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback;->onStreamingServicesUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
