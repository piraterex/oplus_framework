.class final Lcom/android/framework/protobuf/ProtobufLists;
.super Ljava/lang/Object;
.source "ProtobufLists.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist emptyBooleanList()Lcom/android/framework/protobuf/Internal$BooleanList;
    .locals 1

    .line 56
    invoke-static {}, Lcom/android/framework/protobuf/BooleanArrayList;->emptyList()Lcom/android/framework/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyDoubleList()Lcom/android/framework/protobuf/Internal$DoubleList;
    .locals 1

    .line 88
    invoke-static {}, Lcom/android/framework/protobuf/DoubleArrayList;->emptyList()Lcom/android/framework/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyFloatList()Lcom/android/framework/protobuf/Internal$FloatList;
    .locals 1

    .line 80
    invoke-static {}, Lcom/android/framework/protobuf/FloatArrayList;->emptyList()Lcom/android/framework/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyIntList()Lcom/android/framework/protobuf/Internal$IntList;
    .locals 1

    .line 64
    invoke-static {}, Lcom/android/framework/protobuf/IntArrayList;->emptyList()Lcom/android/framework/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyLongList()Lcom/android/framework/protobuf/Internal$LongList;
    .locals 1

    .line 72
    invoke-static {}, Lcom/android/framework/protobuf/LongArrayList;->emptyList()Lcom/android/framework/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/android/framework/protobuf/ProtobufArrayList;->emptyList()Lcom/android/framework/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 50
    .local p0, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<TE;>;"
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 51
    .local v0, "size":I
    nop

    .line 52
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 51
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist newBooleanList()Lcom/android/framework/protobuf/Internal$BooleanList;
    .locals 1

    .line 60
    new-instance v0, Lcom/android/framework/protobuf/BooleanArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newDoubleList()Lcom/android/framework/protobuf/Internal$DoubleList;
    .locals 1

    .line 92
    new-instance v0, Lcom/android/framework/protobuf/DoubleArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/DoubleArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newFloatList()Lcom/android/framework/protobuf/Internal$FloatList;
    .locals 1

    .line 84
    new-instance v0, Lcom/android/framework/protobuf/FloatArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/FloatArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newIntList()Lcom/android/framework/protobuf/Internal$IntList;
    .locals 1

    .line 68
    new-instance v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newLongList()Lcom/android/framework/protobuf/Internal$LongList;
    .locals 1

    .line 76
    new-instance v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LongArrayList;-><init>()V

    return-object v0
.end method
