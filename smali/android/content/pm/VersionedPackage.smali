.class public final Landroid/content/pm/VersionedPackage;
.super Ljava/lang/Object;
.source "VersionedPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/VersionedPackage$VersionCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mVersionCode:J

.field public blacklist mVersionedPackageExt:Landroid/content/pm/IVersionedPackageExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Landroid/content/pm/VersionedPackage$1;

    invoke-direct {v0}, Landroid/content/pm/VersionedPackage$1;-><init>()V

    sput-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Landroid/content/pm/IVersionedPackageExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IVersionedPackageExt;

    iput-object v0, p0, Landroid/content/pm/VersionedPackage;->mVersionedPackageExt:Landroid/content/pm/IVersionedPackageExt;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/VersionedPackage-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/VersionedPackage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Landroid/content/pm/IVersionedPackageExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IVersionedPackageExt;

    iput-object v0, p0, Landroid/content/pm/VersionedPackage;->mVersionedPackageExt:Landroid/content/pm/IVersionedPackageExt;

    .line 59
    iput-object p1, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    .line 60
    int-to-long v0, p2

    iput-wide v0, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    .line 61
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Landroid/content/pm/IVersionedPackageExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IVersionedPackageExt;

    iput-object v0, p0, Landroid/content/pm/VersionedPackage;->mVersionedPackageExt:Landroid/content/pm/IVersionedPackageExt;

    .line 71
    iput-object p1, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    .line 72
    iput-wide p2, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 113
    instance-of v0, p1, Landroid/content/pm/VersionedPackage;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iget-object v0, v0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iget-wide v0, v0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    iget-wide v2, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0
.end method

.method public whitelist getLongVersionCode()J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    return-wide v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersionCode()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    iget-wide v0, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 122
    iget-object v0, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VersionedPackage["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget-object v0, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 133
    iget-wide v0, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    return-void
.end method
