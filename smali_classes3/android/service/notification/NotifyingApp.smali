.class public final Landroid/service/notification/NotifyingApp;
.super Ljava/lang/Object;
.source "NotifyingApp.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/service/notification/NotifyingApp;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mLastNotified:J

.field private greylist-max-o mPkg:Ljava/lang/String;

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Landroid/service/notification/NotifyingApp$1;

    invoke-direct {v0}, Landroid/service/notification/NotifyingApp$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotifyingApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    .line 40
    return-void
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/service/notification/NotifyingApp;)I
    .locals 4
    .param p1, "o"    # Landroid/service/notification/NotifyingApp;

    .line 122
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 123
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Landroid/service/notification/NotifyingApp;

    invoke-virtual {p0, p1}, Landroid/service/notification/NotifyingApp;->compareTo(Landroid/service/notification/NotifyingApp;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 104
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 105
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/notification/NotifyingApp;

    .line 107
    .local v2, "that":Landroid/service/notification/NotifyingApp;
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v3

    invoke-virtual {v2}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 108
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    .line 109
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 107
    :goto_0
    return v0

    .line 105
    .end local v2    # "that":Landroid/service/notification/NotifyingApp;
    :cond_3
    :goto_1
    return v1
.end method

.method public greylist-max-o getLastNotified()J
    .locals 2

    .line 67
    iget-wide v0, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    return-wide v0
.end method

.method public greylist-max-o getPackage()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserId()I
    .locals 1

    .line 43
    iget v0, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o setLastNotified(J)Landroid/service/notification/NotifyingApp;
    .locals 0
    .param p1, "mLastNotified"    # J

    .line 74
    iput-wide p1, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    .line 75
    return-object p0
.end method

.method public greylist-max-o setPackage(Ljava/lang/String;)Landroid/service/notification/NotifyingApp;
    .locals 0
    .param p1, "mPkg"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public blacklist setUserId(I)Landroid/service/notification/NotifyingApp;
    .locals 0
    .param p1, "mUserId"    # I

    .line 50
    iput p1, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    .line 51
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotifyingApp{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastNotified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    iget v0, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-wide v0, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    return-void
.end method
