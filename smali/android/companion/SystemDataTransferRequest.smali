.class public final Landroid/companion/SystemDataTransferRequest;
.super Ljava/lang/Object;
.source "SystemDataTransferRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/SystemDataTransferRequest$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/SystemDataTransferRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAssociationId:I

.field private final blacklist mPermissionSyncAllPackages:Z

.field private final blacklist mPermissionSyncPackages:Ljava/util/List;
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

    .line 145
    new-instance v0, Landroid/companion/SystemDataTransferRequest$1;

    invoke-direct {v0}, Landroid/companion/SystemDataTransferRequest$1;-><init>()V

    sput-object v0, Landroid/companion/SystemDataTransferRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IZLjava/util/List;)V
    .locals 0
    .param p1, "associationId"    # I
    .param p2, "syncAllPackages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p3, "permissionSyncPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/companion/SystemDataTransferRequest;->mAssociationId:I

    .line 46
    iput-boolean p2, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncAllPackages:Z

    .line 47
    iput-object p3, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncPackages:Ljava/util/List;

    .line 48
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/SystemDataTransferRequest;->mAssociationId:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncAllPackages:Z

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncPackages:Ljava/util/List;

    .line 130
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAssociationId()I
    .locals 1

    .line 51
    iget v0, p0, Landroid/companion/SystemDataTransferRequest;->mAssociationId:I

    return v0
.end method

.method public blacklist getPermissionSyncPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncPackages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isPermissionSyncAllPackages()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncAllPackages:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget v0, p0, Landroid/companion/SystemDataTransferRequest;->mAssociationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-boolean v0, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncAllPackages:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 136
    iget-object v0, p0, Landroid/companion/SystemDataTransferRequest;->mPermissionSyncPackages:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 137
    return-void
.end method
