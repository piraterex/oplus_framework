.class Lcom/android/framework/protobuf/MapFieldSchemaLite;
.super Ljava/lang/Object;
.source "MapFieldSchemaLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/MapFieldSchema;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getSerializedSizeLite(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p0, "fieldNumber"    # I
    .param p1, "mapField"    # Ljava/lang/Object;
    .param p2, "defaultEntry"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 95
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    .line 96
    .local v0, "mapFieldLite":Lcom/android/framework/protobuf/MapFieldLite;, "Lcom/android/framework/protobuf/MapFieldLite<TK;TV;>;"
    move-object v1, p2

    check-cast v1, Lcom/android/framework/protobuf/MapEntryLite;

    .line 98
    .local v1, "defaultEntryLite":Lcom/android/framework/protobuf/MapEntryLite;, "Lcom/android/framework/protobuf/MapEntryLite<TK;TV;>;"
    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const/4 v2, 0x0

    return v2

    .line 101
    :cond_0
    const/4 v2, 0x0

    .line 102
    .local v2, "size":I
    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 103
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, p0, v5, v6}, Lcom/android/framework/protobuf/MapEntryLite;->computeMessageSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    .line 104
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 105
    :cond_1
    return v2
.end method

.method private static blacklist mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/framework/protobuf/MapFieldLite;
    .locals 3
    .param p0, "destMapField"    # Ljava/lang/Object;
    .param p1, "srcMapField"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 76
    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    .line 77
    .local v0, "mine":Lcom/android/framework/protobuf/MapFieldLite;, "Lcom/android/framework/protobuf/MapFieldLite<TK;TV;>;"
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/MapFieldLite;

    .line 78
    .local v1, "other":Lcom/android/framework/protobuf/MapFieldLite;, "Lcom/android/framework/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {v1}, Lcom/android/framework/protobuf/MapFieldLite;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->isMutable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->mutableCopy()Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object v0

    .line 82
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/MapFieldLite;->mergeFrom(Lcom/android/framework/protobuf/MapFieldLite;)V

    .line 84
    :cond_1
    return-object v0
.end method


# virtual methods
.method public blacklist forMapData(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "mapField"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 50
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    return-object v0
.end method

.method public blacklist forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;
    .locals 1
    .param p1, "mapDefaultEntry"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "**>;"
        }
    .end annotation

    .line 45
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapEntryLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapEntryLite;->getMetadata()Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public blacklist forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "mapField"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 40
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    return-object v0
.end method

.method public blacklist getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "mapField"    # Ljava/lang/Object;
    .param p3, "mapDefaultEntry"    # Ljava/lang/Object;

    .line 89
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/MapFieldSchemaLite;->getSerializedSizeLite(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isImmutable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "mapField"    # Ljava/lang/Object;

    .line 55
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "destMapField"    # Ljava/lang/Object;
    .param p2, "srcMapField"    # Ljava/lang/Object;

    .line 71
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/MapFieldSchemaLite;->mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newMapField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "unused"    # Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/android/framework/protobuf/MapFieldLite;->emptyMapField()Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->mutableCopy()Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "mapField"    # Ljava/lang/Object;

    .line 60
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->makeImmutable()V

    .line 61
    return-object p1
.end method
