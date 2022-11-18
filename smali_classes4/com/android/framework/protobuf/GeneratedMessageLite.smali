.class public abstract Lcom/android/framework/protobuf/GeneratedMessageLite;
.super Lcom/android/framework/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/framework/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static blacklist defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected blacklist memoizedSerializedSize:I

.field protected blacklist unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 282
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 60
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractMessageLite;-><init>()V

    .line 66
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 1
    .param p0, "x0"    # Lcom/android/framework/protobuf/ExtensionLite;

    .line 60
    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist checkIsLite(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1398
    .local p0, "extension":Lcom/android/framework/protobuf/ExtensionLite;, "Lcom/android/framework/protobuf/ExtensionLite<TMessageType;TT;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object v0

    .line 1399
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a lite extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1585
    .local p0, "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1586
    :cond_0
    nop

    .line 1587
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newUninitializedMessageException()Lcom/android/framework/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 1588
    invoke-virtual {v0}, Lcom/android/framework/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 1589
    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1591
    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static blacklist emptyBooleanList()Lcom/android/framework/protobuf/Internal$BooleanList;
    .locals 1

    .line 1469
    invoke-static {}, Lcom/android/framework/protobuf/BooleanArrayList;->emptyList()Lcom/android/framework/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyDoubleList()Lcom/android/framework/protobuf/Internal$DoubleList;
    .locals 1

    .line 1459
    invoke-static {}, Lcom/android/framework/protobuf/DoubleArrayList;->emptyList()Lcom/android/framework/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyFloatList()Lcom/android/framework/protobuf/Internal$FloatList;
    .locals 1

    .line 1449
    invoke-static {}, Lcom/android/framework/protobuf/FloatArrayList;->emptyList()Lcom/android/framework/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyIntList()Lcom/android/framework/protobuf/Internal$IntList;
    .locals 1

    .line 1429
    invoke-static {}, Lcom/android/framework/protobuf/IntArrayList;->emptyList()Lcom/android/framework/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyLongList()Lcom/android/framework/protobuf/Internal$LongList;
    .locals 1

    .line 1439
    invoke-static {}, Lcom/android/framework/protobuf/LongArrayList;->emptyList()Lcom/android/framework/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;
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

    .line 1479
    invoke-static {}, Lcom/android/framework/protobuf/ProtobufArrayList;->emptyList()Lcom/android/framework/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final blacklist ensureUnknownFieldsInitialized()V
    .locals 2

    .line 136
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 137
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 139
    :cond_0
    return-void
.end method

.method static blacklist getDefaultInstance(Ljava/lang/Class;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 287
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 288
    .local v0, "result":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    if-nez v0, :cond_0

    .line 292
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    nop

    .line 296
    sget-object v1, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Class initialization cannot fail."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 298
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 301
    invoke-static {p0}, Lcom/android/framework/protobuf/UnsafeUtil;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_1

    .line 306
    sget-object v1, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 304
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 308
    :cond_2
    :goto_1
    return-object v0
.end method

.method static varargs blacklist getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .line 1146
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated message class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1149
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" missing method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static varargs blacklist invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 1157
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1163
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 1165
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_0

    .line 1166
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 1168
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1164
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1158
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static final blacklist isInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;Z)Z
    .locals 4
    .param p1, "shouldMemoize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1412
    .local p0, "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1413
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1414
    .local v0, "memoizedIsInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1415
    return v1

    .line 1417
    :cond_0
    if-nez v0, :cond_1

    .line 1418
    const/4 v1, 0x0

    return v1

    .line 1420
    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v1

    .line 1421
    .local v1, "isInitialized":Z
    if-eqz p1, :cond_3

    .line 1422
    sget-object v2, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1423
    if-eqz v1, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 1422
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    :cond_3
    return v1
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$BooleanList;)Lcom/android/framework/protobuf/Internal$BooleanList;
    .locals 2
    .param p0, "list"    # Lcom/android/framework/protobuf/Internal$BooleanList;

    .line 1473
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 1474
    .local v0, "size":I
    nop

    .line 1475
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1474
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$BooleanList;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$DoubleList;)Lcom/android/framework/protobuf/Internal$DoubleList;
    .locals 2
    .param p0, "list"    # Lcom/android/framework/protobuf/Internal$DoubleList;

    .line 1463
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 1464
    .local v0, "size":I
    nop

    .line 1465
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1464
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$DoubleList;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$FloatList;)Lcom/android/framework/protobuf/Internal$FloatList;
    .locals 2
    .param p0, "list"    # Lcom/android/framework/protobuf/Internal$FloatList;

    .line 1453
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 1454
    .local v0, "size":I
    nop

    .line 1455
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1454
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$FloatList;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$IntList;)Lcom/android/framework/protobuf/Internal$IntList;
    .locals 2
    .param p0, "list"    # Lcom/android/framework/protobuf/Internal$IntList;

    .line 1433
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 1434
    .local v0, "size":I
    nop

    .line 1435
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1434
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$IntList;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$LongList;)Lcom/android/framework/protobuf/Internal$LongList;
    .locals 2
    .param p0, "list"    # Lcom/android/framework/protobuf/Internal$LongList;

    .line 1443
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 1444
    .local v0, "size":I
    nop

    .line 1445
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1444
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$LongList;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;
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

    .line 1483
    .local p0, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<TE;>;"
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 1484
    .local v0, "size":I
    nop

    .line 1485
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1484
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist newMessageInfo(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "defaultInstance"    # Lcom/android/framework/protobuf/MessageLite;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;

    .line 318
    new-instance v0, Lcom/android/framework/protobuf/RawMessageInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/RawMessageInfo;-><init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist newRepeatedGeneratedExtension(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;ZLjava/lang/Class;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 9
    .param p1, "messageDefaultInstance"    # Lcom/android/framework/protobuf/MessageLite;
    .param p3, "number"    # I
    .param p4, "type"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p5, "isPacked"    # Z
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1067
    .local p0, "containingTypeDefaultInstance":Lcom/android/framework/protobuf/MessageLite;, "TContainingType;"
    .local p2, "enumTypeMap":Lcom/android/framework/protobuf/Internal$EnumLiteMap;, "Lcom/android/framework/protobuf/Internal$EnumLiteMap<*>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 1068
    .local v6, "emptyList":Ljava/lang/Object;, "TType;"
    new-instance v7, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v8, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x1

    move-object v0, v8

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, v8

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v7
.end method

.method public static blacklist newSingularGeneratedExtension(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 8
    .param p2, "messageDefaultInstance"    # Lcom/android/framework/protobuf/MessageLite;
    .param p4, "number"    # I
    .param p5, "type"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1047
    .local p0, "containingTypeDefaultInstance":Lcom/android/framework/protobuf/MessageLite;, "TContainingType;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TType;"
    .local p3, "enumTypeMap":Lcom/android/framework/protobuf/Internal$EnumLiteMap;, "Lcom/android/framework/protobuf/Internal$EnumLiteMap<*>;"
    new-instance v6, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v7, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v6
.end method

.method protected static blacklist parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1700
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1702
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1701
    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1700
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1709
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1710
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1709
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/ByteString;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1611
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1612
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1611
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/ByteString;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1619
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1687
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1694
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1669
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1672
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 1673
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 1670
    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1669
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1680
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1681
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1680
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1605
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1598
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1599
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1598
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[B)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1654
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    array-length v0, p1

    .line 1655
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 1654
    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1662
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    array-length v0, p1

    .line 1663
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1662
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parsePartialDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1718
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1719
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1720
    const/4 v1, 0x0

    return-object v1

    .line 1722
    :cond_0
    invoke-static {v0, p1}, Lcom/android/framework/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 1725
    .local v0, "size":I
    nop

    .line 1726
    new-instance v1, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1727
    .local v1, "limitedInput":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v2

    .line 1728
    .local v2, "codedInput":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-static {p0, v2, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v3

    .line 1730
    .local v3, "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1733
    nop

    .line 1734
    return-object v3

    .line 1731
    :catch_0
    move-exception v4

    .line 1732
    .local v4, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v4, v3}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5

    .line 1723
    .end local v0    # "size":I
    .end local v1    # "limitedInput":Ljava/io/InputStream;
    .end local v2    # "codedInput":Lcom/android/framework/protobuf/CodedInputStream;
    .end local v3    # "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    .end local v4    # "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v0

    .line 1724
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 4
    .param p1, "data"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/ByteString;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1629
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 1630
    .local v0, "input":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1632
    .local v1, "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1635
    nop

    .line 1636
    return-object v1

    .line 1633
    :catch_0
    move-exception v2

    .line 1634
    .local v2, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local p0    # "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    .end local p1    # "data":Lcom/android/framework/protobuf/ByteString;
    .end local p2    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_2
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1637
    .end local v0    # "input":Lcom/android/framework/protobuf/CodedInputStream;
    .end local v1    # "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    .end local v2    # "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .restart local p0    # "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    .restart local p1    # "data":Lcom/android/framework/protobuf/ByteString;
    .restart local p2    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v0

    .line 1638
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method protected static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1574
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1526
    .local p0, "instance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 1530
    .local v0, "result":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    .line 1531
    .local v1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->forCodedInput(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/CodedInputStreamReader;

    move-result-object v2

    invoke-interface {v1, v0, v2, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 1532
    invoke-interface {v1, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    .end local v1    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    nop

    .line 1544
    return-object v0

    .line 1538
    :catch_0
    move-exception v1

    .line 1539
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    if-eqz v2, :cond_0

    .line 1540
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    throw v2

    .line 1542
    :cond_0
    throw v1

    .line 1533
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 1534
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    if-eqz v2, :cond_1

    .line 1535
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    throw v2

    .line 1537
    :cond_1
    new-instance v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 8
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[BII",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1552
    .local p0, "instance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 1554
    .local v0, "result":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    move-object v7, v1

    .line 1555
    .local v7, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    add-int v5, p2, p3

    new-instance v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;

    invoke-direct {v6, p4}, Lcom/android/framework/protobuf/ArrayDecoders$Registers;-><init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    move-object v1, v7

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V

    .line 1557
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 1558
    iget v1, v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    if-nez v1, :cond_0

    .line 1568
    .end local v7    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    nop

    .line 1569
    return-object v0

    .line 1559
    .restart local v7    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .end local v0    # "result":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    .end local p0    # "instance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    .end local p1    # "input":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    .end local v7    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    .restart local v0    # "result":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    .restart local p0    # "instance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    .restart local p1    # "input":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :catch_0
    move-exception v1

    .line 1567
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1561
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 1562
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    if-eqz v2, :cond_1

    .line 1563
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    throw v2

    .line 1565
    :cond_1
    new-instance v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1647
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    array-length v0, p1

    .line 1648
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1647
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist registerDefaultInstance(Ljava/lang/Class;Lcom/android/framework/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 313
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    return-void
.end method


# virtual methods
.method blacklist buildMessageInfo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist createBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method protected final blacklist createBuilder(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    .local p1, "prototype":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->createBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 251
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;

    .line 246
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 119
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    if-ne p0, p1, :cond_0

    .line 120
    const/4 v0, 0x1

    return v0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-interface {v0, p0, v1}, Lcom/android/framework/protobuf/Schema;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final blacklist getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic blacklist getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;
    .locals 1

    .line 60
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method blacklist getMemoizedSerializedSize()I
    .locals 1

    .line 256
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public final blacklist getParserForType()Lcom/android/framework/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Parser<",
            "TMessageType;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Parser;

    return-object v0
.end method

.method public blacklist getSerializedSize()I
    .locals 2

    .line 271
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 272
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/framework/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 274
    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 109
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/framework/protobuf/Schema;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 113
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public final blacklist isInitialized()Z
    .locals 1

    .line 189
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method protected blacklist makeImmutable()V
    .locals 1

    .line 170
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method protected blacklist mergeLengthDelimitedField(ILcom/android/framework/protobuf/ByteString;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/ByteString;

    .line 164
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 165
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeLengthDelimitedField(ILcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 166
    return-void
.end method

.method protected final blacklist mergeUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSetLite;)V
    .locals 1
    .param p1, "unknownFields"    # Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 327
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 328
    return-void
.end method

.method protected blacklist mergeVarintField(II)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 158
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 159
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeVarintField(II)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 160
    return-void
.end method

.method public final blacklist newBuilderForType()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method public bridge synthetic blacklist newBuilderForType()Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist parseUnknownField(ILcom/android/framework/protobuf/CodedInputStream;)Z
    .locals 2
    .param p1, "tag"    # I
    .param p2, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 149
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 153
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/android/framework/protobuf/CodedInputStream;)Z

    move-result v0

    return v0
.end method

.method blacklist setMemoizedSerializedSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 261
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iput p1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 262
    return-void
.end method

.method public final blacklist toBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    .line 196
    .local v0, "builder":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "TBuilderType;"
    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    .line 197
    return-object v0
.end method

.method public bridge synthetic blacklist toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->toBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 103
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/MessageLiteToString;->toString(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 267
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->forCodedOutput(Lcom/android/framework/protobuf/CodedOutputStream;)Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 268
    return-void
.end method
