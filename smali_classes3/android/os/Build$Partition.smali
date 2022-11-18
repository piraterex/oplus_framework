.class public Landroid/os/Build$Partition;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation


# static fields
.field public static final blacklist PARTITION_NAME_BOOTIMAGE:Ljava/lang/String; = "bootimage"

.field public static final blacklist PARTITION_NAME_ODM:Ljava/lang/String; = "odm"

.field public static final blacklist PARTITION_NAME_OEM:Ljava/lang/String; = "oem"

.field public static final blacklist PARTITION_NAME_PRODUCT:Ljava/lang/String; = "product"

.field public static final whitelist PARTITION_NAME_SYSTEM:Ljava/lang/String; = "system"

.field public static final blacklist PARTITION_NAME_SYSTEM_EXT:Ljava/lang/String; = "system_ext"

.field public static final blacklist PARTITION_NAME_VENDOR:Ljava/lang/String; = "vendor"


# instance fields
.field private final blacklist mFingerprint:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mTimeMs:J


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fingerprint"    # Ljava/lang/String;
    .param p3, "timeMs"    # J

    .line 1362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1363
    iput-object p1, p0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    .line 1364
    iput-object p2, p0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    .line 1365
    iput-wide p3, p0, Landroid/os/Build$Partition;->mTimeMs:J

    .line 1366
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Build$Partition-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/Build$Partition;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1387
    instance-of v0, p1, Landroid/os/Build$Partition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1388
    return v1

    .line 1390
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Build$Partition;

    .line 1391
    .local v0, "op":Landroid/os/Build$Partition;
    iget-object v2, p0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    .line 1392
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Landroid/os/Build$Partition;->mTimeMs:J

    iget-wide v4, v0, Landroid/os/Build$Partition;->mTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1391
    :goto_0
    return v1
.end method

.method public whitelist getBuildTimeMillis()J
    .locals 2

    .line 1382
    iget-wide v0, p0, Landroid/os/Build$Partition;->mTimeMs:J

    return-wide v0
.end method

.method public whitelist getFingerprint()Ljava/lang/String;
    .locals 1

    .line 1377
    iget-object v0, p0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 1371
    iget-object v0, p0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1398
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/Build$Partition;->mTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
