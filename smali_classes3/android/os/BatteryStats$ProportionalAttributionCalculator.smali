.class Landroid/os/BatteryStats$ProportionalAttributionCalculator;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProportionalAttributionCalculator"
.end annotation


# static fields
.field private static final blacklist SYSTEM_BATTERY_CONSUMER:D = -1.0


# instance fields
.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mProportionalPowerMah:Landroid/util/SparseDoubleArray;

.field private final blacklist mSystemAndServicePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Landroid/os/BatteryUsageStats;

    .line 8719
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8720
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8721
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 8722
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x107001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 8724
    .local v2, "systemPackageArray":[Ljava/lang/String;
    const v3, 0x107001e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 8726
    .local v3, "servicePackageArray":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    array-length v5, v2

    array-length v6, v3

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mSystemAndServicePackages:Ljava/util/HashSet;

    .line 8728
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v2, v6

    .line 8729
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mSystemAndServicePackages:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8728
    .end local v7    # "packageName":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8731
    :cond_0
    array-length v4, v3

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 8732
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mSystemAndServicePackages:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8731
    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 8735
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v4

    .line 8736
    .local v4, "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    new-instance v5, Landroid/util/SparseDoubleArray;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/SparseDoubleArray;-><init>(I)V

    iput-object v5, v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mProportionalPowerMah:Landroid/util/SparseDoubleArray;

    .line 8737
    const-wide/16 v5, 0x0

    .line 8738
    .local v5, "systemPowerMah":D
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_2
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    if-ltz v7, :cond_3

    .line 8739
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UidBatteryConsumer;

    .line 8740
    .local v10, "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v10}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v11

    .line 8741
    .local v11, "uid":I
    invoke-direct {v0, v11}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemUid(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 8742
    iget-object v12, v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mProportionalPowerMah:Landroid/util/SparseDoubleArray;

    invoke-virtual {v12, v11, v8, v9}, Landroid/util/SparseDoubleArray;->put(ID)V

    .line 8743
    invoke-virtual {v10}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v8

    add-double/2addr v5, v8

    .line 8738
    .end local v10    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v11    # "uid":I
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 8747
    .end local v7    # "i":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v10

    sub-double/2addr v10, v5

    .line 8748
    .local v10, "totalRemainingPower":D
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v7, v12, v14

    if-lez v7, :cond_6

    .line 8749
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .restart local v7    # "i":I
    :goto_3
    if-ltz v7, :cond_5

    .line 8750
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UidBatteryConsumer;

    .line 8751
    .local v12, "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v13

    .line 8752
    .local v13, "uid":I
    iget-object v14, v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mProportionalPowerMah:Landroid/util/SparseDoubleArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v14

    cmpl-double v14, v14, v8

    if-eqz v14, :cond_4

    .line 8753
    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v14

    .line 8754
    .local v14, "power":D
    iget-object v8, v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mProportionalPowerMah:Landroid/util/SparseDoubleArray;

    mul-double v16, v5, v14

    div-double v16, v16, v10

    move-object v9, v1

    .end local v1    # "resources":Landroid/content/res/Resources;
    .local v9, "resources":Landroid/content/res/Resources;
    add-double v0, v14, v16

    invoke-virtual {v8, v13, v0, v1}, Landroid/util/SparseDoubleArray;->put(ID)V

    goto :goto_4

    .line 8752
    .end local v9    # "resources":Landroid/content/res/Resources;
    .end local v14    # "power":D
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :cond_4
    move-object v9, v1

    .line 8749
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v12    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v13    # "uid":I
    .restart local v9    # "resources":Landroid/content/res/Resources;
    :goto_4
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    move-object v1, v9

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    goto :goto_3

    .end local v9    # "resources":Landroid/content/res/Resources;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :cond_5
    move-object v9, v1

    .end local v1    # "resources":Landroid/content/res/Resources;
    .restart local v9    # "resources":Landroid/content/res/Resources;
    goto :goto_5

    .line 8748
    .end local v7    # "i":I
    .end local v9    # "resources":Landroid/content/res/Resources;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :cond_6
    move-object v9, v1

    .line 8759
    .end local v1    # "resources":Landroid/content/res/Resources;
    .restart local v9    # "resources":Landroid/content/res/Resources;
    :goto_5
    return-void
.end method

.method private blacklist isSystemUid(I)Z
    .locals 7
    .param p1, "uid"    # I

    .line 8774
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_0

    .line 8775
    return v0

    .line 8778
    :cond_0
    iget-object v1, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 8779
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 8780
    return v2

    .line 8783
    :cond_1
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 8784
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mSystemAndServicePackages:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8785
    return v0

    .line 8783
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8789
    :cond_3
    return v2
.end method


# virtual methods
.method blacklist getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D
    .locals 5
    .param p1, "consumer"    # Landroid/os/UidBatteryConsumer;

    .line 8766
    iget-object v0, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mProportionalPowerMah:Landroid/util/SparseDoubleArray;

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v0

    .line 8767
    .local v0, "powerMah":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    move-wide v2, v0

    :cond_0
    return-wide v2
.end method

.method blacklist isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z
    .locals 4
    .param p1, "consumer"    # Landroid/os/UidBatteryConsumer;

    .line 8762
    iget-object v0, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mProportionalPowerMah:Landroid/util/SparseDoubleArray;

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
