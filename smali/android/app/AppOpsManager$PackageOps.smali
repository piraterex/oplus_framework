.class public final Landroid/app/AppOpsManager$PackageOps;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 3516
    new-instance v0, Landroid/app/AppOpsManager$PackageOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$PackageOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$PackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 3506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    .line 3508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    .line 3509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    .line 3510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3511
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3512
    iget-object v2, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    sget-object v3, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3511
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3514
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;)V"
        }
    .end annotation

    .line 3464
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3465
    iput-object p1, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    .line 3466
    iput p2, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    .line 3467
    iput-object p3, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    .line 3468
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 3493
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 3488
    iget-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 3474
    iget-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()I
    .locals 1

    .line 3481
    iget v0, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3498
    iget-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3499
    iget v0, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3500
    iget-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3502
    iget-object v1, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v1, p1, p2}, Landroid/app/AppOpsManager$OpEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3504
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
