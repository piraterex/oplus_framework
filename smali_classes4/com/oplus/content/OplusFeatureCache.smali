.class public Lcom/oplus/content/OplusFeatureCache;
.super Ljava/lang/Object;
.source "OplusFeatureCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;,
        Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;
    }
.end annotation


# static fields
.field public static final whitelist ALL_TYPE:I = 0x6

.field private static final blacklist FEATURES_CACHE_MAP:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MEMORYFEATURES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MEMORYNATIVEFEATURES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MEMORY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PERSISTFEATURES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PERSISTNATIVEFEATURES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PERSIST_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist READONLYFEATURES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist READONLYNATIVEFEATURES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist READONLY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusFeatureCache"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/content/OplusFeatureCache;->READONLYFEATURES:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/content/OplusFeatureCache;->MEMORYFEATURES:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/content/OplusFeatureCache;->PERSISTFEATURES:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/content/OplusFeatureCache;->READONLYNATIVEFEATURES:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/content/OplusFeatureCache;->MEMORYNATIVEFEATURES:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/content/OplusFeatureCache;->PERSISTNATIVEFEATURES:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/oplus/content/OplusFeatureCache;->FEATURES_CACHE_MAP:Landroid/util/ArrayMap;

    .line 51
    new-instance v0, Lcom/oplus/content/OplusFeatureCache$1;

    const/16 v1, 0x100

    const-string/jumbo v2, "sys.cache.has_feature_readonly"

    invoke-direct {v0, v1, v2}, Lcom/oplus/content/OplusFeatureCache$1;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/content/OplusFeatureCache;->READONLY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    .line 65
    new-instance v0, Lcom/oplus/content/OplusFeatureCache$2;

    const-string/jumbo v2, "sys.cache.has_feature_persist"

    invoke-direct {v0, v1, v2}, Lcom/oplus/content/OplusFeatureCache$2;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/content/OplusFeatureCache;->PERSIST_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    .line 79
    new-instance v0, Lcom/oplus/content/OplusFeatureCache$3;

    const-string/jumbo v2, "sys.cache.has_feature_memory"

    invoke-direct {v0, v1, v2}, Lcom/oplus/content/OplusFeatureCache$3;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/content/OplusFeatureCache;->MEMORY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->INVALID:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-virtual {v1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 94
    sget-object v1, Lcom/oplus/content/OplusFeatureCache;->FEATURES_CACHE_MAP:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;

    invoke-direct {v3, v0}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-direct {p0}, Lcom/oplus/content/OplusFeatureCache;->init()V

    .line 100
    return-void
.end method

.method public static whitelist disableOplusFeatureCache(I)V
    .locals 1
    .param p0, "featureType"    # I

    .line 276
    sget-object v0, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->MEMORY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v0}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 277
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->MEMORY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    goto :goto_0

    .line 278
    :cond_0
    sget-object v0, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->PERSIST_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v0}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 279
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->PERSIST_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    goto :goto_0

    .line 280
    :cond_1
    sget-object v0, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->READONLY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v0}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    .line 281
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->READONLY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    goto :goto_0

    .line 282
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 283
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->MEMORY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 284
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->PERSIST_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 285
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->READONLY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 287
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist init()V
    .locals 13

    .line 103
    const-string v0, "Milliseconds spent on init(): "

    const-string v1, "OplusFeatureCache"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 105
    .local v2, "startTime":J
    :try_start_0
    const-class v4, Lcom/oplus/content/IOplusFeatureConfigList;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 106
    .local v4, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 107
    .local v7, "field":Ljava/lang/reflect/Field;
    const-class v8, Lcom/oplus/annotation/OplusFeature;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    .line 108
    .local v8, "isAnnotation":Z
    if-eqz v8, :cond_0

    .line 109
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 110
    .local v9, "featureName":Ljava/lang/String;
    const-class v10, Lcom/oplus/annotation/OplusFeature;

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/oplus/annotation/OplusFeature;

    .line 111
    .local v10, "annotation":Lcom/oplus/annotation/OplusFeature;
    if-eqz v10, :cond_0

    .line 112
    sget-object v11, Lcom/oplus/content/OplusFeatureCache$4;->$SwitchMap$com$oplus$annotation$OplusFeature$OplusFeatureType:[I

    invoke-interface {v10}, Lcom/oplus/annotation/OplusFeature;->value()Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 138
    goto :goto_1

    .line 134
    :pswitch_0
    sget-object v11, Lcom/oplus/content/OplusFeatureCache;->PERSISTNATIVEFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    goto :goto_2

    .line 130
    :pswitch_1
    sget-object v11, Lcom/oplus/content/OplusFeatureCache;->MEMORYNATIVEFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    goto :goto_2

    .line 126
    :pswitch_2
    sget-object v11, Lcom/oplus/content/OplusFeatureCache;->READONLYNATIVEFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_2

    .line 122
    :pswitch_3
    sget-object v11, Lcom/oplus/content/OplusFeatureCache;->PERSISTFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    goto :goto_2

    .line 118
    :pswitch_4
    sget-object v11, Lcom/oplus/content/OplusFeatureCache;->MEMORYFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_2

    .line 114
    :pswitch_5
    sget-object v11, Lcom/oplus/content/OplusFeatureCache;->READONLYFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_2

    .line 138
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknow type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v10}, Lcom/oplus/annotation/OplusFeature;->value()Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "isAnnotation":Z
    .end local v9    # "featureName":Ljava/lang/String;
    .end local v10    # "annotation":Lcom/oplus/annotation/OplusFeature;
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 147
    .end local v4    # "fields":[Ljava/lang/reflect/Field;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 148
    .local v4, "endTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v6, v4, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v4    # "endTime":J
    goto :goto_4

    .line 147
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 144
    :catch_0
    move-exception v4

    .line 145
    .local v4, "e":Ljava/lang/IllegalAccessException;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccessException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    nop

    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 148
    .local v4, "endTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 150
    .end local v4    # "endTime":J
    :goto_4
    return-void

    .line 147
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 148
    .local v5, "endTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v7, v5, v2

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v5    # "endTime":J
    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist invalidateOplusFeatureCache(I)V
    .locals 1
    .param p0, "featureType"    # I

    .line 290
    sget-object v0, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->MEMORY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v0}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 291
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->MEMORY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    goto :goto_0

    .line 292
    :cond_0
    sget-object v0, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->PERSIST_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v0}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 293
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->PERSIST_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    goto :goto_0

    .line 294
    :cond_1
    sget-object v0, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->READONLY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v0}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    .line 295
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->READONLY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    goto :goto_0

    .line 296
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 297
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->MEMORY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 298
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->PERSIST_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 299
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->READONLY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 301
    :cond_3
    :goto_0
    return-void
.end method

.method public static whitelist invalidateOplusFeatureCache(II)V
    .locals 2
    .param p0, "featureType"    # I
    .param p1, "featureID"    # I

    .line 304
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->FEATURES_CACHE_MAP:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;

    .line 305
    .local v0, "featureCache":Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;
    if-eqz v0, :cond_3

    .line 306
    sget-object v1, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->READONLY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v1}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 307
    invoke-static {v0}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->-$$Nest$fgetmMemoryFeatureCache(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)Landroid/app/PropertyInvalidatedCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    goto :goto_0

    .line 308
    :cond_0
    sget-object v1, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->PERSIST_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v1}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_1

    .line 309
    invoke-static {v0}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->-$$Nest$fgetmPersistFeatureCache(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)Landroid/app/PropertyInvalidatedCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    goto :goto_0

    .line 310
    :cond_1
    sget-object v1, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->READONLY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v1}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_2

    .line 311
    invoke-static {v0}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->-$$Nest$fgetmReadonlyFeatureCache(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)Landroid/app/PropertyInvalidatedCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    goto :goto_0

    .line 312
    :cond_2
    const/4 v1, 0x6

    if-ne p0, v1, :cond_3

    .line 313
    invoke-static {v0}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->-$$Nest$fgetmMemoryFeatureCache(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)Landroid/app/PropertyInvalidatedCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 314
    invoke-static {v0}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->-$$Nest$fgetmPersistFeatureCache(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)Landroid/app/PropertyInvalidatedCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 315
    invoke-static {v0}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->-$$Nest$fgetmReadonlyFeatureCache(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)Landroid/app/PropertyInvalidatedCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 318
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist isNativeFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 267
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->MEMORYNATIVEFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->READONLYNATIVEFEATURES:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->PERSISTNATIVEFEATURES:Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist query(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->MEMORYFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->MEMORY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;

    sget-object v2, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->MEMORY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v2}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 233
    :cond_0
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->PERSISTFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->PERSIST_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;

    sget-object v2, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->PERSIST_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v2}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 235
    :cond_1
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->READONLYFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->READONLY_FEATURE_CACHE:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;

    sget-object v2, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->READONLY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v2}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 237
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/content/OplusFeatureCache;->isNativeFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 238
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 240
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid oplus feature "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusFeatureCache"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v1
.end method

.method public whitelist query(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "featureID"    # I

    .line 246
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-virtual {v0}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/oplus/content/OplusFeatureCache;->query(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 249
    :cond_0
    sget-object v0, Lcom/oplus/content/OplusFeatureCache;->FEATURES_CACHE_MAP:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;

    .line 250
    .local v0, "featureCache":Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;
    const-string v1, "OplusFeatureCache"

    if-eqz v0, :cond_4

    .line 251
    sget-object v2, Lcom/oplus/content/OplusFeatureCache;->MEMORYFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    invoke-static {v0}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->-$$Nest$fgetmMemoryFeatureCache(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)Landroid/app/PropertyInvalidatedCache;

    move-result-object v1

    new-instance v2, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;

    sget-object v3, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->READONLY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v3}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 253
    :cond_1
    sget-object v2, Lcom/oplus/content/OplusFeatureCache;->PERSISTFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    invoke-static {v0}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->-$$Nest$fgetmPersistFeatureCache(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)Landroid/app/PropertyInvalidatedCache;

    move-result-object v1

    new-instance v2, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;

    sget-object v3, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->PERSIST_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v3}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 255
    :cond_2
    sget-object v2, Lcom/oplus/content/OplusFeatureCache;->READONLYFEATURES:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    invoke-static {v0}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->-$$Nest$fgetmReadonlyFeatureCache(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)Landroid/app/PropertyInvalidatedCache;

    move-result-object v1

    new-instance v2, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;

    sget-object v3, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->READONLY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v3}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->ordinal()I

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 258
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid oplus feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid oplus feature id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    const/4 v1, 0x0

    return v1
.end method
