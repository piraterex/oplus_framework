.class public final Lcom/oplus/util/OplusPackageFreezeData;
.super Ljava/lang/Object;
.source "OplusPackageFreezeData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/util/OplusPackageFreezeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCurAdj:I

.field private blacklist mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPid:I

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mUid:I

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/oplus/util/OplusPackageFreezeData$1;

    invoke-direct {v0}, Lcom/oplus/util/OplusPackageFreezeData$1;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusPackageFreezeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPid:I

    .line 48
    iput v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUid:I

    .line 49
    const/16 v1, 0x2710

    iput v1, p0, Lcom/oplus/util/OplusPackageFreezeData;->mCurAdj:I

    .line 50
    iput v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUserId:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mProcessName:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPackageList:Ljava/util/List;

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPid:I

    .line 48
    iput v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUid:I

    .line 49
    const/16 v1, 0x2710

    iput v1, p0, Lcom/oplus/util/OplusPackageFreezeData;->mCurAdj:I

    .line 50
    iput v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUserId:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mProcessName:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPackageList:Ljava/util/List;

    .line 59
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusPackageFreezeData;->readFromParcel(Landroid/os/Parcel;)V

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 100
    return v0

    .line 103
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 104
    return v1

    .line 107
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 108
    return v0

    .line 111
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/oplus/util/OplusPackageFreezeData;

    .line 112
    .local v2, "info":Lcom/oplus/util/OplusPackageFreezeData;
    iget-object v3, p0, Lcom/oplus/util/OplusPackageFreezeData;->mProcessName:Ljava/lang/String;

    iget-object v4, v2, Lcom/oplus/util/OplusPackageFreezeData;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUid:I

    iget v4, v2, Lcom/oplus/util/OplusPackageFreezeData;->mUid:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPid:I

    iget v4, v2, Lcom/oplus/util/OplusPackageFreezeData;->mPid:I

    if-ne v3, v4, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public whitelist getCurAdj()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mCurAdj:I

    return v0
.end method

.method public whitelist getPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPackageList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPid()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPid:I

    return v0
.end method

.method public whitelist getProcessName()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUid:I

    return v0
.end method

.method public whitelist getUserId()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/util/OplusPackageFreezeData;->mProcessName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPid:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUid:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mCurAdj:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUserId:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mProcessName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPackageList:Ljava/util/List;

    .line 90
    return-void
.end method

.method public whitelist setCurAdj(I)V
    .locals 0
    .param p1, "curAdj"    # I

    .line 134
    iput p1, p0, Lcom/oplus/util/OplusPackageFreezeData;->mCurAdj:I

    .line 135
    return-void
.end method

.method public whitelist setPackageList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    :cond_0
    return-void
.end method

.method public whitelist setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 118
    iput p1, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPid:I

    .line 119
    return-void
.end method

.method public whitelist setProcessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lcom/oplus/util/OplusPackageFreezeData;->mProcessName:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public whitelist setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 126
    iput p1, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUid:I

    .line 127
    return-void
.end method

.method public whitelist setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 142
    iput p1, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUserId:I

    .line 143
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 69
    iget v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mCurAdj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/oplus/util/OplusPackageFreezeData;->mPackageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 75
    return-void
.end method
