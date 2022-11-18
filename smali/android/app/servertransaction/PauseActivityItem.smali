.class public Landroid/app/servertransaction/PauseActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "PauseActivityItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/PauseActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PauseActivityItem"


# instance fields
.field private greylist-max-o mConfigChanges:I

.field private greylist-max-o mDontReport:Z

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mUserLeaving:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Landroid/app/servertransaction/PauseActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/PauseActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/PauseActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 131
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    .line 136
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/PauseActivityItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o obtain()Landroid/app/servertransaction/PauseActivityItem;
    .locals 2

    .line 97
    const-class v0, Landroid/app/servertransaction/PauseActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/PauseActivityItem;

    .line 98
    .local v0, "instance":Landroid/app/servertransaction/PauseActivityItem;
    if-nez v0, :cond_0

    .line 99
    new-instance v1, Landroid/app/servertransaction/PauseActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/PauseActivityItem;-><init>()V

    move-object v0, v1

    .line 101
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    .line 102
    iput-boolean v1, v0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    .line 103
    iput v1, v0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    .line 106
    return-object v0
.end method

.method public static greylist-max-o obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;
    .locals 2
    .param p0, "finished"    # Z
    .param p1, "userLeaving"    # Z
    .param p2, "configChanges"    # I
    .param p3, "dontReport"    # Z

    .line 83
    const-class v0, Landroid/app/servertransaction/PauseActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/PauseActivityItem;

    .line 84
    .local v0, "instance":Landroid/app/servertransaction/PauseActivityItem;
    if-nez v0, :cond_0

    .line 85
    new-instance v1, Landroid/app/servertransaction/PauseActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/PauseActivityItem;-><init>()V

    move-object v0, v1

    .line 87
    :cond_0
    iput-boolean p0, v0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    .line 88
    iput-boolean p1, v0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    .line 89
    iput p2, v0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    .line 90
    iput-boolean p3, v0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    .line 92
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 151
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 152
    return v0

    .line 154
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/PauseActivityItem;

    .line 158
    .local v2, "other":Landroid/app/servertransaction/PauseActivityItem;
    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    iget v4, v2, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 155
    .end local v2    # "other":Landroid/app/servertransaction/PauseActivityItem;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 12
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 49
    const-wide/16 v0, 0x40

    const-string v2, "activityPause"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 53
    .local v3, "startTime":J
    iget-boolean v7, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    iget-boolean v8, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    iget v9, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    const-string v11, "PAUSE_ACTIVITY_ITEM"

    move-object v5, p1

    move-object v6, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v11}, Landroid/app/ClientTransactionHandler;->handlePauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZILandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V

    .line 55
    sget-object v5, Landroid/os/OplusJankMonitorExtPlugin;->setLaunchStageTime:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-virtual {v5, v6}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 58
    return-void
.end method

.method public greylist-max-o getTargetState()I
    .locals 1

    .line 62
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 164
    const/16 v0, 0x11

    .line 165
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    add-int/2addr v1, v2

    .line 166
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    add-int/2addr v0, v2

    .line 167
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    add-int/2addr v1, v2

    .line 168
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    add-int/2addr v0, v2

    .line 169
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public greylist-max-o postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 1
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 68
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    if-eqz v0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ActivityClient;->activityPaused(Landroid/os/IBinder;)V

    .line 73
    return-void
.end method

.method public greylist-max-o recycle()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    .line 113
    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    .line 114
    iput v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    .line 115
    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    .line 116
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 117
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PauseActivityItem{finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",userLeaving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",configChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dontReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 125
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    iget v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mConfigChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 128
    return-void
.end method
