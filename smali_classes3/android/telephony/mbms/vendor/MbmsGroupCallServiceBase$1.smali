.class Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;
.super Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;
.source "MbmsGroupCallServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    .line 44
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    invoke-direct {p0}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dispose(I)V
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    invoke-virtual {v0, p1}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->dispose(I)V

    .line 181
    return-void
.end method

.method public blacklist initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I
    .locals 5
    .param p1, "callback"    # Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;
    .param p2, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    if-eqz p1, :cond_1

    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 54
    .local v0, "uid":I
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    new-instance v2, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;

    invoke-direct {v2, p0, p1, v0, p2}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;-><init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;II)V

    invoke-virtual {v1, v2, p2}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->initialize(Landroid/telephony/mbms/MbmsGroupCallSessionCallback;I)I

    move-result v1

    .line 99
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 100
    invoke-interface {p1}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$2;

    invoke-direct {v3, p0, v0, p2}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$2;-><init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;II)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 108
    :cond_0
    return v1

    .line 49
    .end local v0    # "uid":I
    .end local v1    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I
    .locals 8
    .param p1, "subscriptionId"    # I
    .param p2, "tmgi"    # J
    .param p4, "saiList"    # Ljava/util/List;
    .param p5, "frequencyList"    # Ljava/util/List;
    .param p6, "callback"    # Landroid/telephony/mbms/IGroupCallCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    if-eqz p6, :cond_1

    .line 132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 134
    .local v0, "uid":I
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    new-instance v7, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;

    invoke-direct {v7, p0, p6, v0, p1}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;-><init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;Landroid/telephony/mbms/IGroupCallCallback;II)V

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/GroupCallCallback;)I

    move-result v1

    .line 166
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 167
    invoke-interface {p6}, Landroid/telephony/mbms/IGroupCallCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$4;

    invoke-direct {v3, p0, v0, p1}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$4;-><init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;II)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 175
    :cond_0
    return v1

    .line 129
    .end local v0    # "uid":I
    .end local v1    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist stopGroupCall(IJ)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "tmgi"    # J

    .line 113
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->stopGroupCall(IJ)V

    .line 114
    return-void
.end method

.method public blacklist updateGroupCall(IJLjava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "subscriptionId"    # I
    .param p2, "tmgi"    # J
    .param p4, "saiList"    # Ljava/util/List;
    .param p5, "frequencyList"    # Ljava/util/List;

    .line 119
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->updateGroupCall(IJLjava/util/List;Ljava/util/List;)V

    .line 121
    return-void
.end method
