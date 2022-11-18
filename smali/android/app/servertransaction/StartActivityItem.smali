.class public Landroid/app/servertransaction/StartActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "StartActivityItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/StartActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "StartActivityItem"


# instance fields
.field private blacklist mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Landroid/app/servertransaction/StartActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/StartActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/StartActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/StartActivityItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/StartActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(Landroid/app/ActivityOptions;)Landroid/app/servertransaction/StartActivityItem;
    .locals 2
    .param p0, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 59
    const-class v0, Landroid/app/servertransaction/StartActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/StartActivityItem;

    .line 60
    .local v0, "instance":Landroid/app/servertransaction/StartActivityItem;
    if-nez v0, :cond_0

    .line 61
    new-instance v1, Landroid/app/servertransaction/StartActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/StartActivityItem;-><init>()V

    move-object v0, v1

    .line 63
    :cond_0
    iput-object p0, v0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 65
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 103
    return v0

    .line 105
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 108
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/StartActivityItem;

    .line 109
    .local v2, "other":Landroid/app/servertransaction/StartActivityItem;
    iget-object v3, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    iget-object v4, v2, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0

    .line 106
    .end local v2    # "other":Landroid/app/servertransaction/StartActivityItem;
    :cond_5
    :goto_3
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 3
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 42
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "startActivityItem"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 43
    iget-object v2, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, p2, p3, v2}, Landroid/app/ClientTransactionHandler;->handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions;)V

    .line 44
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 45
    return-void
.end method

.method public blacklist getTargetState()I
    .locals 1

    .line 49
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 114
    const/16 v0, 0x11

    .line 115
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 116
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public blacklist recycle()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 72
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 73
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartActivityItem{options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

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

    .line 81
    iget-object v0, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method
