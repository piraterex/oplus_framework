.class public final Landroid/content/pm/PackageParser$Permission;
.super Landroid/content/pm/PackageParser$Component;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/PackageParser$Component<",
        "Landroid/content/pm/PackageParser$IntentInfo;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public greylist group:Landroid/content/pm/PackageParser$PermissionGroup;

.field public final greylist info:Landroid/content/pm/PermissionInfo;

.field public greylist tree:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 7908
    new-instance v0, Landroid/content/pm/PackageParser$Permission$1;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$Permission$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser$Permission;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V
    .locals 0
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "_info"    # Landroid/content/pm/PermissionInfo;

    .line 7863
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 7864
    iput-object p2, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 7865
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "backgroundPermission"    # Ljava/lang/String;

    .line 7857
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 7858
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, p2}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 7859
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 7897
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/os/Parcel;)V

    .line 7898
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 7899
    .local v0, "boot":Ljava/lang/ClassLoader;
    const-class v1, Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    iput-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 7900
    iget-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7901
    iget-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 7904
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 7905
    const-class v1, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    iput-object v1, p0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    .line 7906
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/PackageParser$Permission-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 7880
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isAppOp()Z
    .locals 1

    .line 7893
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->isAppOp()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7868
    invoke-super {p0, p1}, Landroid/content/pm/PackageParser$Component;->setPackageName(Ljava/lang/String;)V

    .line 7869
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 7870
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 7873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7874
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7873
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7885
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7886
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7887
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Permission;->tree:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7888
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7889
    return-void
.end method
