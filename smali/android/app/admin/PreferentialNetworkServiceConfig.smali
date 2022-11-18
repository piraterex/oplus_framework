.class public final Landroid/app/admin/PreferentialNetworkServiceConfig;
.super Ljava/lang/Object;
.source "PreferentialNetworkServiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;,
        Landroid/app/admin/PreferentialNetworkServiceConfig$PreferentialNetworkPreferenceId;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PreferentialNetworkServiceConfig"

.field public static final whitelist PREFERENTIAL_NETWORK_ID_1:I = 0x1

.field public static final whitelist PREFERENTIAL_NETWORK_ID_2:I = 0x2

.field public static final whitelist PREFERENTIAL_NETWORK_ID_3:I = 0x3

.field public static final whitelist PREFERENTIAL_NETWORK_ID_4:I = 0x4

.field public static final whitelist PREFERENTIAL_NETWORK_ID_5:I = 0x5

.field private static final blacklist TAG_ALLOW_FALLBACK_TO_DEFAULT_CONNECTION:Ljava/lang/String; = "allow_fallback_to_default_connection"

.field private static final blacklist TAG_CONFIG_ENABLED:Ljava/lang/String; = "preferential_network_service_config_enabled"

.field private static final blacklist TAG_EXCLUDED_UIDS:Ljava/lang/String; = "excluded_uids"

.field private static final blacklist TAG_INCLUDED_UIDS:Ljava/lang/String; = "included_uids"

.field private static final blacklist TAG_NETWORK_ID:Ljava/lang/String; = "preferential_network_service_network_id"

.field private static final blacklist TAG_PREFERENTIAL_NETWORK_SERVICE_CONFIG:Ljava/lang/String; = "preferential_network_service_config"

.field private static final blacklist TAG_UID:Ljava/lang/String; = "uid"


# instance fields
.field final blacklist mAllowFallbackToDefaultConnection:Z

.field final blacklist mExcludedUids:[I

.field final blacklist mIncludedUids:[I

.field final blacklist mIsEnabled:Z

.field final blacklist mNetworkId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    .line 72
    invoke-virtual {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v0

    sput-object v0, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 477
    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$1;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$1;-><init>()V

    sput-object v0, Landroid/app/admin/PreferentialNetworkServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    .line 128
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/PreferentialNetworkServiceConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZ[I[II)V
    .locals 0
    .param p1, "isEnabled"    # Z
    .param p2, "allowFallbackToDefaultConnection"    # Z
    .param p3, "includedUids"    # [I
    .param p4, "excludedUids"    # [I
    .param p5, "networkId"    # I

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    .line 116
    iput-boolean p2, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    .line 117
    iput-object p3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    .line 118
    iput-object p4, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    .line 119
    iput p5, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    .line 120
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZ[I[IILandroid/app/admin/PreferentialNetworkServiceConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/admin/PreferentialNetworkServiceConfig;-><init>(ZZ[I[II)V

    return-void
.end method

.method public static blacklist getPreferentialNetworkServiceConfig(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/app/admin/PreferentialNetworkServiceConfig;
    .locals 9
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 409
    .local v0, "outerDepthDAM":I
    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    .line 411
    .local v1, "resultBuilder":Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "typeDAM":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 412
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_9

    .line 413
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 414
    goto :goto_0

    .line 416
    :cond_2
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "tagDAM":Ljava/lang/String;
    const-string/jumbo v5, "preferential_network_service_config_enabled"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const-string/jumbo v7, "value"

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    .line 418
    invoke-interface {p0, v8, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto :goto_1

    .line 420
    :cond_3
    const-string/jumbo v5, "preferential_network_service_network_id"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 421
    invoke-interface {p0, v8, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 422
    .local v4, "val":I
    if-eqz v4, :cond_4

    .line 423
    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 425
    .end local v4    # "val":I
    :cond_4
    goto :goto_1

    :cond_5
    const-string v5, "allow_fallback_to_default_connection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 426
    invoke-interface {p0, v8, v7, v4}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setFallbackToDefaultConnectionAllowed(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto :goto_1

    .line 428
    :cond_6
    const-string v4, "included_uids"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "uid"

    if-eqz v4, :cond_7

    .line 429
    invoke-static {p0, v5}, Landroid/app/admin/PreferentialNetworkServiceConfig;->readStringListToIntArray(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setIncludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto :goto_1

    .line 430
    :cond_7
    const-string v4, "excluded_uids"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 431
    invoke-static {p0, v5}, Landroid/app/admin/PreferentialNetworkServiceConfig;->readStringListToIntArray(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setExcludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto :goto_1

    .line 433
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag under "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PreferentialNetworkServiceConfig"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v2    # "tagDAM":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 436
    :cond_9
    invoke-virtual {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v2

    return-object v2
.end method

.method private blacklist intArrayToStringList([I)Ljava/util/List;
    .locals 2
    .param p1, "array"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic blacklist lambda$readStringListToIntArray$0(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 396
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    .local p2, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Collection;->clear()V

    .line 371
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 373
    .local v0, "outerDepthDAM":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "typeDAM":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 374
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 375
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 376
    goto :goto_0

    .line 378
    :cond_2
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "tagDAM":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 380
    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 382
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreferentialNetworkServiceConfig"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v1    # "tagDAM":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 385
    :cond_4
    return-void
.end method

.method private static blacklist readStringListToIntArray(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[I
    .locals 3
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v0, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, v0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    .line 395
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda1;-><init>()V

    .line 396
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    .line 397
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 398
    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 399
    .local v1, "intArray":[I
    return-object v1
.end method

.method private blacklist writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V
    .locals 2
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    return-void
.end method

.method private blacklist writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    return-void
.end method

.method private blacklist writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "outerTag"    # Ljava/lang/String;
    .param p3, "innerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    .local p4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 360
    .local v2, "value":Ljava/lang/String;
    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    const-string/jumbo v3, "value"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 364
    :cond_0
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 459
    const-string/jumbo v0, "networkId="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 460
    iget v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 461
    const-string v0, "isEnabled="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 462
    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 463
    const-string v0, "allowFallbackToDefaultConnection="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 464
    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 465
    const-string v0, "includedUids="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 467
    const-string v0, "excludedUids="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 469
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 200
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 201
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 202
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 203
    .local v2, "that":Landroid/app/admin/PreferentialNetworkServiceConfig;
    iget-boolean v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    iget-boolean v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    iget-boolean v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    iget v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    iget-object v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    .line 206
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    iget-object v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    .line 207
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 203
    :goto_0
    return v0

    .line 201
    .end local v2    # "that":Landroid/app/admin/PreferentialNetworkServiceConfig;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getExcludedUids()[I
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    return-object v0
.end method

.method public whitelist getIncludedUids()[I
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    return-object v0
.end method

.method public whitelist getNetworkId()I
    .locals 1

    .line 184
    iget v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 212
    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-boolean v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    .line 213
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    .line 214
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    .line 215
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 212
    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    return v0
.end method

.method public whitelist isFallbackToDefaultConnectionAllowed()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferentialNetworkServiceConfig{mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mAllowFallbackToDefaultConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isFallbackToDefaultConnectionAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mIncludedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    .line 192
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mExcludedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    .line 193
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 335
    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 336
    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 337
    iget v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 339
    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 340
    return-void
.end method

.method public blacklist writeToXml(Landroid/util/TypedXmlSerializer;)V
    .locals 5
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    const/4 v0, 0x0

    const-string/jumbo v1, "preferential_network_service_config"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v2

    const-string/jumbo v3, "preferential_network_service_config_enabled"

    invoke-direct {p0, p1, v3, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 445
    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getNetworkId()I

    move-result v2

    const-string/jumbo v3, "preferential_network_service_network_id"

    invoke-direct {p0, p1, v3, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 446
    nop

    .line 447
    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isFallbackToDefaultConnectionAllowed()Z

    move-result v2

    .line 446
    const-string v3, "allow_fallback_to_default_connection"

    invoke-direct {p0, p1, v3, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 448
    nop

    .line 449
    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getIncludedUids()[I

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->intArrayToStringList([I)Ljava/util/List;

    move-result-object v2

    .line 448
    const-string v3, "included_uids"

    const-string/jumbo v4, "uid"

    invoke-direct {p0, p1, v3, v4, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 450
    nop

    .line 451
    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getExcludedUids()[I

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->intArrayToStringList([I)Ljava/util/List;

    move-result-object v2

    .line 450
    const-string v3, "excluded_uids"

    invoke-direct {p0, p1, v3, v4, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 452
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    return-void
.end method
