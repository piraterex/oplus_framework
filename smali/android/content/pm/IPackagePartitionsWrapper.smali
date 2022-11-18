.class public interface abstract Landroid/content/pm/IPackagePartitionsWrapper;
.super Ljava/lang/Object;
.source "IPackagePartitionsWrapper.java"


# virtual methods
.method public blacklist getExtImpl()Landroid/content/pm/IPackagePartitionsExt;
    .locals 1

    .line 24
    new-instance v0, Landroid/content/pm/IPackagePartitionsWrapper$1;

    invoke-direct {v0, p0}, Landroid/content/pm/IPackagePartitionsWrapper$1;-><init>(Landroid/content/pm/IPackagePartitionsWrapper;)V

    return-object v0
.end method

.method public blacklist newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;
    .locals 1
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "containsPrivApp"    # Z
    .param p5, "containsOverlay"    # Z

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method
