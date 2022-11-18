.class Landroid/content/pm/PackagePartitions$PackagePartitionsWrapper;
.super Ljava/lang/Object;
.source "PackagePartitions.java"

# interfaces
.implements Landroid/content/pm/IPackagePartitionsWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackagePartitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackagePartitionsWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackagePartitions$PackagePartitionsWrapper$LazyHolder;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/PackagePartitions$PackagePartitionsWrapper-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/PackagePartitions$PackagePartitionsWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getExtImpl()Landroid/content/pm/IPackagePartitionsExt;
    .locals 1

    .line 316
    invoke-static {}, Landroid/content/pm/PackagePartitions$PackagePartitionsWrapper$LazyHolder;->-$$Nest$sfgetEXT()Landroid/content/pm/IPackagePartitionsExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;
    .locals 8
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "containsPrivApp"    # Z
    .param p5, "containsOverlay"    # Z

    .line 322
    new-instance v7, Landroid/content/pm/PackagePartitions$SystemPartition;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions$SystemPartition-IA;)V

    return-object v7
.end method
