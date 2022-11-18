.class Landroid/content/pm/PackagePartitions$PackagePartitionsWrapper$LazyHolder;
.super Ljava/lang/Object;
.source "PackagePartitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackagePartitions$PackagePartitionsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist EXT:Landroid/content/pm/IPackagePartitionsExt;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEXT()Landroid/content/pm/IPackagePartitionsExt;
    .locals 1

    sget-object v0, Landroid/content/pm/PackagePartitions$PackagePartitionsWrapper$LazyHolder;->EXT:Landroid/content/pm/IPackagePartitionsExt;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 311
    const-class v0, Landroid/content/pm/IPackagePartitionsExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackagePartitionsExt;

    sput-object v0, Landroid/content/pm/PackagePartitions$PackagePartitionsWrapper$LazyHolder;->EXT:Landroid/content/pm/IPackagePartitionsExt;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
