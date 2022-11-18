.class public final Lcom/oplus/util/OplusDisplayOptimizationData;
.super Ljava/lang/Object;
.source "OplusDisplayOptimizationData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/util/OplusDisplayOptimizationData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "OplusDisplayOptimizationData"


# instance fields
.field private blacklist mBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEnableDisplatOpt:Z

.field private blacklist mEnableGraphicAccelerationSwitch:Z

.field private blacklist mEnablePolicy:I

.field private blacklist mExcludeProcessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExcludeWindowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSpecialList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/oplus/util/OplusDisplayOptimizationData$1;

    invoke-direct {v0}, Lcom/oplus/util/OplusDisplayOptimizationData$1;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusDisplayOptimizationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnableDisplatOpt:Z

    .line 54
    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnableGraphicAccelerationSwitch:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mExcludeProcessList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mWhiteList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mBlackList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mSpecialList:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mExcludeWindowList:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnablePolicy:I

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnableDisplatOpt:Z

    .line 54
    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnableGraphicAccelerationSwitch:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mExcludeProcessList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mWhiteList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mBlackList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mSpecialList:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mExcludeWindowList:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnablePolicy:I

    .line 68
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayOptimizationData;->readFromParcel(Landroid/os/Parcel;)V

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mBlackList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDisplatOptEnabled()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnableDisplatOpt:Z

    return v0
.end method

.method public whitelist getEnablePolicy()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnablePolicy:I

    return v0
.end method

.method public whitelist getExcludeProcessList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mExcludeProcessList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getExcludeWindowList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mExcludeWindowList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getGraphicAccelerationSwitchEnabled()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnableGraphicAccelerationSwitch:Z

    return v0
.end method

.method public whitelist getSpecialList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mSpecialList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mExcludeProcessList:Ljava/util/List;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mWhiteList:Ljava/util/List;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mBlackList:Ljava/util/List;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mSpecialList:Ljava/util/List;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mExcludeWindowList:Ljava/util/List;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnableDisplatOpt:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnableGraphicAccelerationSwitch:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnablePolicy:I

    .line 109
    return-void
.end method

.method public whitelist setBlackList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p1, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mBlackList:Ljava/util/List;

    .line 141
    return-void
.end method

.method public whitelist setDisplatOptEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnableDisplatOpt:Z

    .line 125
    return-void
.end method

.method public whitelist setEnablePolicy(I)V
    .locals 0
    .param p1, "policy"    # I

    .line 172
    iput p1, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnablePolicy:I

    .line 173
    return-void
.end method

.method public whitelist setExcludeProcessList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "excludeProcessList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mExcludeProcessList:Ljava/util/List;

    .line 117
    return-void
.end method

.method public whitelist setExcludeWindowList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "excludeWindowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mExcludeWindowList:Ljava/util/List;

    .line 157
    return-void
.end method

.method public whitelist setGraphicAccelerationSwitchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 164
    iput-boolean p1, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnableGraphicAccelerationSwitch:Z

    .line 165
    return-void
.end method

.method public whitelist setSpecialList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p1, "specialList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mSpecialList:Ljava/util/List;

    .line 149
    return-void
.end method

.method public whitelist setWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mWhiteList:Ljava/util/List;

    .line 133
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mExcludeProcessList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 82
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mWhiteList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 83
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mBlackList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mSpecialList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mExcludeWindowList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 86
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnableDisplatOpt:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 87
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnableGraphicAccelerationSwitch:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 88
    iget v0, p0, Lcom/oplus/util/OplusDisplayOptimizationData;->mEnablePolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void
.end method
