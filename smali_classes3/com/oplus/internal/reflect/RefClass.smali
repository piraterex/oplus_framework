.class public final Lcom/oplus/internal/reflect/RefClass;
.super Ljava/lang/Object;
.source "RefClass.java"


# static fields
.field private static final blacklist REF_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "RefClass"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/internal/reflect/RefClass;->REF_TYPES:Ljava/util/HashMap;

    .line 18
    const/16 v0, 0x15

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/oplus/internal/reflect/RefObject;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/oplus/internal/reflect/RefMethod;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/oplus/internal/reflect/RefStaticMethod;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-class v5, Lcom/oplus/internal/reflect/RefInt;

    aput-object v5, v0, v1

    const/4 v1, 0x4

    const-class v5, Lcom/oplus/internal/reflect/RefLong;

    aput-object v5, v0, v1

    const/4 v1, 0x5

    const-class v5, Lcom/oplus/internal/reflect/RefFloat;

    aput-object v5, v0, v1

    const/4 v1, 0x6

    const-class v5, Lcom/oplus/internal/reflect/RefDouble;

    aput-object v5, v0, v1

    const/4 v1, 0x7

    const-class v5, Lcom/oplus/internal/reflect/RefBoolean;

    aput-object v5, v0, v1

    const/16 v1, 0x8

    const-class v5, Lcom/oplus/internal/reflect/RefByte;

    aput-object v5, v0, v1

    const/16 v1, 0x9

    const-class v5, Lcom/oplus/internal/reflect/RefChar;

    aput-object v5, v0, v1

    const/16 v1, 0xa

    const-class v5, Lcom/oplus/internal/reflect/RefShort;

    aput-object v5, v0, v1

    const/16 v1, 0xb

    const-class v5, Lcom/oplus/internal/reflect/RefConstructor;

    aput-object v5, v0, v1

    const/16 v1, 0xc

    const-class v5, Lcom/oplus/internal/reflect/RefStaticInt;

    aput-object v5, v0, v1

    const/16 v1, 0xd

    const-class v5, Lcom/oplus/internal/reflect/RefStaticByte;

    aput-object v5, v0, v1

    const/16 v1, 0xe

    const-class v5, Lcom/oplus/internal/reflect/RefStaticChar;

    aput-object v5, v0, v1

    const/16 v1, 0xf

    const-class v5, Lcom/oplus/internal/reflect/RefStaticDouble;

    aput-object v5, v0, v1

    const/16 v1, 0x10

    const-class v5, Lcom/oplus/internal/reflect/RefStaticFloat;

    aput-object v5, v0, v1

    const/16 v1, 0x11

    const-class v5, Lcom/oplus/internal/reflect/RefStaticLong;

    aput-object v5, v0, v1

    const/16 v1, 0x12

    const-class v5, Lcom/oplus/internal/reflect/RefStaticObject;

    aput-object v5, v0, v1

    const/16 v1, 0x13

    const-class v5, Lcom/oplus/internal/reflect/RefStaticShort;

    aput-object v5, v0, v1

    const/16 v1, 0x14

    const-class v5, Lcom/oplus/internal/reflect/RefStaticBoolean;

    aput-object v5, v0, v1

    .line 42
    .local v0, "REF_CLASSES":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_0

    aget-object v6, v0, v5

    .line 43
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Lcom/oplus/internal/reflect/RefClass;->REF_TYPES:Ljava/util/HashMap;

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Class;

    aput-object v9, v8, v2

    const-class v9, Ljava/lang/reflect/Field;

    aput-object v9, v8, v3

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    nop

    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "REF_CLASSES":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 61
    .local p0, "mappingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load mappingClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/utils/Alog;->d(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 68
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    .line 69
    .local v6, "mappingField":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 70
    goto :goto_1

    .line 74
    :cond_1
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    sget-object v8, Lcom/oplus/internal/reflect/RefClass;->REF_TYPES:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Constructor;

    .line 76
    .local v8, "refConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v8, :cond_2

    .line 78
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v4

    aput-object v6, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v8    # "refConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    goto :goto_1

    .line 80
    :catch_0
    move-exception v7

    .line 81
    .local v7, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed load, mappingClass="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 81
    invoke-static {v8, v7}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .end local v6    # "mappingField":Ljava/lang/reflect/Field;
    .end local v7    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86
    :cond_3
    return-object p1

    .line 62
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static blacklist load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "targetClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 51
    .local p0, "mappingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/oplus/utils/TypeUtils;->checkMappingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 52
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {p0, p1, v0}, Lcom/oplus/internal/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist load(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
    .param p1, "targetClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 56
    .local p0, "mappingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lcom/oplus/utils/TypeUtils;->classForName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    .local v0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v0}, Lcom/oplus/internal/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method
