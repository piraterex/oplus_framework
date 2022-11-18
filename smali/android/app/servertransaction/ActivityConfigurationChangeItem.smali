.class public Landroid/app/servertransaction/ActivityConfigurationChangeItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "ActivityConfigurationChangeItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ActivityConfigurationChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ActivityConfigurationChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    .line 95
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 96
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ActivityConfigurationChangeItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ActivityConfigurationChangeItem;
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 64
    if-eqz p0, :cond_1

    .line 68
    const-class v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    .line 69
    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    .line 70
    .local v0, "instance":Landroid/app/servertransaction/ActivityConfigurationChangeItem;
    if-nez v0, :cond_0

    .line 71
    new-instance v1, Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    invoke-direct {v1}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;-><init>()V

    move-object v0, v1

    .line 73
    :cond_0
    iput-object p0, v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 75
    return-object v0

    .line 65
    .end local v0    # "instance":Landroid/app/servertransaction/ActivityConfigurationChangeItem;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Config must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 111
    if-ne p0, p1, :cond_0

    .line 112
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    .line 118
    .local v0, "other":Landroid/app/servertransaction/ActivityConfigurationChangeItem;
    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 115
    .end local v0    # "other":Landroid/app/servertransaction/ActivityConfigurationChangeItem;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 52
    const-wide/16 v0, 0x40

    const-string v2, "activityConfigChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 53
    iget-object v2, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v3, -0x1

    invoke-virtual {p1, p2, v2, v3}, Landroid/app/ClientTransactionHandler;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;I)V

    .line 54
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 55
    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 45
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, p2, v0}, Landroid/app/ClientTransactionHandler;->updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 46
    return-void
.end method

.method public greylist-max-o recycle()V
    .locals 1

    .line 80
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 81
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 82
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityConfigurationChange{config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 90
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 91
    return-void
.end method
