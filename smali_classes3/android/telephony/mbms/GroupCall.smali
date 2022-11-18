.class public Landroid/telephony/mbms/GroupCall;
.super Ljava/lang/Object;
.source "GroupCall.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/GroupCall$GroupCallStateChangeReason;,
        Landroid/telephony/mbms/GroupCall$GroupCallState;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MbmsGroupCall"

.field public static final whitelist REASON_BY_USER_REQUEST:I = 0x1

.field public static final whitelist REASON_FREQUENCY_CONFLICT:I = 0x3

.field public static final whitelist REASON_LEFT_MBMS_BROADCAST_AREA:I = 0x6

.field public static final whitelist REASON_NONE:I = 0x0

.field public static final whitelist REASON_NOT_CONNECTED_TO_HOMECARRIER_LTE:I = 0x5

.field public static final whitelist REASON_OUT_OF_MEMORY:I = 0x4

.field public static final whitelist STATE_STALLED:I = 0x3

.field public static final whitelist STATE_STARTED:I = 0x2

.field public static final whitelist STATE_STOPPED:I = 0x1


# instance fields
.field private final blacklist mCallback:Landroid/telephony/mbms/InternalGroupCallCallback;

.field private final blacklist mParentSession:Landroid/telephony/MbmsGroupCallSession;

.field private blacklist mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

.field private final blacklist mSubscriptionId:I

.field private final blacklist mTmgi:J


# direct methods
.method public constructor blacklist <init>(ILandroid/telephony/mbms/vendor/IMbmsGroupCallService;Landroid/telephony/MbmsGroupCallSession;JLandroid/telephony/mbms/InternalGroupCallCallback;)V
    .locals 0
    .param p1, "subscriptionId"    # I
    .param p2, "service"    # Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    .param p3, "session"    # Landroid/telephony/MbmsGroupCallSession;
    .param p4, "tmgi"    # J
    .param p6, "callback"    # Landroid/telephony/mbms/InternalGroupCallCallback;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Landroid/telephony/mbms/GroupCall;->mSubscriptionId:I

    .line 128
    iput-object p3, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    .line 129
    iput-object p2, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    .line 130
    iput-wide p4, p0, Landroid/telephony/mbms/GroupCall;->mTmgi:J

    .line 131
    iput-object p6, p0, Landroid/telephony/mbms/GroupCall;->mCallback:Landroid/telephony/mbms/InternalGroupCallCallback;

    .line 132
    return-void
.end method

.method private blacklist sendErrorToApp(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mCallback:Landroid/telephony/mbms/InternalGroupCallCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallCallback;->onError(ILjava/lang/String;)V

    .line 195
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    .line 173
    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    if-eqz v0, :cond_0

    .line 178
    :try_start_0
    iget v1, p0, Landroid/telephony/mbms/GroupCall;->mSubscriptionId:I

    iget-wide v2, p0, Landroid/telephony/mbms/GroupCall;->mTmgi:J

    invoke-interface {v0, v1, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->stopGroupCall(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {v0, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    .line 185
    goto :goto_1

    .line 184
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MbmsGroupCall"

    const-string v2, "Remote process died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    .line 182
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Landroid/telephony/mbms/GroupCall;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 186
    :goto_1
    return-void

    .line 184
    :goto_2
    iget-object v1, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    .line 185
    throw v0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No group call service attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCallback()Landroid/telephony/mbms/InternalGroupCallCallback;
    .locals 1

    .line 190
    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mCallback:Landroid/telephony/mbms/InternalGroupCallCallback;

    return-object v0
.end method

.method public whitelist getTmgi()J
    .locals 2

    .line 138
    iget-wide v0, p0, Landroid/telephony/mbms/GroupCall;->mTmgi:J

    return-wide v0
.end method

.method public whitelist updateGroupCall(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p1, "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    iget v1, p0, Landroid/telephony/mbms/GroupCall;->mSubscriptionId:I

    iget-wide v2, p0, Landroid/telephony/mbms/GroupCall;->mTmgi:J

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->updateGroupCall(IJLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    iget-object v0, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {v0, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    .line 162
    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MbmsGroupCall"

    const-string v2, "Remote process died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/mbms/GroupCall;->mService:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    .line 159
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Landroid/telephony/mbms/GroupCall;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 163
    :goto_1
    return-void

    .line 161
    :goto_2
    iget-object v1, p0, Landroid/telephony/mbms/GroupCall;->mParentSession:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsGroupCallSession;->onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V

    .line 162
    throw v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No group call service attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
