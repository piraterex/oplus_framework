.class public Landroid/app/servertransaction/DestroyActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "DestroyActivityItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/DestroyActivityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mConfigChanges:I

.field private greylist-max-o mFinished:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Landroid/app/servertransaction/DestroyActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/DestroyActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/DestroyActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    .line 96
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/DestroyActivityItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/DestroyActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o obtain(ZI)Landroid/app/servertransaction/DestroyActivityItem;
    .locals 2
    .param p0, "finished"    # Z
    .param p1, "configChanges"    # I

    .line 64
    const-class v0, Landroid/app/servertransaction/DestroyActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/DestroyActivityItem;

    .line 65
    .local v0, "instance":Landroid/app/servertransaction/DestroyActivityItem;
    if-nez v0, :cond_0

    .line 66
    new-instance v1, Landroid/app/servertransaction/DestroyActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/DestroyActivityItem;-><init>()V

    move-object v0, v1

    .line 68
    :cond_0
    iput-boolean p0, v0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    .line 69
    iput p1, v0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    .line 71
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 112
    return v0

    .line 114
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/DestroyActivityItem;

    .line 118
    .local v2, "other":Landroid/app/servertransaction/DestroyActivityItem;
    iget-boolean v3, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    iget v4, v2, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 115
    .end local v2    # "other":Landroid/app/servertransaction/DestroyActivityItem;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 9
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 46
    const-wide/16 v0, 0x40

    const-string v2, "activityDestroy"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 47
    iget-boolean v5, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    iget v6, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    const/4 v7, 0x0

    const-string v8, "DestroyActivityItem"

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/app/ClientTransactionHandler;->handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V

    .line 49
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 50
    return-void
.end method

.method public greylist-max-o getTargetState()I
    .locals 1

    .line 54
    const/4 v0, 0x6

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 123
    const/16 v0, 0x11

    .line 124
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    add-int/2addr v1, v2

    .line 125
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    add-int/2addr v0, v2

    .line 126
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 40
    invoke-virtual {p1}, Landroid/app/ClientTransactionHandler;->getActivitiesToBeDestroyed()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public greylist-max-o recycle()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    .line 78
    iput v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    .line 79
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 80
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DestroyActivityItem{finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mConfigChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 88
    iget-boolean v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 89
    iget v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mConfigChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
