.class public final Landroid/content/rollback/RollbackInfo;
.super Ljava/lang/Object;
.source "RollbackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCausePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCommittedSessionId:I

.field private final blacklist mIsStaged:Z

.field private final blacklist mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRollbackId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Landroid/content/rollback/RollbackInfo$1;

    invoke-direct {v0}, Landroid/content/rollback/RollbackInfo$1;-><init>()V

    sput-object v0, Landroid/content/rollback/RollbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;ZLjava/util/List;I)V
    .locals 0
    .param p1, "rollbackId"    # I
    .param p3, "isStaged"    # Z
    .param p5, "committedSessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;Z",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;I)V"
        }
    .end annotation

    .line 50
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo;>;"
    .local p4, "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    .line 52
    iput-object p2, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    .line 53
    iput-boolean p3, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    .line 54
    iput-object p4, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    .line 55
    iput p5, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    .line 56
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    .line 60
    sget-object v0, Landroid/content/rollback/PackageRollbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    .line 62
    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/rollback/RollbackInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/rollback/RollbackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCausePackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCommittedSessionId()I
    .locals 1

    .line 94
    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    return v0
.end method

.method public whitelist getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRollbackId()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    return v0
.end method

.method public whitelist isStaged()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    return v0
.end method

.method public blacklist setCommittedSessionId(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .line 102
    iput p1, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    .line 103
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 122
    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 124
    iget-boolean v0, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 125
    iget-object v0, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 126
    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return-void
.end method
