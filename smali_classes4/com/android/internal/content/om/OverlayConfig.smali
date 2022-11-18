.class public Lcom/android/internal/content/om/OverlayConfig;
.super Ljava/lang/Object;
.source "OverlayConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;,
        Lcom/android/internal/content/om/OverlayConfig$PackageProvider;,
        Lcom/android/internal/content/om/OverlayConfig$Configuration;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_PRIORITY:I = 0x7fffffff

.field static final blacklist TAG:Ljava/lang/String; = "OverlayConfig"

.field private static blacklist sInstance:Lcom/android/internal/content/om/OverlayConfig;

.field private static final blacklist sStaticOverlayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfigurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayConfig$Configuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/internal/content/om/OverlayConfig;->sStaticOverlayComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Ljava/util/function/Supplier;Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)V
    .locals 26
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p3, "packageProvider"    # Lcom/android/internal/content/om/OverlayConfig$PackageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/content/om/OverlayScanner;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfig$PackageProvider;",
            ")V"
        }
    .end annotation

    .line 125
    .local p2, "scannerFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/internal/content/om/OverlayScanner;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    .line 126
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez p3, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eq v4, v5, :cond_2

    move v2, v3

    :cond_2
    const-string/jumbo v4, "scannerFactory and packageProvider cannot be both null or both non-null"

    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 130
    if-nez v1, :cond_3

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda0;-><init>()V

    .line 132
    invoke-static {v4}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v2, "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    goto :goto_2

    .line 135
    .end local v2    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;)V

    invoke-static {v4}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 141
    .restart local v2    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    :goto_2
    invoke-static {v2}, Lcom/android/internal/content/om/OverlayConfig;->getActiveApexes(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v4

    .line 143
    .local v4, "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .line 145
    .local v5, "foundConfigFile":Z
    if-nez p3, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    invoke-static/range {p3 .. p3}, Lcom/android/internal/content/om/OverlayConfig;->getOverlayPackageInfos(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Ljava/util/Map;

    move-result-object v7

    .line 147
    .local v7, "packageManagerOverlayInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v8, "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, "n":I
    :goto_4
    if-ge v9, v10, :cond_c

    .line 149
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 150
    .local v11, "partition":Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    if-nez p2, :cond_5

    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/content/om/OverlayScanner;

    .line 151
    .local v12, "scanner":Lcom/android/internal/content/om/OverlayScanner;
    :goto_5
    iget v13, v11, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->type:I

    .line 154
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 154
    invoke-virtual {v4, v13, v14}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 152
    invoke-static {v11, v12, v7, v13}, Lcom/android/internal/content/om/OverlayConfigParser;->getConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v13

    .line 156
    .local v13, "partitionOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;>;"
    if-eqz v13, :cond_6

    .line 157
    const/4 v5, 0x1

    .line 158
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    move-object/from16 v17, v2

    move-object/from16 v24, v4

    goto/16 :goto_a

    .line 167
    :cond_6
    if-eqz p2, :cond_7

    .line 168
    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/android/internal/content/om/OverlayScanner;->getAllParsedInfos()Ljava/util/Collection;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v14, "partitionOverlayInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    goto :goto_7

    .line 171
    .end local v14    # "partitionOverlayInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    :cond_7
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 172
    .restart local v14    # "partitionOverlayInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v3

    .local v15, "j":I
    :goto_6
    if-ltz v15, :cond_9

    .line 173
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 174
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->getOriginalPartitionPath()Ljava/io/File;

    move-result-object v3

    .line 173
    invoke-virtual {v11, v3}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 175
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 172
    :cond_8
    add-int/lit8 v15, v15, -0x1

    const/4 v3, 0x1

    goto :goto_6

    .line 181
    .end local v15    # "j":I
    :cond_9
    :goto_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v3, "partitionConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;>;"
    const/4 v15, 0x0

    .restart local v15    # "j":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "m":I
    :goto_8
    if-ge v15, v6, :cond_b

    .line 183
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 184
    .local v1, "p":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    move-object/from16 v17, v2

    .end local v2    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    .local v17, "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    iget-boolean v2, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    if-eqz v2, :cond_a

    .line 185
    new-instance v2, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    move-object/from16 v24, v4

    .end local v4    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .local v24, "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v4, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->packageName:Ljava/lang/String;

    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v25, v6

    .end local v6    # "m":I
    .local v25, "m":I
    iget-object v6, v11, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v1

    invoke-direct/range {v18 .. v23}, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 184
    .end local v24    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v25    # "m":I
    .restart local v4    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v6    # "m":I
    :cond_a
    move-object/from16 v24, v4

    move/from16 v25, v6

    .line 182
    .end local v1    # "p":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .end local v4    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "m":I
    .restart local v24    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v25    # "m":I
    :goto_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v4, v24

    move/from16 v6, v25

    goto :goto_8

    .end local v17    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    .end local v24    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v25    # "m":I
    .restart local v2    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    .restart local v4    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v6    # "m":I
    :cond_b
    move-object/from16 v17, v2

    move-object/from16 v24, v4

    move/from16 v25, v6

    .line 190
    .end local v2    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    .end local v4    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "m":I
    .end local v15    # "j":I
    .restart local v17    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    .restart local v24    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v1, Lcom/android/internal/content/om/OverlayConfig;->sStaticOverlayComparator:Ljava/util/Comparator;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 191
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    .end local v3    # "partitionConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;>;"
    .end local v11    # "partition":Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    .end local v12    # "scanner":Lcom/android/internal/content/om/OverlayScanner;
    .end local v13    # "partitionOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;>;"
    .end local v14    # "partitionOverlayInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    :goto_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v4, v24

    const/4 v3, 0x1

    goto/16 :goto_4

    .end local v17    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    .end local v24    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v2    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    .restart local v4    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_c
    move-object/from16 v17, v2

    move-object/from16 v24, v4

    .line 194
    .end local v2    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    .end local v4    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "i":I
    .end local v10    # "n":I
    .restart local v17    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    .restart local v24    # "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v5, :cond_d

    .line 197
    sget-object v1, Lcom/android/internal/content/om/OverlayConfig;->sStaticOverlayComparator:Ljava/util/Comparator;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 200
    :cond_d
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_b
    if-ge v1, v2, :cond_e

    .line 204
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    .line 205
    .local v3, "config":Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    iget-object v4, v0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    iget-object v6, v3, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->packageName:Ljava/lang/String;

    new-instance v9, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    invoke-direct {v9, v3, v1}, Lcom/android/internal/content/om/OverlayConfig$Configuration;-><init>(Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;I)V

    invoke-virtual {v4, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v3    # "config":Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 207
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_e
    return-void
.end method

.method private static native blacklist createIdmap(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
.end method

.method private static blacklist getActiveApexes(Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 339
    .local p0, "partitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 340
    .local v0, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 341
    .local v2, "partition":Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    iget v3, v2, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .end local v2    # "partition":Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    goto :goto_0

    .line 344
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/apex/apex-info-list.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v1, "apexInfoList":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 346
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/android/apex/XmlParser;->readApexInfoList(Ljava/io/InputStream;)Lcom/android/apex/ApexInfoList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/apex/ApexInfoList;->getApexInfo()Ljava/util/List;

    move-result-object v3

    .line 348
    .local v3, "apexInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/apex/ApexInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/apex/ApexInfo;

    .line 349
    .local v5, "info":Lcom/android/apex/ApexInfo;
    invoke-virtual {v5}, Lcom/android/apex/ApexInfo;->getIsActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 350
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 351
    .local v7, "partition":Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    invoke-virtual {v5}, Lcom/android/apex/ApexInfo;->getPreinstalledModulePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 352
    iget v6, v7, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v5}, Lcom/android/apex/ApexInfo;->getModuleName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    goto :goto_3

    .line 355
    .end local v7    # "partition":Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    :cond_1
    goto :goto_2

    .line 357
    .end local v5    # "info":Lcom/android/apex/ApexInfo;
    :cond_2
    :goto_3
    goto :goto_1

    .line 358
    .end local v3    # "apexInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/apex/ApexInfo;>;"
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 360
    .end local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 346
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "apexInfoList":Ljava/io/File;
    .end local p0    # "partitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    :goto_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 358
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v1    # "apexInfoList":Ljava/io/File;
    .restart local p0    # "partitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading apex-info-list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OverlayConfig"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_5
    return-object v0
.end method

.method private static blacklist getOverlayPackageInfos(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Ljava/util/Map;
    .locals 2
    .param p0, "packageManager"    # Lcom/android/internal/content/om/OverlayConfig$PackageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/content/om/OverlayConfig$PackageProvider;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v0, "overlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    new-instance v1, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda3;-><init>(Ljava/util/HashMap;)V

    invoke-interface {p0, v1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider;->forEachPackage(Lcom/android/internal/util/function/TriConsumer;)V

    .line 330
    return-object v0
.end method

.method private blacklist getSortedOverlays()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfig$Configuration;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "sortedOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$Configuration;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 311
    iget-object v3, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    new-instance v1, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 314
    return-object v0
.end method

.method public static blacklist getSystemInstance()Lcom/android/internal/content/om/OverlayConfig;
    .locals 2

    .line 247
    sget-object v0, Lcom/android/internal/content/om/OverlayConfig;->sInstance:Lcom/android/internal/content/om/OverlayConfig;

    if-eqz v0, :cond_0

    .line 251
    return-object v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System instance not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getZygoteInstance()Lcom/android/internal/content/om/OverlayConfig;
    .locals 5

    .line 216
    const-wide/32 v0, 0x4000000

    const-string v2, "OverlayConfig#getZygoteInstance"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 218
    :try_start_0
    new-instance v2, Lcom/android/internal/content/om/OverlayConfig;

    new-instance v3, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda2;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lcom/android/internal/content/om/OverlayConfig;-><init>(Ljava/io/File;Ljava/util/function/Supplier;Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 218
    return-object v2

    .line 221
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 222
    throw v2
.end method

.method public static blacklist initializeSystemInstance(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Lcom/android/internal/content/om/OverlayConfig;
    .locals 4
    .param p0, "packageProvider"    # Lcom/android/internal/content/om/OverlayConfig$PackageProvider;

    .line 232
    const-wide/32 v0, 0x4000000

    const-string v2, "OverlayConfig#initializeSystemInstance"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 234
    :try_start_0
    new-instance v2, Lcom/android/internal/content/om/OverlayConfig;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p0}, Lcom/android/internal/content/om/OverlayConfig;-><init>(Ljava/io/File;Ljava/util/function/Supplier;Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)V

    sput-object v2, Lcom/android/internal/content/om/OverlayConfig;->sInstance:Lcom/android/internal/content/om/OverlayConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 237
    nop

    .line 238
    sget-object v0, Lcom/android/internal/content/om/OverlayConfig;->sInstance:Lcom/android/internal/content/om/OverlayConfig;

    return-object v0

    .line 236
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 237
    throw v2
.end method

.method static synthetic blacklist lambda$dump$4(Lcom/android/internal/content/om/OverlayConfig$Configuration;)I
    .locals 1
    .param p0, "o"    # Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 467
    iget v0, p0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    return v0
.end method

.method static synthetic blacklist lambda$getOverlayPackageInfos$3(Ljava/util/HashMap;Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;Ljava/lang/Boolean;Ljava/io/File;)V
    .locals 10
    .param p0, "overlays"    # Ljava/util/HashMap;
    .param p1, "p"    # Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;
    .param p2, "isSystem"    # Ljava/lang/Boolean;
    .param p3, "preInstalledApexPath"    # Ljava/io/File;

    .line 323
    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getOverlayTarget()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getTargetSdkVersion()I

    move-result v4

    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->isOverlayIsStatic()Z

    move-result v5

    .line 326
    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getOverlayPriority()I

    move-result v6

    new-instance v7, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v9

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/io/File;Ljava/io/File;)V

    .line 324
    invoke-virtual {p0, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$getSortedOverlays$2(Lcom/android/internal/content/om/OverlayConfig$Configuration;)I
    .locals 1
    .param p0, "o"    # Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 313
    iget v0, p0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    return v0
.end method

.method static synthetic blacklist lambda$new$1(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    .locals 3
    .param p0, "rootDirectory"    # Ljava/io/File;
    .param p1, "p"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 136
    new-instance v0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    new-instance v1, Ljava/io/File;

    .line 137
    invoke-virtual {p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->getNonConicalFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 136
    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;)I
    .locals 5
    .param p0, "c1"    # Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    .param p1, "c2"    # Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    .line 103
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 104
    .local v0, "o1":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    iget-object v1, p1, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 105
    .local v1, "o2":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    iget-boolean v2, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "attempted to sort non-static overlay"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 108
    iget-object v2, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    iget-object v2, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 112
    :cond_1
    iget v2, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->priority:I

    iget v3, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->priority:I

    sub-int/2addr v2, v3

    .line 113
    .local v2, "comparedPriority":I
    if-nez v2, :cond_2

    iget-object v3, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    iget-object v4, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    return v3
.end method


# virtual methods
.method public blacklist createImmutableFrameworkIdmapsInZygote()[Ljava/lang/String;
    .locals 11

    .line 435
    const-string v0, "/system/framework/framework-res.apk"

    .line 436
    .local v0, "targetPath":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v1, "idmapPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfig;->getImmutableFrameworkOverlayIdmapInvocations()Ljava/util/ArrayList;

    move-result-object v2

    .line 440
    .local v2, "idmapInvocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "n":I
    :goto_0
    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 441
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;

    .line 442
    .local v6, "invocation":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    iget-object v7, v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->overlayPaths:Ljava/util/ArrayList;

    new-array v8, v5, [Ljava/lang/String;

    .line 443
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "public"

    aput-object v9, v8, v5

    iget-object v9, v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->policy:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    iget-boolean v9, v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->enforceOverlayable:Z

    .line 442
    const-string v10, "/system/framework/framework-res.apk"

    invoke-static {v10, v7, v8, v9}, Lcom/android/internal/content/om/OverlayConfig;->createIdmap(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    .line 448
    .local v7, "idmaps":[Ljava/lang/String;
    if-nez v7, :cond_0

    .line 449
    const-string v8, "OverlayConfig"

    const-string v9, "\'idmap2 create-multiple\' failed: no mutable=\"false\" overlays targeting \"android\" will be loaded"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-array v5, v5, [Ljava/lang/String;

    return-object v5

    .line 454
    :cond_0
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 440
    .end local v6    # "invocation":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    .end local v7    # "idmaps":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_1
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist createImmutableOplusFrameworkIdmapsInZygote()[Ljava/lang/String;
    .locals 11

    .line 531
    const-string v0, "/system_ext/framework/oplus-framework-res.apk"

    .line 532
    .local v0, "targetPath":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v1, "idmapPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfig;->getImmutableOplusFrameworkOverlayIdmapInvocations()Ljava/util/ArrayList;

    move-result-object v2

    .line 536
    .local v2, "idmapInvocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "n":I
    :goto_0
    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 537
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;

    .line 538
    .local v6, "invocation":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    iget-object v7, v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->overlayPaths:Ljava/util/ArrayList;

    new-array v8, v5, [Ljava/lang/String;

    .line 539
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "public"

    aput-object v9, v8, v5

    iget-object v9, v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->policy:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    iget-boolean v9, v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->enforceOverlayable:Z

    .line 538
    const-string v10, "/system_ext/framework/oplus-framework-res.apk"

    invoke-static {v10, v7, v8, v9}, Lcom/android/internal/content/om/OverlayConfig;->createIdmap(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    .line 544
    .local v7, "idmaps":[Ljava/lang/String;
    if-nez v7, :cond_0

    .line 545
    const-string v8, "OverlayConfig"

    const-string v9, "\'idmap2 create-multiple\' failed: no mutable=\"false\" overlays targeting \"oplus\" will be loaded"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-array v5, v5, [Ljava/lang/String;

    return-object v5

    .line 550
    :cond_0
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 536
    .end local v6    # "invocation":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    .end local v7    # "idmaps":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 553
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_1
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 462
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 463
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    const-string v1, "Overlay configurations:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 466
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 467
    .local v1, "configurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$Configuration;>;"
    new-instance v2, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 468
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 469
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 470
    .local v3, "configuration":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    iget v4, v3, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 471
    const-string v4, ", "

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 472
    iget-object v4, v3, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 473
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 468
    .end local v3    # "configuration":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 476
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 477
    return-void
.end method

.method public blacklist getConfiguration(Ljava/lang/String;)Lcom/android/internal/content/om/OverlayConfig$Configuration;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    return-object v0
.end method

.method public blacklist getImmutableFrameworkOverlayIdmapInvocations()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;",
            ">;"
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v0, "idmapInvocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;>;"
    invoke-direct {p0}, Lcom/android/internal/content/om/OverlayConfig;->getSortedOverlays()Ljava/util/ArrayList;

    move-result-object v1

    .line 393
    .local v1, "sortedConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$Configuration;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 394
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 395
    .local v4, "overlay":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    iget-object v5, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->mutable:Z

    if-nez v5, :cond_4

    iget-object v5, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->enabled:Z

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget-object v5, v5, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 396
    const-string v6, "android"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 397
    goto :goto_2

    .line 403
    :cond_0
    iget-object v5, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget v5, v5, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetSdkVersion:I

    const/16 v6, 0x1d

    const/4 v7, 0x1

    if-lt v5, v6, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 408
    .local v5, "enforceOverlayable":Z
    :goto_1
    const/4 v6, 0x0

    .line 409
    .local v6, "invocation":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 410
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;

    .line 411
    .local v7, "last":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    iget-boolean v8, v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->enforceOverlayable:Z

    if-ne v8, v5, :cond_2

    iget-object v8, v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->policy:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v9, v9, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->policy:Ljava/lang/String;

    .line 412
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 413
    move-object v6, v7

    .line 417
    .end local v7    # "last":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    :cond_2
    if-nez v6, :cond_3

    .line 418
    new-instance v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;

    iget-object v8, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v8, v8, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->policy:Ljava/lang/String;

    invoke-direct {v7, v5, v8}, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;-><init>(ZLjava/lang/String;)V

    move-object v6, v7

    .line 419
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_3
    iget-object v7, v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->overlayPaths:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v8, v8, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget-object v8, v8, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .end local v4    # "overlay":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    .end local v5    # "enforceOverlayable":Z
    .end local v6    # "invocation":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_5
    return-object v0
.end method

.method public blacklist getImmutableOplusFrameworkOverlayIdmapInvocations()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;",
            ">;"
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v0, "idmapInvocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;>;"
    invoke-direct {p0}, Lcom/android/internal/content/om/OverlayConfig;->getSortedOverlays()Ljava/util/ArrayList;

    move-result-object v1

    .line 489
    .local v1, "sortedConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$Configuration;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 490
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 491
    .local v4, "overlay":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    iget-object v5, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->mutable:Z

    if-nez v5, :cond_4

    iget-object v5, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->enabled:Z

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget-object v5, v5, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 492
    const-string/jumbo v6, "oplus"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 493
    goto :goto_2

    .line 499
    :cond_0
    iget-object v5, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget v5, v5, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetSdkVersion:I

    const/16 v6, 0x1d

    const/4 v7, 0x1

    if-lt v5, v6, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 504
    .local v5, "enforceOverlayable":Z
    :goto_1
    const/4 v6, 0x0

    .line 505
    .local v6, "invocation":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 506
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;

    .line 507
    .local v7, "last":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    iget-boolean v8, v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->enforceOverlayable:Z

    if-ne v8, v5, :cond_2

    iget-object v8, v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->policy:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v9, v9, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->policy:Ljava/lang/String;

    .line 508
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 509
    move-object v6, v7

    .line 513
    .end local v7    # "last":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    :cond_2
    if-nez v6, :cond_3

    .line 514
    new-instance v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;

    iget-object v8, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v8, v8, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->policy:Ljava/lang/String;

    invoke-direct {v7, v5, v8}, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;-><init>(ZLjava/lang/String;)V

    move-object v6, v7

    .line 515
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_3
    iget-object v7, v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->overlayPaths:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v8, v8, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget-object v8, v8, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v4    # "overlay":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    .end local v5    # "enforceOverlayable":Z
    .end local v6    # "invocation":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_5
    return-object v0
.end method

.method public blacklist getPriority(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 304
    .local v0, "config":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    if-nez v0, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    :goto_0
    return v1
.end method

.method public blacklist isEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 282
    .local v0, "config":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 283
    :cond_0
    iget-object v1, v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean v1, v1, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->enabled:Z

    .line 282
    :goto_0
    return v1
.end method

.method public blacklist isMutable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 292
    .local v0, "config":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 293
    :cond_0
    iget-object v1, v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean v1, v1, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->mutable:Z

    .line 292
    :goto_0
    return v1
.end method
